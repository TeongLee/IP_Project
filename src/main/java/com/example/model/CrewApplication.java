package com.example.model;

public class CrewApplication {
    private int id;
    private String name;
    private String position;
    private String description;
    private String videoLink; // Matches 'video_link' in DB
    private String videoDescription; // Matches 'video_description' in DB
    private String status;

    // Default constructor
    public CrewApplication() {}

    // Constructor with six parameters
    public CrewApplication(String name, String position, String description, String videoLink, String videoDescription, String status) {
        this.name = name;
        this.position = position;
        this.description = description;
        this.videoLink = videoLink;
        this.videoDescription = videoDescription;
        this.status = status;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
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

    public String getVideoDescription() {
        return videoDescription;
    }

    public void setVideoDescription(String videoDescription) {
        this.videoDescription = videoDescription;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "CrewApplication{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", position='" + position + '\'' +
                ", description='" + description + '\'' +
                ", videoLink='" + videoLink + '\'' +
                ", videoDescription='" + videoDescription + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
