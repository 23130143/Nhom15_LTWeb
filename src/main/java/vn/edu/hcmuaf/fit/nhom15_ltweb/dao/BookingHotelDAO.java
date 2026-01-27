package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.BookingHotel;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class BookingHotelDAO {
    public void insertHotel(BookingHotel h) {
        String sql = "INSERT INTO BookingHotel (bookingID, hotelName, checkIn, checkOut, roomType) VALUES (?, ?, ?, ?, ?)";

        try (Connection con = DBConnect.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, h.getBookingID());
            ps.setString(2, h.getHotelName());
            ps.setDate(3, h.getCheckIn());
            ps.setDate(4, h.getCheckOut());
            ps.setString(5, h.getRoomType());

            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
