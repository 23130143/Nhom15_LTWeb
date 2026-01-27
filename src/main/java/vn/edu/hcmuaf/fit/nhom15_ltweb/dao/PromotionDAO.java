package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Promotion;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
                p.setPromoName(rs.getString("promoName"));  // ← THÊM DÒNG NÀY
                p.setPromoType(rs.getString("promoType")); // Lấy PERCENT
                p.setDiscountValue(rs.getDouble("discountValue"));
                return p;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Promotion> getAllPromotion() {
        List<Promotion> list = new ArrayList<>();
        String sql = "SELECT * FROM Promotions ORDER BY startDate DESC";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Promotion p = new Promotion();
                p.setPromoID(rs.getInt("promoID"));
                p.setPromoName(rs.getString("promoName"));
                p.setPromoType(rs.getString("promoType"));
                p.setDiscountValue(rs.getDouble("discountValue"));
                p.setStartDate(rs.getDate("startDate"));
                p.setEndDate(rs.getDate("endDate"));
                p.setActive(rs.getBoolean("active"));
                list.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}