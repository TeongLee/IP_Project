package com.example.model;

import java.time.LocalDate;

public class Activity {
    private int id;
    private String activityName;
    private String activityDescription;
    private LocalDate startDate;
    private LocalDate endDate;
    private String coordinatorName;
    private int crewCount; // Added to track the number of crew members

    // Default Constructor
    public Activity() {}

    // Parameterized Constructor
    public Activity(int id, String activityName, String activityDescription, LocalDate startDate,
                    LocalDate endDate, String coordinatorName, int crewCount) {
        this.id = id;
        this.activityName = activityName;
        this.activityDescription = activityDescription;
        this.startDate = startDate;
        this.endDate = endDate;
        this.coordinatorName = coordinatorName;
        this.crewCount = crewCount; // Initialize crewCount
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getActivityName() {
        return activityName;
    }

    public void setActivityName(String activityName) {
        this.activityName = activityName;
    }

    public String getActivityDescription() {
        return activityDescription;
    }

    public void setActivityDescription(String activityDescription) {
        this.activityDescription = activityDescription;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public LocalDate getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDate endDate) {
        this.endDate = endDate;
    }

    public String getCoordinatorName() {
        return coordinatorName;
    }

    public void setCoordinatorName(String coordinatorName) {
        this.coordinatorName = coordinatorName;
    }

    public int getCrewCount() {
        return crewCount;
    }

    public void setCrewCount(int crewCount) {
        this.crewCount = crewCount;
    }

    @Override
    public String toString() {
        return "Activity{" +
                "id=" + id +
                ", activityName='" + activityName + '\'' +
                ", activityDescription='" + activityDescription + '\'' +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", coordinatorName='" + coordinatorName + '\'' +
                ", crewCount=" + crewCount +
                '}';
    }
}
