package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tourimages;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TourimagesDAO {

    // Lấy tất cả ảnh của tour (gallery / slider)
    public List<Tourimages> getImagesByTourId(int tourID) {
        List<Tourimages> list = new ArrayList<>();
        String sql = "SELECT * FROM TourImages WHERE tourID = ?";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, tourID);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Tourimages img = new Tourimages();
                img.setImageID(rs.getInt("imageID"));
                img.setTourID(rs.getInt("tourID"));
                img.setImageURL(rs.getString("imageURL"));
                list.add(img);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // Lấy ảnh đại diện (ảnh đầu tiên)
    public Tourimages getMainImageByTourId(int tourID) {
        String sql = "SELECT * FROM TourImages WHERE tourID = ? LIMIT 1";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, tourID);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return new Tourimages(
                        rs.getInt("imageID"),
                        rs.getInt("tourID"),
                        rs.getString("imageURL")
                );
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
