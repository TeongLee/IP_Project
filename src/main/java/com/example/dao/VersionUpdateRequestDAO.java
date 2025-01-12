package com.example.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.example.model.VersionUpdateRequest;

public class VersionUpdateRequestDAO {
    private final JdbcTemplate jdbcTemplate;

    public VersionUpdateRequestDAO() {
        this.jdbcTemplate = new JdbcTemplate(getDataSource());
    }

    private DataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setUrl("jdbc:mysql://localhost:3306/ip_project");
        dataSource.setUsername("root");
        dataSource.setPassword("password");
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        return dataSource;
    }

    // Add a new version update request
    public int addRequest(VersionUpdateRequest request) {
        String sql = """
            INSERT INTO version_update_request (school_name, version_name, coordinator_name, request_date, version_description, status)
            VALUES (?, ?, ?, ?, ?, ?)
        """;
        return jdbcTemplate.update(sql, request.getSchoolName(), request.getVersionName(), request.getCoordinatorName(),
                request.getRequestDate(), request.getVersionDescription(), request.getStatus());
    }

    // Retrieve all requests
    public List<VersionUpdateRequest> getAllRequests() {
        String sql = "SELECT * FROM version_update_request";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(VersionUpdateRequest.class));
    }

    // Update the status of a request
    public int updateStatus(int id, String status) {
        String sql = "UPDATE version_update_request SET status = ? WHERE id = ?";
        return jdbcTemplate.update(sql, status, id);
    }

    public int addVersionRequest(VersionUpdateRequest request) {
        String sql = """
            INSERT INTO version_update_request 
            (school_name, version_name, coordinator_name, request_date, version_description, status) 
            VALUES (?, ?, ?, ?, ?, ?)
        """;
        return jdbcTemplate.update(sql, 
            request.getSchoolName(),
            request.getVersionName(),
            request.getCoordinatorName(),
            request.getRequestDate(),
            request.getVersionDescription(),
            request.getStatus()
        );
    }
    
}
