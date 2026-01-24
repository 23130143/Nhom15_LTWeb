package vn.edu.hcmuaf.fit.nhom15_ltweb.model;

import java.io.Serializable;

public class Tour implements Serializable {
    private int tourID;
    private String title;
    private double adultPrice;
    private double childPrice;
    private int categoriesID;
    private int availableCapacity;
    private String departure;
    private String description;
    private String schedule;
    private String location;
    private String duration;
    private int slTour;
    private int soldQuantity;

    public Tour() {
    }

    public Tour(int tourID, String title, double adultPrice, double childPrice, int categoriesID,
                int availableCapacity, String departure, String description, String schedule,
                String location, String duration, int slTour, int soldQuantity) {
        this.tourID = tourID;
        this.title = title;
        this.adultPrice = adultPrice;
        this.childPrice = childPrice;
        this.categoriesID = categoriesID;
        this.availableCapacity = availableCapacity;
        this.departure = departure;
        this.description = description;
        this.schedule = schedule;
        this.location = location;
        this.duration = duration;
        this.slTour = slTour;
        this.soldQuantity = soldQuantity;
    }

    // Getters và Setters
    public int getTourID() {
        return tourID;
    }

    public int getSoldQuantity() {
        return soldQuantity;
    }

    public void setSoldQuantity(int soldQuantity) {
        this.soldQuantity = soldQuantity;
    }

    public void setTourID(int tourID) {
        this.tourID = tourID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getAdultPrice() {
        return adultPrice;
    }

    public void setAdultPrice(double adultPrice) {
        this.adultPrice = adultPrice;
    }

    public double getChildPrice() {
        return childPrice;
    }

    public void setChildPrice(double childPrice) {
        this.childPrice = childPrice;
    }

    public int getCategoriesID() {
        return categoriesID;
    }

    public void setCategoriesID(int categoriesID) {
        this.categoriesID = categoriesID;
    }

    public int getAvailableCapacity() {
        return availableCapacity;
    }

    public void setAvailableCapacity(int availableCapacity) {
        this.availableCapacity = availableCapacity;
    }

    public String getDeparture() {
        return departure;
    }

    public void setDeparture(String departure) {
        this.departure = departure;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSchedule() {
        return schedule;
    }

    public void setSchedule(String schedule) {
        this.schedule = schedule;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public int getSlTour() {
        return slTour;
    }

    public void setSlTour(int slTour) {
        this.slTour = slTour;
    }

}