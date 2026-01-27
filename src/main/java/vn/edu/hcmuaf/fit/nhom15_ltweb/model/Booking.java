package vn.edu.hcmuaf.fit.nhom15_ltweb.model;
import java.sql.Date;
public class Booking {
    private int bookingID;
    private int userID;
    private int tourID;
    private Date bookingDate;
    private double totalPrice;
    private String status;
    private int adultCount;
    private int childCount;
    private Date startDate;
    private String note;
    public Booking() {
    }
    public Booking(int bookingID, int userID, int tourID, Date bookingDate, double totalPrice, String status, int adultCount, int childCount, Date startDate, String note) {
        this.bookingID = bookingID;
        this.userID = userID;
        this.tourID = tourID;
        this.bookingDate = bookingDate;
        this.totalPrice = totalPrice;
        this.status = status;
        this.adultCount = adultCount;
        this.childCount = childCount;
        this.startDate = startDate;
        this.note = note;
    }

    public int getBookingID() {
        return bookingID;
    }

    public void setBookingID(int bookingID) {
        this.bookingID = bookingID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getTourID() {
        return tourID;
    }

    public void setTourID(int tourID) {
        this.tourID = tourID;
    }

    public Date getBookingDate() {
        return bookingDate;
    }

    public void setBookingDate(Date bookingDate) {
        this.bookingDate = bookingDate;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getAdultCount() {
        return adultCount;
    }

    public void setAdultCount(int adultCount) {
        this.adultCount = adultCount;
    }

    public int getChildCount() {
        return childCount;
    }

    public void setChildCount(int childCount) {
        this.childCount = childCount;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
