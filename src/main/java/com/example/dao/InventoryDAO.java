package com.example.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.example.model.Inventory;

public class InventoryDAO {
    private final JdbcTemplate jdbcTemplate;

    public InventoryDAO() {
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

    // Fetch all inventory resources
    public List<Inventory> getAllResources() {
        String sql = "SELECT * FROM inventory";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Inventory.class));
    }

    // Check if a resource is available in sufficient quantity
    public boolean isResourceAvailable(int resourceId, int requestedQuantity) {
        String sql = "SELECT available_quantity FROM inventory WHERE id = ?";
        Integer availableQuantity = jdbcTemplate.queryForObject(sql, Integer.class, resourceId);
        return availableQuantity != null && availableQuantity >= requestedQuantity;
    }

    // Allocate a resource by reducing its available quantity
    public void allocateResource(int resourceId, int quantity) {
        String sql = "UPDATE inventory SET available_quantity = available_quantity - ? WHERE id = ?";
        jdbcTemplate.update(sql, quantity, resourceId);
    }

    // Deallocate a resource (e.g., return resources to inventory)
    public void deallocateResource(int resourceId, int quantity) {
        String sql = """
            UPDATE inventory 
            SET available_quantity = LEAST(available_quantity + ?, total_quantity) 
            WHERE id = ?
        """;
        jdbcTemplate.update(sql, quantity, resourceId);
    }
}
