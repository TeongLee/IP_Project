package com.example.model;

import java.time.LocalDate;

public class EquipmentRequest {
    private int id; // Add this field for mapping the primary key
    private String equipmentName;
    private int quantity;
    private LocalDate requestStartDate;
    private LocalDate requestEndDate;
    private String urgencyLevel;
    private String resourceDescription;
    private String status;

    // Default Constructor
    public EquipmentRequest() {
    }

    // Parameterized Constructor
    public EquipmentRequest(int id, String equipmentName, int quantity, LocalDate requestStartDate,
                            LocalDate requestEndDate, String urgencyLevel, String resourceDescription, String status) {
        this.id = id;
        this.equipmentName = equipmentName;
        this.quantity = quantity;
        this.requestStartDate = requestStartDate;
        this.requestEndDate = requestEndDate;
        this.urgencyLevel = urgencyLevel;
        this.resourceDescription = resourceDescription;
        this.status = status;
    }

    // Utility Method for Sorting by Urgency
    public int getUrgencyLevelOrder() {
        switch (this.urgencyLevel.toLowerCase()) {
            case "low":
                return 1;
            case "medium":
                return 2;
            case "high":
                return 3;
            default:
                return 0; // Undefined urgency
        }
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEquipmentName() {
        return equipmentName;
    }

    public void setEquipmentName(String equipmentName) {
        this.equipmentName = equipmentName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public LocalDate getRequestStartDate() {
        return requestStartDate;
    }

    public void setRequestStartDate(LocalDate requestStartDate) {
        this.requestStartDate = requestStartDate;
    }

    public LocalDate getRequestEndDate() {
        return requestEndDate;
    }

    public void setRequestEndDate(LocalDate requestEndDate) {
        this.requestEndDate = requestEndDate;
    }

    public String getUrgencyLevel() {
        return urgencyLevel;
    }

    public void setUrgencyLevel(String urgencyLevel) {
        this.urgencyLevel = urgencyLevel;
    }

    public String getResourceDescription() {
        return resourceDescription;
    }

    public void setResourceDescription(String resourceDescription) {
        this.resourceDescription = resourceDescription;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "EquipmentRequest{" +
                "id=" + id +
                ", equipmentName='" + equipmentName + '\'' +
                ", quantity=" + quantity +
                ", requestStartDate=" + requestStartDate +
                ", requestEndDate=" + requestEndDate +
                ", urgencyLevel='" + urgencyLevel + '\'' +
                ", resourceDescription='" + resourceDescription + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
