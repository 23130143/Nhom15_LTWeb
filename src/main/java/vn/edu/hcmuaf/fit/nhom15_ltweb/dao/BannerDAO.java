package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Banner;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;

import java.sql.*;

public class BannerDAO {

    // Lấy 1 banner mới nhất
    public Banner getLatestBanner() {
        String sql = "SELECT * FROM Banners ORDER BY createdDate DESC LIMIT 1";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                Banner banner = new Banner();
                banner.setBannerID(rs.getInt("bannerID"));
                banner.setTitle(rs.getString("title"));
                banner.setImgBanner(rs.getString("imgBanner"));
                banner.setCreatedDate(rs.getDate("createdDate"));
                return banner;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}