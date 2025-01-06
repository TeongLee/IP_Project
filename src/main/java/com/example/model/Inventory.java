package com.example.model;

public class Inventory {
    private int id; // Unique ID for the inventory item
    private String resourceName; // Name of the resource
    private String resourceCode; // Unique code for the resource
    private int totalQuantity; // Total quantity of the resource
    private int availableQuantity; // Quantity currently available for allocation

    // Default constructor
    public Inventory() {
    }

    // Parameterized constructor
    public Inventory(int id, String resourceName, String resourceCode, int totalQuantity, int availableQuantity) {
        this.id = id;
        this.resourceName = resourceName;
        this.resourceCode = resourceCode;
        this.totalQuantity = totalQuantity;
        this.availableQuantity = availableQuantity;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getResourceName() {
        return resourceName;
    }

    public void setResourceName(String resourceName) {
        this.resourceName = resourceName;
    }

    public String getResourceCode() {
        return resourceCode;
    }

    public void setResourceCode(String resourceCode) {
        this.resourceCode = resourceCode;
    }

    public int getTotalQuantity() {
        return totalQuantity;
    }

    public void setTotalQuantity(int totalQuantity) {
        this.totalQuantity = totalQuantity;
    }

    public int getAvailableQuantity() {
        return availableQuantity;
    }

    public void setAvailableQuantity(int availableQuantity) {
        this.availableQuantity = availableQuantity;
    }

    // toString for debugging purposes
    @Override
    public String toString() {
        return "Inventory{" +
                "id=" + id +
                ", resourceName='" + resourceName + '\'' +
                ", resourceCode='" + resourceCode + '\'' +
                ", totalQuantity=" + totalQuantity +
                ", availableQuantity=" + availableQuantity +
                '}';
    }
}
