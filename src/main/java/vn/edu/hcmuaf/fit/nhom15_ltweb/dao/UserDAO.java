package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.MD5;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.User;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    public User login(String email, String password) {
        String query = "select * from users where email = ? and password = ?";
        try (Connection connection = DBConnect.getConnection();
             PreparedStatement ps = connection.prepareStatement(query);
        ) {
            ps.setString(1, email);
            ps.setString(2, MD5.md5(password));
            ResultSet rs = ps.executeQuery(query);
            while (rs.next()) {
                User user = new User();
                user.setUserID(rs.getInt("userID"));
                user.setFullName(rs.getString("fullName"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));
                user.setCreatedAt(rs.getDate("createdAt"));
                user.setUpdatedAt(rs.getDate("updatedAt"));
                user.setPassport(rs.getString("passport"));
                user.setPhone(rs.getString("phone"));
                user.setAddress(rs.getString("address"));
                user.setBirthDate(rs.getDate("birthDate"));
                user.setGender(rs.getString("gender"));
                return user;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public boolean existsByEmail(String email) {
        String query = "select * from users where email = ?";
        try (Connection connection = DBConnect.getConnection();
             PreparedStatement ps = connection.prepareStatement(query);) {
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    // Lấy tất cả người dùng
    public List<User> getAllUsers() {
        List<User> userList = new ArrayList<>();
        String query = "SELECT * FROM User";

        try (Connection connection = DBConnect.getConnection();
             Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {
            while (rs.next()) {
                userList.add(parseUser(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }

    // Lấy người dùng theo ID
    public User getUserById(int userID) {
        String query = "SELECT * FROM User WHERE userID = ?";
        try (Connection connection = DBConnect.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(query)) {

            pstmt.setInt(1, userID);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                return parseUser(rs);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Thêm người dùng mới
    public void insertUser(User user) {
        String query = "INSERT INTO User (fullName, email, password, role, createdAt, updatedAt, passport, phone, address, birthDate, gender) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection connection = DBConnect.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(query)) {

            pstmt.setString(1, user.getFullName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getRole());
            pstmt.setTimestamp(5, new Timestamp(System.currentTimeMillis())); // createdAt
            pstmt.setTimestamp(6, new Timestamp(System.currentTimeMillis())); // updatedAt
            pstmt.setString(7, user.getPassport());
            pstmt.setString(8, user.getPhone());
            pstmt.setString(9, user.getAddress());
            pstmt.setDate(10, new java.sql.Date(user.getBirthDate().getTime()));
            pstmt.setString(11, user.getGender());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Cập nhật người dùng
    public void updateUser(User user) {
        String query = "UPDATE User SET fullName = ?, email = ?, role = ?, updatedAt = ?, passport = ?, phone = ?, address = ?, birthDate = ?, gender = ? WHERE userID = ?";

        try (Connection connection = DBConnect.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(query)) {

            pstmt.setString(1, user.getFullName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getRole());
            pstmt.setTimestamp(4, new Timestamp(System.currentTimeMillis())); // updatedAt
            pstmt.setString(5, user.getPassport());
            pstmt.setString(6, user.getPhone());
            pstmt.setString(7, user.getAddress());
            pstmt.setDate(8, new java.sql.Date(user.getBirthDate().getTime()));
            pstmt.setString(9, user.getGender());
            pstmt.setInt(10, user.getUserID());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Xóa người dùng
    public void deleteUser(int userID) {
        String query = "DELETE FROM User WHERE userID = ?";
        try (Connection connection = DBConnect.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(query)) {

            pstmt.setInt(1, userID);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Map ResultSet thành đối tượng User
    private User parseUser(ResultSet rs) throws SQLException {
        User user = new User();
        user.setUserID(rs.getInt("userID"));
        user.setFullName(rs.getString("fullName"));
        user.setEmail(rs.getString("email"));
        user.setPassword(rs.getString("password"));
        user.setRole(rs.getString("role"));
        user.setCreatedAt(rs.getTimestamp("createdAt"));
        user.setUpdatedAt(rs.getTimestamp("updatedAt"));
        user.setPassport(rs.getString("passport"));
        user.setPhone(rs.getString("phone"));
        user.setAddress(rs.getString("address"));
        user.setBirthDate(rs.getDate("birthDate"));
        user.setGender(rs.getString("gender"));
        return user;
    }

    public boolean checkPassword(String password) {
        if (password == null) return false;

        // Regex:
        // (?=.*[0-9])      --> ít nhất 1 số
        // (?=.*[a-z])      --> ít nhất 1 chữ thường
        // (?=.*[A-Z])      --> ít nhất 1 chữ hoa
        // (?=.*[@#$%^&+=!])--> ít nhất 1 ký tự đặc biệt (thay đổi theo nhu cầu)
        // .{8,}            --> tối thiểu 8 ký tự
        String regex = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=!]).{8,}$";

        return password.matches(regex);
    }
}