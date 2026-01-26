package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.TourWithImage;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tourimages;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.TourExperience;

public class TourDAO {

    // Lấy tất cả Tour
    public static List<Tour> getAllTours() {
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

    public static List<TourWithImage> getToursWithImageByCategory(int categoryId) {
        List<TourWithImage> tours = new ArrayList<>();
        String sql = "SELECT t.*, ti.imageID, ti.tourID as imageTourID, ti.imageURL " +
                "FROM tours t " +
                "LEFT JOIN (SELECT tourID, MIN(imageID) as minImageID FROM tourimages GROUP BY tourID) minimg ON t.tourID = minimg.tourID " +
                "LEFT JOIN tourimages ti ON minimg.minImageID = ti.imageID " +
                "WHERE t.categoriesID = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Tour tour = mapTour(rs);
                Tourimages img = null;
                if (rs.getString("imageURL") != null) {
                    img = new Tourimages(rs.getInt("imageID"),
                            rs.getInt("imageTourID"),
                            rs.getString("imageURL"));
                }
                tours.add(new TourWithImage(tour, img));
            }
        } catch (Exception e) { e.printStackTrace(); }
        return tours;
    }

    public static List<TourWithImage> getToursWithImageByCountry(String country) {
        List<TourWithImage> tours = new ArrayList<>();
        String sql = "SELECT t.*, ti.imageID, ti.tourID as imageTourID, ti.imageURL " +
                "FROM tours t " +
                "LEFT JOIN (SELECT tourID, MIN(imageID) as minImageID FROM tourimages GROUP BY tourID) minimg ON t.tourID = minimg.tourID " +
                "LEFT JOIN tourimages ti ON minimg.minImageID = ti.imageID " +
                "WHERE t.location = ?";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, country);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Tour tour = mapTour(rs);
                Tourimages img = null;
                if (rs.getString("imageURL") != null) {
                    img = new Tourimages(rs.getInt("imageID"),
                            rs.getInt("imageTourID"),
                            rs.getString("imageURL"));
                }
                tours.add(new TourWithImage(tour, img));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return tours;
    }

    public static List<TourWithImage> getAllToursWithImage() {
        List<TourWithImage> tours = new ArrayList<>();
        String sql = "SELECT t.*, ti.imageID, ti.tourID as imageTourID, ti.imageURL " +
                "FROM tours t " +
                "LEFT JOIN (SELECT tourID, MIN(imageID) as minImageID FROM tourimages GROUP BY tourID) minimg ON t.tourID = minimg.tourID " +
                "LEFT JOIN tourimages ti ON minimg.minImageID = ti.imageID";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Tour tour = mapTour(rs);
                Tourimages img = null;
                if (rs.getString("imageURL") != null) {
                    img = new Tourimages(rs.getInt("imageID"),
                            rs.getInt("imageTourID"),
                            rs.getString("imageURL"));
                }
                tours.add(new TourWithImage(tour, img));
            }
        } catch (Exception e) { e.printStackTrace(); }
        return tours;
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
            params.add("%" + name.trim() + "%");
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
                    ps.setInt(i + 1, (Integer) param);
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
        String sql = "SELECT * FROM tours WHERE tourID = ?";
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
    private static Tour mapTour(ResultSet rs) throws SQLException {
        Tour tour = new Tour();
        tour.setTourID(rs.getInt("tourID"));
        tour.setTitle(rs.getString("title"));
        tour.setAdultPrice(rs.getDouble("adultPrice"));
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
//    public Tour getTourById_p(int id) {
//        // 1. Lấy thông tin Tour và Khuyến mãi (PERCENT)
//        String sql = "SELECT t.*, p.promoType, p.discountValue " +
//                "FROM Tours t " +
//                "LEFT JOIN TourPromotions tp ON t.tourID = tp.tourID " +
//                "LEFT JOIN Promotions p ON tp.promoID = p.promoID " +
//                "WHERE t.tourID = ?";
//        try (Connection conn = DBConnect.getConnection();
//             PreparedStatement ps = conn.prepareStatement(sql)) {
//            ps.setInt(1, id);
//            ResultSet rs = ps.executeQuery();
//            if (rs.next()) {
//                Tour tour = mapTour(rs);
//
//                // Nếu có khuyến mãi
//                String promoType = rs.getString("promoType");
//                if (promoType != null) {
//                    tour.setPromoType(promoType);
//                    tour.setDiscountValue(rs.getDouble("discountValue"));
//                }
//
//                return tour;
//             }
//         } catch (Exception e) { e.printStackTrace(); }
//         return null;
//     }
    public List<Tour> getTopSellingTours(int limit) {
        List<Tour> list = new ArrayList<>();
        String sql = "SELECT t.*, COALESCE(SUM(b.adultCount + b.childCount), 0) AS totalSold " +
                "FROM Tours t " +
                "LEFT JOIN Bookings b ON t.tourID = b.tourID " +
                "GROUP BY t.tourID " +
                "ORDER BY totalSold DESC " +
                "LIMIT ?";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, limit);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(mapTour(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // Lấy tour bán chạy nhất theo danh mục
    public List<Tour> getTopSellingToursByCategory(int categoriesID, int limit) {
        List<Tour> list = new ArrayList<>();
        String sql = "SELECT t.*, COALESCE(SUM(b.adultCount + b.childCount), 0) AS totalSold " +
                "FROM Tours t " +
                "LEFT JOIN Bookings b ON t.tourID = b.tourID " +
                "WHERE t.categoriesID = ? " +
                "GROUP BY t.tourID " +
                "ORDER BY totalSold DESC " +
                "LIMIT ?";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, categoriesID);
            ps.setInt(2, limit);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(mapTour(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    // Lấy danh sách điểm tham quan theo tourID (giới hạn số lượng)
    public List<TourExperience> getExperiencesByTourId(int tourID, int limit) {
        List<TourExperience> list = new ArrayList<>();
        String sql = "SELECT * FROM TourExperience WHERE tourID = ? LIMIT ?";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, tourID);
            ps.setInt(2, limit);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                TourExperience exp = new TourExperience();
                exp.setTourExperienceID(rs.getInt("TourExperienceID"));
                exp.setTourID(rs.getInt("tourID"));
                exp.setTourExperienceTitle(rs.getString("TourExperienceTitle"));
                exp.setTourExperienceInfo(rs.getString("TourExperienceInfo"));
                list.add(exp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // Lấy tất cả điểm tham quan của tour
    public List<TourExperience> getAllExperiencesByTourId(int tourID) {
        return getExperiencesByTourId(tourID, 100);
    }
}
