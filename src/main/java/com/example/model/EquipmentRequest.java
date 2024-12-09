package com.example.model;

import java.time.LocalDate;

public class EquipmentRequest {
    private String equipmentName;
    private int quantity;
    private LocalDate requestStartDate;
    private LocalDate requestEndDate;
    private String urgencyLevel;
    private String resourceDescription;

    // Default Constructor
    public EquipmentRequest() {
    }

    // Parameterized Constructor
    public EquipmentRequest(String equipmentName, int quantity, 
                            LocalDate requestStartDate, LocalDate requestEndDate, 
                            String urgencyLevel, String resourceDescription) {
        this.equipmentName = equipmentName;
        this.quantity = quantity;
        this.requestStartDate = requestStartDate;
        this.requestEndDate = requestEndDate;
        this.urgencyLevel = urgencyLevel;
        this.resourceDescription = resourceDescription;
    }

    // Getters
    public String getEquipmentName() {
        return equipmentName;
    }

    public int getQuantity() {
        return quantity;
    }

    public LocalDate getRequestStartDate() {
        return requestStartDate;
    }

    public LocalDate getRequestEndDate() {
        return requestEndDate;
    }

    public String getUrgencyLevel() {
        return urgencyLevel;
    }

    public String getResourceDescription() {
        return resourceDescription;
    }

    // Setters
    public void setEquipmentName(String equipmentName) {
        this.equipmentName = equipmentName;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public void setRequestStartDate(LocalDate requestStartDate) {
        this.requestStartDate = requestStartDate;
    }

    public void setRequestEndDate(LocalDate requestEndDate) {
        this.requestEndDate = requestEndDate;
    }

    public void setUrgencyLevel(String urgencyLevel) {
        this.urgencyLevel = urgencyLevel;
    }

    public void setResourceDescription(String resourceDescription) {
        this.resourceDescription = resourceDescription;
    }
}