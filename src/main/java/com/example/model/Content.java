package com.example.model;

import java.time.LocalDate;

public class Content {
    private int id;
    private String title;
    private String description;
    private String videoLink;
    private String uploadedBy;
    private LocalDate recordingDate;

    // Constructor
    public Content(String title, String description, String videoLink, String uploadedBy, LocalDate recordingDate) {
        this.title = title;
        this.description = description;
        this.videoLink = videoLink;
        this.uploadedBy = uploadedBy;
        this.recordingDate = recordingDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getVideoLink() {
        return videoLink;
    }

    public void setVideoLink(String videoLink) {
        this.videoLink = videoLink;
    }

    public String getUploadedBy() {
        return uploadedBy;
    }

    public void setUploadedBy(String uploadedBy) {
        this.uploadedBy = uploadedBy;
    }

    public LocalDate getRecordingDate() {
        return recordingDate;
    }

    public void setRecordingDate(LocalDate recordingDate) {
        this.recordingDate = recordingDate;
    }
}
