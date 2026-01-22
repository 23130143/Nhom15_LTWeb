package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TourDAO {

    // Lấy tất cả Tour
    public List<Tour> getAllTours() {
        List<Tour> list = new ArrayList<>();
        String sql = "SELECT * FROM tours";

        try (Connection conn = DBConnect.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                list.add(mapTour(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // Tìm kiếm theo tên tour
    public List<Tour> searchByName(String name) {
        List<Tour> list = new ArrayList<>();
        String sql = "SELECT * FROM tours WHERE title LIKE ?";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, "%" + name + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(mapTour(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // Tìm kiếm theo danh mục (categoriesID)
    public List<Tour> searchByCategory(int categoriesID) {
        List<Tour> list = new ArrayList<>();
        String sql = "SELECT * FROM tours WHERE categoriesID = ? ";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, categoriesID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(mapTour(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // Tìm kiếm kết hợp:  tên + danh mục
    public List<Tour> searchTours(String name, Integer categoriesID) {
        List<Tour> list = new ArrayList<>();
        StringBuilder sql = new StringBuilder("SELECT * FROM Tours WHERE 1=1");
        List<Object> params = new ArrayList<>();

        // Thêm điều kiện tìm theo tên
        if (name != null && !name.trim().isEmpty()) {
            sql.append(" AND title LIKE ?");
            params.add("%" + name. trim() + "%");
        }

        // Thêm điều kiện tìm theo danh mục
        if (categoriesID != null && categoriesID > 0) {
            sql.append(" AND categoriesID = ?");
            params.add(categoriesID);
        }

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql.toString())) {

            // Set params
            for (int i = 0; i < params.size(); i++) {
                Object param = params.get(i);
                if (param instanceof String) {
                    ps.setString(i + 1, (String) param);
                } else if (param instanceof Integer) {
                    ps. setInt(i + 1, (Integer) param);
                }
            }

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(mapTour(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // Lấy tour theo ID
    public Tour getTourById(int tourID) {
        String sql = "SELECT * FROM Tours WHERE tourID = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, tourID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return mapTour(rs);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Map ResultSet sang Tour object
    private Tour mapTour(ResultSet rs) throws SQLException {
        Tour tour = new Tour();
        tour.setTourID(rs.getInt("tourID"));
        tour.setTitle(rs.getString("title"));
        tour.setAdultPrice(rs. getDouble("adultPrice"));
        tour.setChildPrice(rs.getDouble("Childprice"));
        tour.setCategoriesID(rs.getInt("categoriesID"));
        tour.setAvailableCapacity(rs.getInt("availableCapacity"));
        tour.setDeparture(rs.getString("Departure"));
        tour.setDescription(rs.getString("description"));
        tour.setSchedule(rs.getString("schedule"));
        tour.setLocation(rs.getString("location"));
        tour.setDuration(rs.getString("duration"));
        tour.setSlTour(rs.getInt("SlTour"));
        return tour;
    }
}