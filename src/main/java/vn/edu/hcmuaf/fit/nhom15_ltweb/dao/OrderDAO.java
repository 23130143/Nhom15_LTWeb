package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;

import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Booking;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Payments;

import java.sql.*;

public class OrderDAO {

    // 1. Lưu Booking (Dựa theo ảnh bảng bookings bạn gửi)
    public int insertBooking(Booking booking) {
        // Tên cột: userID, tourID, bookingDate, totalPrice, status, adultCount, childCount, startDate, note
        String sql = "INSERT INTO bookings (userID, tourID, bookingDate, totalPrice, status, adultCount, childCount, startDate, note) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try {
            Connection conn = DBConnect.getConnection();
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

            int affectedRows = ps.executeUpdate();

            // Nếu không thêm được dòng nào -> Lỗi
            if (affectedRows == 0) {
                System.err.println("❌ OrderDAO: Không thể insert Booking.");
                return -1;
            }

            // Lấy ID tự tăng (bookingID)
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            System.err.println("❌ LỖI SQL (insertBooking): " + e.getMessage());
            e.printStackTrace();
        }
        return -1;
    }

    // 2. Lưu Payment (Dựa theo ảnh bảng payments bạn gửi)
    public boolean insertPayment(Payments payment) {
        // LƯU Ý KỸ: Bảng này bạn đặt tên lộn xộn.
        // bookingID (viết liền), nhưng payment_method và payment_date (có gạch dưới)
        String sql = "INSERT INTO payments (bookingID, price, payment_method, payment_date, status) VALUES (?, ?, ?, ?, ?)";

        try {
            Connection conn = DBConnect.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, payment.getBookingID());
            ps.setDouble(2, payment.getPrice());
            ps.setString(3, payment.getPaymentMethod());
            ps.setDate(4, payment.getPaymentDate());
            ps.setString(5, payment.getStatus());

            int result = ps.executeUpdate();
            return result > 0;
        } catch (Exception e) {
            System.err.println("❌ LỖI SQL (insertPayment): " + e.getMessage());
            e.printStackTrace();
        }
        return false;
    }
    public java.util.List<Booking> getBookingByUser(int userId) {
        java.util.List<Booking> list = new java.util.ArrayList<>();
        // Query lấy dữ liệu giảm dần theo ngày đặt (mới nhất lên đầu)
        String sql = "SELECT * FROM bookings WHERE userID = ? ORDER BY bookingDate DESC";

        try {
            Connection conn = DBConnect.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Booking b = new Booking();
                // Map dữ liệu từ DB vào Object Booking (Sửa tên cột cho khớp DB của bạn)
                b.setBookingID(rs.getInt("bookingID"));
                b.setUserID(rs.getInt("userID"));
                b.setTourID(rs.getInt("tourID"));
                b.setBookingDate(rs.getDate("bookingDate"));
                b.setTotalPrice(rs.getDouble("totalPrice"));
                b.setStatus(rs.getString("status"));
                b.setAdultCount(rs.getInt("adultCount"));
                b.setChildCount(rs.getInt("childCount"));
                b.setStartDate(rs.getDate("startDate"));
                // b.setNote(rs.getString("note")); // Bỏ comment nếu DB có cột note

                list.add(b);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}