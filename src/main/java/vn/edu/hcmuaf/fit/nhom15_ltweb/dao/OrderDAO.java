package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;

import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect; // Chú ý: package ultils hay db tùy project bạn
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Booking;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Payments;

import java.sql.*;

public class OrderDAO {

    // 1. Lưu Booking và trả về ID vừa tạo
    public int insertBooking(Booking booking) {
        String sql = "INSERT INTO Bookings (userID, tourID, bookingDate, totalPrice, status, adultCount, childCount, startDate, note) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            Connection conn = DBConnect.getConnection(); // Kiểm tra lại tên hàm getConnection()
            PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

            ps.setInt(1, booking.getUserID());
            ps.setInt(2, booking.getTourID());
            ps.setDate(3, booking.getBookingDate());
            ps.setDouble(4, booking.getTotalPrice());
            ps.setString(5, booking.getStatus());
            ps.setInt(6, booking.getAdultCount());
            ps.setInt(7, booking.getChildCount());
            ps.setDate(8, booking.getStartDate());
            ps.setString(9, booking.getNote());

            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1); // Trả về bookingID vừa sinh ra
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; // Lỗi
    }

    // 2. Lưu Payment
    public boolean insertPayment(Payments payment) {
        // Tên cột khớp với ảnh SQL: payment_method, payment_date
        String sql = "INSERT INTO Payments (bookingID, price, payment_method, payment_date, status) VALUES (?, ?, ?, ?, ?)";
        try {
            Connection conn = DBConnect.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, payment.getBookingID());
            ps.setDouble(2, payment.getPrice());
            ps.setString(3, payment.getPaymentMethod());
            ps.setDate(4, payment.getPaymentDate());
            ps.setString(5, payment.getStatus());

            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}