package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.BookingFlight;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Timestamp;

public class BookingFlightDAO {
    public void insertFlight(BookingFlight f) {
        String sql = "INSERT INTO BookingFlight (bookingID, airline, flightCode, departDate, arrivalDate, NumberSeat, QRCode) VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (Connection con = DBConnect.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, f.getBookingID());
            ps.setString(2, f.getAirline());
            ps.setString(3, f.getFlightCode());
            ps.setTimestamp(4, Timestamp.valueOf(f.getDepartDate()));
            ps.setTimestamp(5, Timestamp.valueOf(f.getArrivalDate()));
            ps.setString(6, f.getNumberSeat());
            ps.setString(7, f.getQrCode());

            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
