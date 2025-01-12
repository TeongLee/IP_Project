package com.example.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.example.model.Content;

public class ContentDAO {
    private JdbcTemplate jdbcTemplate;

    public ContentDAO() {
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

    public void save(Content content) {
        String sql = """
            INSERT INTO content_library (title, description, video_link, uploaded_by, recording_date)
            VALUES (?, ?, ?, ?, ?)
        """;
        jdbcTemplate.update(sql, content.getTitle(), content.getDescription(), content.getVideoLink(),
                content.getUploadedBy(), content.getRecordingDate());
    }

    public List<Content> getAllContent() {
        String sql = "SELECT * FROM content_library ORDER BY id";
        try {
            List<Content> contentList = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Content.class));
            System.out.println("DAO Retrieved Content: " + contentList); // Debug log
            return contentList;
        } catch (Exception e) {
            System.err.println("Error in DAO while retrieving content: " + e.getMessage());
            e.printStackTrace();
            throw e;
        }
    }
    

    
    //deleteContentById
    public void deleteContentById(int id) {
        String sql = "DELETE FROM content_library WHERE id = ?";
        jdbcTemplate.update(sql, id);
    }

}
