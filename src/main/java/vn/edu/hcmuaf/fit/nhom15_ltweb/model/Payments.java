package vn.edu.hcmuaf.fit.nhom15_ltweb.model;

import java.sql.Date;

public class Payments {
    private int paymentID;
    private int bookingID;
    private double price;
    private String paymentMethod;
    private Date paymentDate;
    private String status;

    public Payments() {
    }

    // Constructor 1: Đầy đủ 6 tham số (Dùng khi lấy dữ liệu từ DB lên)
    public Payments(int paymentID, int bookingID, double price, String paymentMethod, Date paymentDate, String status) {
        this.paymentID = paymentID;
        this.bookingID = bookingID;
        this.price = price;
        this.paymentMethod = paymentMethod;
        this.paymentDate = paymentDate;
        this.status = status;
    }

    // Constructor 2: 5 tham số - KHÔNG CÓ paymentID (Dùng để INSERT mới trong CheckoutService)
    // --- ĐÂY LÀ CÁI BẠN ĐANG THIẾU ---
    public Payments(int bookingID, double price, String paymentMethod, Date paymentDate, String status) {
        this.bookingID = bookingID;
        this.price = price;
        this.paymentMethod = paymentMethod;
        this.paymentDate = paymentDate;
        this.status = status;
    }

    public int getPaymentID() { return paymentID; }
    public void setPaymentID(int paymentID) { this.paymentID = paymentID; }

    public int getBookingID() { return bookingID; }
    public void setBookingID(int bookingID) { this.bookingID = bookingID; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }

    public String getPaymentMethod() { return paymentMethod; }
    public void setPaymentMethod(String paymentMethod) { this.paymentMethod = paymentMethod; }

    public Date getPaymentDate() { return paymentDate; }
    public void setPaymentDate(Date paymentDate) { this.paymentDate = paymentDate; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}