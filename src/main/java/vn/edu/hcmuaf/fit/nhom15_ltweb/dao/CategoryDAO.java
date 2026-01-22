package vn.edu.hcmuaf. fit.nhom15_ltweb.dao;

import vn.edu.hcmuaf. fit.nhom15_ltweb.model.Category;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {

    // Lấy tất cả danh mục
    public List<Category> getAllCategories() {
        List<Category> list = new ArrayList<>();
        String sql = "SELECT * FROM categories";

        try (Connection conn = DBConnect.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs. next()) {
                Category cat = new Category();
                cat. setCategoriesID(rs.getInt("categoriesID"));
                cat.setCategoriesName(rs.getString("categoriesName"));
                list.add(cat);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // Lấy danh mục theo ID
    public Category getCategoryById(int id) {
        String sql = "SELECT * FROM categories WHERE categoriesID = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Category cat = new Category();
                cat.setCategoriesID(rs. getInt("categoriesID"));
                cat.setCategoriesName(rs.getString("categoriesName"));
                return cat;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}