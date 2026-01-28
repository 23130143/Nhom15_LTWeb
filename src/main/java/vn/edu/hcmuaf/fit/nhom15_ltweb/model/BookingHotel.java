package vn.edu.hcmuaf.fit.nhom15_ltweb.model;

import java.sql.Date;

public class BookingHotel {
    private int bookingID;
    private String hotelName;
    private Date checkIn;
    private Date checkOut;
    private String roomType;

    // Constructor rỗng
    public BookingHotel() {
    }

    // Constructor đầy đủ
    public BookingHotel(int bookingID, String hotelName,
                        Date checkIn, Date checkOut, String roomType) {
        this.bookingID = bookingID;
        this.hotelName = hotelName;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.roomType = roomType;
    }

    // Getter & Setter
    public int getBookingID() {
        return bookingID;
    }

    public void setBookingID(int bookingID) {
        this.bookingID = bookingID;
    }

    public String getHotelName() {
        return hotelName;
    }

    public void setHotelName(String hotelName) {
        this.hotelName = hotelName;
    }

    public Date getCheckIn() {
        return checkIn;
    }

    public void setCheckIn(Date checkIn) {
        this.checkIn = checkIn;
    }

    public Date getCheckOut() {
        return checkOut;
    }

    public void setCheckOut(Date checkOut) {
        this.checkOut = checkOut;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

}
