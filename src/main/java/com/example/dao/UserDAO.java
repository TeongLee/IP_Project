package com.example.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.example.model.User;

public class UserDAO {
    private JdbcTemplate jdbcTemplate;

    public UserDAO() {
        this.jdbcTemplate = new JdbcTemplate(getDataSource());
    }

    // DataSource configuration
    private DataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setUrl("jdbc:mysql://localhost:3306/ip_project");
        dataSource.setUsername("root");
        dataSource.setPassword("password");
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        return dataSource;
    }

    // Add a new user
    public int addUser(User user) {
        String sql = "INSERT INTO user (email, password, role, name) VALUES (?, ?, ?, ?)";
        System.out.println("Executing SQL: " + sql);
        System.out.println("With parameters: " + user.getEmail() + ", " + user.getPassword() + ", " + user.getRole() + ", " + user.getName());
        return jdbcTemplate.update(sql, user.getEmail(), user.getPassword(), user.getRole(), user.getName());
    }

    public int updatePassword(User user) {
        String sql = "UPDATE user SET password = ? WHERE email = ?";
        return jdbcTemplate.update(sql, user.getPassword(), user.getEmail());
    }
    
    

    // Find user by email
    public User findByEmail(String email) {
        String sql = "SELECT * FROM user WHERE email = ?";
        return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), email);
    }

    // Get all users
    public List<User> getAllUsers() {
        String sql = "SELECT * FROM user";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class));
    }

    // Test database connection
    public boolean testConnection() {
        try {
            jdbcTemplate.execute("SELECT 1");
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
