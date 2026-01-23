package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.TourExperience;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TourExperienceDAO {

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
}