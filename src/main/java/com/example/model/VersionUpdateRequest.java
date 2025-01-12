package com.example.model;

import java.time.LocalDate;

public class VersionUpdateRequest {
    private int id;
    private String schoolName;
    private String versionName;
    private String coordinatorName;
    private LocalDate requestDate;
    private String versionDescription;
    private String status;

    // Default Constructor
    public VersionUpdateRequest() {}

    // Parameterized Constructor
    public VersionUpdateRequest(int id, String schoolName, String versionName, String coordinatorName, LocalDate requestDate, String versionDescription, String status) {
        this.id = id;
        this.schoolName = schoolName;
        this.versionName = versionName;
        this.coordinatorName = coordinatorName;
        this.requestDate = requestDate;
        this.versionDescription = versionDescription;
        this.status = status;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public String getVersionName() {
        return versionName;
    }

    public void setVersionName(String versionName) {
        this.versionName = versionName;
    }

    public String getCoordinatorName() {
        return coordinatorName;
    }

    public void setCoordinatorName(String coordinatorName) {
        this.coordinatorName = coordinatorName;
    }

    public LocalDate getRequestDate() {
        return requestDate;
    }

    public void setRequestDate(LocalDate requestDate) {
        this.requestDate = requestDate;
    }

    public String getVersionDescription() {
        return versionDescription;
    }

    public void setVersionDescription(String versionDescription) {
        this.versionDescription = versionDescription;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
