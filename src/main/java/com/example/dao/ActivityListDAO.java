package com.example.dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.example.model.Activity;

public class ActivityListDAO {
    private final JdbcTemplate jdbcTemplate;

    // Constructor to initialize the JdbcTemplate with a data source
    public ActivityListDAO() {
        this.jdbcTemplate = new JdbcTemplate(getDataSource());
    }

    // Data source configuration
    private DataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setUrl("jdbc:mysql://localhost:3306/ip_project");
        dataSource.setUsername("root");
        dataSource.setPassword("password");
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        return dataSource;
    }

    // Add a new activity to the activity_list table
    public int addActivity(Activity activity) {
        String sql = """
            INSERT INTO activity_list (activity_name, activity_description, start_date, end_date, coordinator_name, crew_count)
            VALUES (?, ?, ?, ?, ?, ?)
        """;

        KeyHolder keyHolder = new GeneratedKeyHolder(); // To capture the generated ID
        try {
            jdbcTemplate.update(connection -> {
                PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                ps.setString(1, activity.getActivityName());
                ps.setString(2, activity.getActivityDescription());
                ps.setDate(3, Date.valueOf(activity.getStartDate()));
                ps.setDate(4, Date.valueOf(activity.getEndDate()));
                ps.setString(5, activity.getCoordinatorName());
                ps.setInt(6, activity.getCrewCount());
                return ps;
            }, keyHolder);
        } catch (Exception e) {
            System.err.println("Error adding activity: " + e.getMessage());
            throw e; // Re-throw the exception for higher-level handling
        }

        return keyHolder.getKey().intValue(); // Return the generated activity ID
    }

    // Retrieve all activities with their crew count
    public List<Map<String, Object>> getAllActivitiesWithCrewCount() {
        String sql = """
            SELECT 
                a.id AS activityId, 
                a.activity_name AS activityName, 
                a.start_date AS startDate, 
                a.end_date AS endDate, 
                a.crew_count AS crewCount
            FROM activity_list a
            ORDER BY a.start_date DESC
        """;

        try {
            return jdbcTemplate.queryForList(sql);
        } catch (Exception e) {
            System.err.println("Error fetching activities: " + e.getMessage());
            throw e; // Re-throw the exception for higher-level handling
        }
    }

    // Delete an activity and its associated crew members
    public void deleteActivity(int activityId) {
        String deleteCrewSql = "DELETE FROM activity_crew WHERE activity_id = ?";
        String deleteActivitySql = "DELETE FROM activity_list WHERE id = ?";

        try {
            // First, delete the crew members associated with the activity
            jdbcTemplate.update(deleteCrewSql, activityId);
            // Then, delete the activity itself
            jdbcTemplate.update(deleteActivitySql, activityId);
        } catch (Exception e) {
            System.err.println("Error deleting activity: " + e.getMessage());
            throw e; // Re-throw the exception for higher-level handling
        }
    }
}
