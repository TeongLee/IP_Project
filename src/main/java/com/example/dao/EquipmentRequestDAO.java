package com.example.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.example.model.EquipmentRequest;

public class EquipmentRequestDAO {
    private JdbcTemplate jdbcTemplate;

    public EquipmentRequestDAO() {
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

    // Add a new equipment request
    public int addRequest(EquipmentRequest request) {
        String sql = "INSERT INTO equipment_request (equipment_name, quantity, request_start_date, request_end_date, urgency_level, resource_description, status) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql, request.getEquipmentName(), request.getQuantity(), 
                                   request.getRequestStartDate(), request.getRequestEndDate(), 
                                   request.getUrgencyLevel(), request.getResourceDescription(), request.getStatus());
    }

    public List<EquipmentRequest> getAllRequests() {
        String sql = "SELECT * FROM equipment_request";
        try {
            return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(EquipmentRequest.class));
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }
    
    // Retrieve a request by ID
    public EquipmentRequest getRequestById(int id) {
        String sql = "SELECT * FROM equipment_request WHERE id = ?";
        return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(EquipmentRequest.class), id);
    }

    public int updateStatus(int id, String status) {
        String sql = "UPDATE equipment_request SET status = ? WHERE id = ?";
        return jdbcTemplate.update(sql, status, id);
    }
}
