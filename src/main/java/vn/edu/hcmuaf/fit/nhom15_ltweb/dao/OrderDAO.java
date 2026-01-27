package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Booking;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.BookingDetailDTO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Payments;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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

    public List<Booking> getAllBookingForAdmin() {
        List<Booking> list = new ArrayList<>();

        String sql = "SELECT b.*, u.fullName AS userName, t.title AS tourName FROM Bookings b JOIN User u ON b.userID = u.userID JOIN Tours t ON b.tourID = t.tourID ORDER BY b.bookingID DESC ";

        try (Connection con = DBConnect.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Booking b = new Booking();
                b.setBookingID(rs.getInt("bookingID"));
                b.setUserID(rs.getInt("userID"));
                b.setTourID(rs.getInt("tourID"));
                b.setBookingDate(rs.getDate("bookingDate"));
                b.setStartDate(rs.getDate("startDate"));
                b.setAdultCount(rs.getInt("adultCount"));
                b.setChildCount(rs.getInt("childCount"));
                b.setTotalPrice(rs.getDouble("totalPrice"));
                b.setStatus(rs.getString("status"));

                // từ JOIN
                b.setUserName(rs.getString("userName"));
                b.setTourName(rs.getString("tourName"));

                list.add(b);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Booking> searchBooking(String keyword) {
        List<Booking> list = new ArrayList<>();
        String sql = "SELECT b.*, u.fullName AS userName, t.title AS tourName FROM Bookings b JOIN User u ON b.userID = u.userID JOIN Tours t ON b.tourID = t.tourID WHERE u.fullName LIKE ? OR t.title LIKE ? OR b.bookingID LIKE ? ORDER BY b.bookingID DESC ";
        try (Connection con = DBConnect.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            String key = "%" + keyword + "%";
            ps.setString(1, key);
            ps.setString(2, key);
            ps.setString(3, key);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Booking b = new Booking();
                b.setBookingID(rs.getInt("bookingID"));
                b.setUserID(rs.getInt("userID"));
                b.setTourID(rs.getInt("tourID"));
                b.setBookingDate(rs.getDate("bookingDate"));
                b.setStartDate(rs.getDate("startDate"));
                b.setAdultCount(rs.getInt("adultCount"));
                b.setChildCount(rs.getInt("childCount"));
                b.setTotalPrice(rs.getDouble("totalPrice"));
                b.setStatus(rs.getString("status"));

                // từ JOIN
                b.setUserName(rs.getString("userName"));
                b.setTourName(rs.getString("tourName"));

                list.add(b);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public BookingDetailDTO getBookingDetail(int id) {
        String sql = "SELECT b.bookingID, u.fullName, u.email, t.title AS tourName, b.startDate, b.totalPrice FROM Bookings b JOIN User u ON b.userID = u.userID JOIN Tours t ON b.tourID = t.tourID WHERE b.bookingID = ?";

        try (Connection con = DBConnect.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                BookingDetailDTO dto = new BookingDetailDTO();
                dto.setBookingID(rs.getInt("bookingID"));
                dto.setCustomerName(rs.getString("fullName"));
                dto.setEmail(rs.getString("email"));
                dto.setTourName(rs.getString("tourName"));
                dto.setDepartDate(rs.getDate("startDate"));
                dto.setTotalPrice(rs.getDouble("totalPrice"));
                return dto;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}