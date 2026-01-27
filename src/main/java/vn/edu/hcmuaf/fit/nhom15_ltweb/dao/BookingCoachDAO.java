package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.BookingCoach;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class BookingCoachDAO {
    public void insertCoach(BookingCoach c) {
        String sql = "INSERT INTO BookingCoach (bookingID, coachType, seatNumber, pickupLocation, dropoffLocation) VALUES (?, ?, ?, ?, ?)";

        try (Connection con = DBConnect.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, c.getBookingID());
            ps.setString(2, c.getCoachType());
            ps.setString(3, c.getSeatNumber());
            ps.setString(4, c.getPickupLocation());
            ps.setString(5, c.getDropoffLocation());

            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
