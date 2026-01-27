package vn.edu.hcmuaf.fit.nhom15_ltweb.dao;

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
            ps.setString(2, (password));
            ResultSet rs = ps.executeQuery();
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
        String query = "SELECT * FROM users";

        try (Connection connection = DBConnect.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query);
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
        String query = "SELECT * FROM users WHERE userID = ?";
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
    public boolean insertUser(String fullName, String email, String password) {
        String query = "INSERT INTO users (fullName, email, password, role, createdAt, updatedAt) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection connection = DBConnect.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(query)) {

            pstmt.setString(1, fullName);
            pstmt.setString(2, email);
            pstmt.setString(3, password);
            pstmt.setString(4, "user");
            pstmt.setDate(5, new java.sql.Date(System.currentTimeMillis()));
            pstmt.setDate(6, new java.sql.Date(System.currentTimeMillis()));
            pstmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Cập nhật người dùng
    public boolean updateUserProfile(User user) {
        String query = "UPDATE users SET fullName = ?, email = ?, updatedAt = ?, passport = ?, phone = ?, address = ?, birthDate = ?, gender = ? WHERE userID = ?";

        try (Connection connection = DBConnect.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(query)) {

            pstmt.setString(1, user.getFullName());
            pstmt.setString(2, user.getEmail());
            pstmt.setTimestamp(3, new Timestamp(System.currentTimeMillis())); // updatedAt
            pstmt.setString(4, user.getPassport());
            pstmt.setString(5, user.getPhone());
            pstmt.setString(6, user.getAddress());
            if (user.getBirthDate() != null) {
                pstmt.setDate(7, new java.sql.Date(user.getBirthDate().getTime()));
            } else {
                pstmt.setNull(7, Types.DATE);
            }
            pstmt.setString(8, user.getGender());
            pstmt.setInt(9, user.getUserID());
            return pstmt.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Xóa người dùng
    public void deleteUser(int userID) {
        String query = "DELETE FROM users WHERE userID = ?";
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

    public void updatePSW(String email, String hashPSW) {
        String query = "UPDATE users SET password = ? WHERE email = ?";
        try (
                Connection connection = DBConnect.getConnection();
                PreparedStatement ps = connection.prepareStatement(query);
        ) {
            ps.setString(1, hashPSW);
            ps.setString(2, email);
            ps.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    // cập nhật người dùng bao gồm cả mật khẩu
    public boolean updateUser(User user) {
        String query = "UPDATE users SET fullName=?, email=?, password=?, updatedAt=?, passport=?, phone=?, address=?, birthDate=?, gender=? WHERE userID=?";
        try (Connection connection = DBConnect.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(query)) {

            pstmt.setString(1, user.getFullName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setTimestamp(4, new Timestamp(System.currentTimeMillis()));
            pstmt.setString(5, user.getPassport());
            pstmt.setString(6, user.getPhone());
            pstmt.setString(7, user.getAddress());
            if (user.getBirthDate() != null) {
                pstmt.setDate(8, new java.sql.Date(user.getBirthDate().getTime()));
            } else {
                pstmt.setNull(8, Types.DATE);
            }
            pstmt.setString(9, user.getGender());
            pstmt.setInt(10, user.getUserID());
            return pstmt.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<User> searchUser(String keyword) {
        List<User> list = new ArrayList<>();

        String sql = "SELECT * FROM users WHERE fullName LIKE ? OR email LIKE ? OR phone LIKE ?";

        try (Connection con = DBConnect.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            String key = "%" + keyword + "%";
            ps.setString(1, key);
            ps.setString(2, key);
            ps.setString(3, key);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setUserID(rs.getInt("userID"));
                u.setFullName(rs.getString("fullName"));
                u.setEmail(rs.getString("email"));
                u.setPhone(rs.getString("phone"));
                u.setCreatedAt(rs.getDate("createdAt"));

                list.add(u);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}