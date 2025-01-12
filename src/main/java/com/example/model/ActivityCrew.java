package com.example.model;

public class ActivityCrew {
    private int crewId;
    private String role;

    // Default Constructor
    public ActivityCrew() {}

    // Parameterized Constructor
    public ActivityCrew(int crewId, String role) {
        this.crewId = crewId;
        this.role = role;
    }

    // Getters and Setters
    public int getCrewId() {
        return crewId;
    }

    public void setCrewId(int crewId) {
        this.crewId = crewId;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "ActivityCrew{" +
                "crewId=" + crewId +
                ", role='" + role + '\'' +
                '}';
    }
}
