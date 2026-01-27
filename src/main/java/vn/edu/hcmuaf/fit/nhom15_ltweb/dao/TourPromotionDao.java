package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;

import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class TourPromotionDao {

    public void insert(int tourId, int promotionId) {
        String sql = "INSERT INTO TourPromotions (tourID, promoID) VALUES (?, ?)";

        try (Connection con = DBConnect.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, tourId);
            ps.setInt(2, promotionId);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
