package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.TourIncluded;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TourIncludedDAO {

    // Lấy dịch vụ bao gồm theo tourID
    public List<TourIncluded> getIncludedByTourId(int tourID) {
        List<TourIncluded> list = new ArrayList<>();
        String sql = "SELECT ti.* FROM TourIncluded ti " +
                "JOIN TourIncluded_Ref tir ON ti.TourIncludedID = tir.TourIncludedID " +
                "WHERE tir.TourID = ?";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, tourID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                TourIncluded item = new TourIncluded();
                item.setTourIncludedID(rs.getInt("TourIncludedID"));
                item.setTourIncludedTitle(rs.getString("TourIncludedTittle"));
                item.setTourIncludedInfo(rs.getString("TourIncludedInfor"));
                list.add(item);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}