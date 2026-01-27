package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Banner;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

    public List<Banner> getAllBanners() {
        List<Banner> list = new ArrayList<>();
        String sql = "SELECT * FROM Banners ORDER BY bannerID DESC";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Banner banner = new Banner();
                banner.setBannerID(rs.getInt("bannerID"));
                banner.setTitle(rs.getString("title"));
                banner.setImgBanner(rs.getString("imgBanner"));
                banner.setCreatedDate(rs.getDate("createdDate"));

                list.add(banner);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public void insertBanner(Banner banner) {
        String sql = "INSERT INTO Banners(title, imgBanner, createdDate) VALUES (?,?,?)";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, banner.getTitle());
            ps.setString(2, banner.getImgBanner());
            ps.setDate(3, banner.getCreatedDate());

            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void addBanner(Banner banner) {
        String sql = "INSERT INTO Banners(title, imgBanner, createdDate) VALUES (?,?,?)";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, banner.getTitle());
            ps.setString(2, banner.getImgBanner());
            ps.setDate(3, banner.getCreatedDate());

            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Banner> searchBanner(String keyword) {
        List<Banner> list = new ArrayList<>();

        String sql = "SELECT * FROM Banner WHERE title LIKE ?";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, "%" + keyword + "%");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Banner b = new Banner();
                b.setBannerID(rs.getInt("bannerID"));
                b.setTitle(rs.getString("title"));
                b.setImgBanner(rs.getString("imgBanner"));
                b.setCreatedDate(rs.getDate("createdDate"));

                list.add(b);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}