package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect; // Giả định lớp kết nối của bạn
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Promotion;
import java.sql.*;

public class PromotionDAO {
    // Lấy khuyến mãi đang active và trong thời hạn cho một Tour cụ thể
    public Promotion getPromotionByTourId(int tourID) {
        String sql = "SELECT p.* FROM Promotions p " +
                "JOIN TourPromotions tp ON p.promoID = tp.promoID " +
                "WHERE tp.tourID = ? AND p.active = 1 " +
                "AND CURRENT_DATE BETWEEN p.startDate AND p.endDate";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, tourID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Promotion p = new Promotion();
                p.setPromoID(rs.getInt("promoID"));
                p.setPromoType(rs.getString("promoType")); // Lấy PERCENT
                p.setDiscountValue(rs.getDouble("discountValue"));
                return p;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}