package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.*;
import java.sql.*;
public class TourDAO {
    public Tour getTourById(int id) {
        // 1. Lấy thông tin Tour và Khuyến mãi (PERCENT)
        String sql = "SELECT t.*, p.promoType, p.discountValue " +
                "FROM Tours t " +
                "LEFT JOIN TourPromotions tp ON t.tourID = tp.tourID " +
                "LEFT JOIN Promotions p ON tp.promoID = p.promoID " +
                "WHERE t.tourID = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Tour tour = new Tour();
                tour.setTourID(rs.getInt("tourID"));
                tour.setTitle(rs.getString("title"));
                tour.setAdultPrice(rs.getDouble("adultPrice"));
                tour.setChildPrice(rs.getDouble("childPrice"));

                // Đóng gói Promotion để xử lý PERCENT sau này
                Promotion promo = new Promotion();
                promo.setPromoType(rs.getString("promoType"));
                promo.setDiscountValue(rs.getDouble("discountValue"));
                tour.setPromotion(promo);

                // 2. SỬ DỤNG TOURIMAGESDAO: Lấy ảnh đại diện cho Tour
                TourimagesDAO imgDAO = new TourimagesDAO();
                Tourimages mainImg = imgDAO.getMainImageByTourId(id);
                if (mainImg != null) {
                    tour.setImageURL(mainImg.getImageURL());                }

                return tour;
            }
        } catch (Exception e) { e.printStackTrace(); }
        return null;
    }
}
