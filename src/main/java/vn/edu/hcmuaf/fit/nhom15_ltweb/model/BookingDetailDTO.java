package vn.edu.hcmuaf.fit.nhom15_ltweb.model;

import java.sql.Date;

public class BookingDetailDTO {
    private int bookingID;
    private String customerName;
    private String email;
    private String tourName;
    private Date departDate;
    private double totalPrice;

    public BookingDetailDTO() {
    }

    public BookingDetailDTO(int bookingID, String customerName, String email, String tourName, Date departDate) {
        this.bookingID = bookingID;
        this.customerName = customerName;
        this.email = email;
        this.tourName = tourName;
        this.departDate = departDate;
    }
    // getter & setter

    public int getBookingID() {
        return bookingID;
    }

    public void setBookingID(int bookingID) {
        this.bookingID = bookingID;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTourName() {
        return tourName;
    }

    public void setTourName(String tourName) {
        this.tourName = tourName;
    }

    public Date getDepartDate() {
        return departDate;
    }

    public void setDepartDate(Date departDate) {
        this.departDate = departDate;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
}


