package vn.edu.hcmuaf.fit.nhom15_ltweb.model;

import java.time.LocalDateTime;

public class BookingFlight {
    private int bookingID;
    private String airline;
    private String flightCode;
    private LocalDateTime departDate;
    private LocalDateTime arrivalDate;
    private String numberSeat;
    private String qrCode;

    // Constructor rỗng
    public BookingFlight() {
    }

    // Constructor đầy đủ
    public BookingFlight(int bookingID, String airline, String flightCode,
                         LocalDateTime departDate, LocalDateTime arrivalDate,
                         String numberSeat, String qrCode) {
        this.bookingID = bookingID;
        this.airline = airline;
        this.flightCode = flightCode;
        this.departDate = departDate;
        this.arrivalDate = arrivalDate;
        this.numberSeat = numberSeat;
        this.qrCode = qrCode;
    }

    // Getter & Setter
    public int getBookingID() {
        return bookingID;
    }

    public void setBookingID(int bookingID) {
        this.bookingID = bookingID;
    }

    public String getAirline() {
        return airline;
    }

    public void setAirline(String airline) {
        this.airline = airline;
    }

    public String getFlightCode() {
        return flightCode;
    }

    public void setFlightCode(String flightCode) {
        this.flightCode = flightCode;
    }

    public LocalDateTime getDepartDate() {
        return departDate;
    }

    public void setDepartDate(LocalDateTime departDate) {
        this.departDate = departDate;
    }

    public LocalDateTime getArrivalDate() {
        return arrivalDate;
    }

    public void setArrivalDate(LocalDateTime arrivalDate) {
        this.arrivalDate = arrivalDate;
    }

    public String getNumberSeat() {
        return numberSeat;
    }

    public void setNumberSeat(String numberSeat) {
        this.numberSeat = numberSeat;
    }

    public String getQrCode() {
        return qrCode;
    }

    public void setQrCode(String qrCode) {
        this.qrCode = qrCode;
    }
}
