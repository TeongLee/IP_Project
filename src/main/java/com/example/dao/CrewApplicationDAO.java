package com.example.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.example.model.CrewApplication;

public class CrewApplicationDAO {
    private JdbcTemplate jdbcTemplate;

    public CrewApplicationDAO() {
        this.jdbcTemplate = new JdbcTemplate(getDataSource());
    }

    private DataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setUrl("jdbc:mysql://localhost:3306/ip_project"); // Adjust DB name
        dataSource.setUsername("root");
        dataSource.setPassword("password");
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        return dataSource;
    }

    // Save a new crew application
    public void save(CrewApplication application) {
        String sql = "INSERT INTO crew_applications (name, position, description, video_link, video_description, status) " +
                     "VALUES (?, ?, ?, ?, ?, ?)";
        try {
            jdbcTemplate.update(sql,
                application.getName(),
                application.getPosition(),
                application.getDescription(),
                application.getVideoLink(),
                application.getVideoDescription(),
                application.getStatus());
        } catch (Exception e) {
            System.err.println("Error saving CrewApplication: " + e.getMessage());
        }
    }

    public List<CrewApplication> getAllApplications() {
        String sql = "SELECT id, name, position, description, video_link AS videoLink, video_description AS videoDescription, status FROM crew_applications";
        List<CrewApplication> applications = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(CrewApplication.class));
        applications.forEach(app -> System.out.println("Fetched Application: " + app)); // Log fetched data
        return applications;
    }
    

    // Retrieve a crew application by ID
    public CrewApplication getApplicationById(int id) {
        String sql = "SELECT * FROM crew_applications WHERE id = ?";
        return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(CrewApplication.class), id);
    }

    public List<CrewApplication> getPendingApplications() {
        String sql = "SELECT * FROM crew_applications WHERE status = 'Pending'";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(CrewApplication.class));
    }
    
    public int updateApplicationStatus(int id, String status) {
        String sql = "UPDATE crew_applications SET status = ? WHERE id = ?";
        return jdbcTemplate.update(sql, status, id);
    }
    
    public List<CrewApplication> getAcceptedApplications() {
        String sql = "SELECT * FROM crew_applications WHERE status = 'Accepted'";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(CrewApplication.class));
    }
    
}
