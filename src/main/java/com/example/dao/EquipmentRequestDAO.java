package com.example.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.example.exception.InsufficientResourcesException;
import com.example.model.EquipmentRequest;

public class EquipmentRequestDAO {
    private final JdbcTemplate jdbcTemplate;

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
        String checkSql = "SELECT available_quantity FROM inventory WHERE id = ?";
        Integer availableQuantity = jdbcTemplate.queryForObject(checkSql, Integer.class, request.getResourceId());
        if (availableQuantity == null || request.getQuantity() > availableQuantity) {
            throw new InsufficientResourcesException("Requested quantity exceeds available resources.");
        }
        String sql = """
            INSERT INTO equipment_request (resource_id, quantity, request_start_date, request_end_date, urgency_level, resource_description, status)
            VALUES (?, ?, ?, ?, ?, ?, ?)
        """;
        System.out.println("Adding request: " + request);
        return jdbcTemplate.update(sql, request.getResourceId(), request.getQuantity(),
                request.getRequestStartDate(), request.getRequestEndDate(),
                request.getUrgencyLevel(), request.getResourceDescription(), request.getStatus());
    }

    // Retrieve all requests
    public List<EquipmentRequest> getAllRequests() {
        String sql = """
            SELECT er.id, ir.resource_name AS equipmentName, er.quantity, er.request_start_date AS requestStartDate,
                   er.request_end_date AS requestEndDate, er.urgency_level AS urgencyLevel, 
                   er.resource_description AS resourceDescription, er.status, er.resource_id
            FROM equipment_request er
            LEFT JOIN inventory ir ON er.resource_id = ir.id
        """;
        System.out.println("Executing query: " + sql);
        try {
            List<EquipmentRequest> requests = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(EquipmentRequest.class));
            System.out.println("Retrieved requests: " + requests);
            return requests;
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }

    // Retrieve a specific request by ID
    public EquipmentRequest getRequestById(int id) {
        String sql = """
            SELECT er.id, ir.resource_name AS equipmentName, er.quantity, er.request_start_date AS requestStartDate,
                   er.request_end_date AS requestEndDate, er.urgency_level AS urgencyLevel, 
                   er.resource_description AS resourceDescription, er.status, er.resource_id
            FROM equipment_request er
            LEFT JOIN inventory ir ON er.resource_id = ir.id
            WHERE er.id = ?
        """;
        System.out.println("Fetching request by ID: " + id);
        try {
            EquipmentRequest request = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(EquipmentRequest.class), id);
            System.out.println("Retrieved request: " + request);
            return request;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Failed to retrieve equipment request by ID.");
        }
    }

    // Update the status of a request
    public int updateStatus(int id, String status) {
        String sql = "UPDATE equipment_request SET status = ? WHERE id = ?";
        try {
            System.out.println("Updating status of request ID " + id + " to " + status);
            return jdbcTemplate.update(sql, status, id);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Failed to update request status.");
        }
    }
}
