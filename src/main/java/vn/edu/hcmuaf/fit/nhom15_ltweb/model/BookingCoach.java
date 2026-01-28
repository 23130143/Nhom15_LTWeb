package vn.edu.hcmuaf.fit.nhom15_ltweb.model;

public class BookingCoach {
    private int bookingID;
    private String coachType;
    private String seatNumber;
    private String pickupLocation;
    private String dropoffLocation;

    // Constructor rỗng
    public BookingCoach() {
    }

    // Constructor đầy đủ
    public BookingCoach(int bookingID, String coachType, String seatNumber,
                        String pickupLocation, String dropoffLocation) {
        this.bookingID = bookingID;
        this.coachType = coachType;
        this.seatNumber = seatNumber;
        this.pickupLocation = pickupLocation;
        this.dropoffLocation = dropoffLocation;
    }

    // Getter & Setter
    public int getBookingID() {
        return bookingID;
    }

    public void setBookingID(int bookingID) {
        this.bookingID = bookingID;
    }

    public String getCoachType() {
        return coachType;
    }

    public void setCoachType(String coachType) {
        this.coachType = coachType;
    }

    public String getSeatNumber() {
        return seatNumber;
    }

    public void setSeatNumber(String seatNumber) {
        this.seatNumber = seatNumber;
    }

    public String getPickupLocation() {
        return pickupLocation;
    }

    public void setPickupLocation(String pickupLocation) {
        this.pickupLocation = pickupLocation;
    }

    public String getDropoffLocation() {
        return dropoffLocation;
    }

    public void setDropoffLocation(String dropoffLocation) {
        this.dropoffLocation = dropoffLocation;
    }
}
