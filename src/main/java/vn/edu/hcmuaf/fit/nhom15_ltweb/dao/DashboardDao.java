package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.ActivityLog;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DashboardDao {
    public DashboardDao() {
    }

    public int countLocations() {
        String sql = "select count(distinct location) from Tours";
        try (
                Connection con = DBConnect.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
        ) {
            if (rs.next()) return rs.getInt(1);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return 0;
    }

    public int countUsers() {
        String sql = "select count(*) from Users";
        try (
                Connection con = DBConnect.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
        ) {
            if (rs.next()) return rs.getInt(1);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return 0;
    }

    public int countBookingToday() {
        String sql = "SELECT COUNT(*) FROM Bookings WHERE bookingDate >= CURDATE() AND bookingDate < CURDATE() + INTERVAL 1 DAY";
        try (
                Connection con = DBConnect.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
        ) {
            if (rs.next()) return rs.getInt(1);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return 0;
    }

    public double revenueThisMonth() {
        String sql = " SELECT IFNULL(SUM(totalPrice), 0) FROM Bookings WHERE bookingDate >= DATE_FORMAT(CURDATE(), '%Y-%m-01') AND bookingDate <  DATE_FORMAT(CURDATE(), '%Y-%m-01') + INTERVAL 1 MONTH AND status = 'SUCCESS' ";
        try (
                Connection con = DBConnect.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
        ) {
            if (rs.next()) return rs.getDouble(1);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return 0;
    }

//    public List<ActivityLog> recentActivities() {
//        List<ActivityLog> list = new ArrayList<>();
//        String sql = " SELECT TOP 10 * FROM ActivityLog ORDER BY createdAt DESC";
//        try (
//                Connection con = DBConnect.getConnection();
//                PreparedStatement ps = con.prepareStatement(sql);
//                ResultSet rs = ps.executeQuery();
//        ) {
//            while (rs.next()) {
//                ActivityLog log = new ActivityLog();
//                log.setCreatedAt(
//                        rs.getTimestamp("createdAt").toLocalDateTime()
//                );
//                log.setUsername(rs.getString("username"));
//                log.setAction(rs.getString("action"));
//                log.setDetail(rs.getString("detail"));
//                list.add(log);
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//        return list;
//    }
}
