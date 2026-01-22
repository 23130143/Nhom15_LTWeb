package vn.edu.hcmuaf.fit.nhom15_ltweb.model;

public class DashboardSummary {
    private int totalLocations;
    private int totalUsers;
    private int bookingToday;
    private double revenueMonth;
    // getter setter

    public DashboardSummary(int totalLocations, int totalUsers, int bookingToday, double revenueMonth) {
        this.totalLocations = totalLocations;
        this.totalUsers = totalUsers;
        this.bookingToday = bookingToday;
        this.revenueMonth = revenueMonth;
    }

    public DashboardSummary() {
    }

    public int getTotalLocations() {
        return totalLocations;
    }

    public void setTotalLocations(int totalLocations) {
        this.totalLocations = totalLocations;
    }

    public int getTotalUsers() {
        return totalUsers;
    }

    public void setTotalUsers(int totalUsers) {
        this.totalUsers = totalUsers;
    }

    public int getBookingToday() {
        return bookingToday;
    }

    public void setBookingToday(int bookingToday) {
        this.bookingToday = bookingToday;
    }

    public double getRevenueMonth() {
        return revenueMonth;
    }

    public void setRevenueMonth(double revenueMonth) {
        this.revenueMonth = revenueMonth;
    }
}

