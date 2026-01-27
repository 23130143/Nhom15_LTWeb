package vn.edu.hcmuaf.fit.nhom15_ltweb.service;

import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.UserDAO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.User;

import java.util.List;

public class UserService {
    private UserDAO userDAO;

    public UserService() {
        this.userDAO = new UserDAO();
    }

    // Lấy tất cả người dùng
    public List<User> getAllUsers() {
        return userDAO.getAllUsers();
    }

    // Lấy người dùng theo ID
    public User getUserById(int userID) {
        return userDAO.getUserById(userID);
    }

    public boolean existsByEmail(String email) {
        return userDAO.existsByEmail(email);
    }

    // Cập nhật người dùng
    public boolean updateUserProfile(User user) {
        if (user == null || user.getUserID() <= 0) {
            return false;
        }
        return userDAO.updateUserProfile(user);
    }
    // UserService.java
    public boolean updateUser(User user) {
        return userDAO.updateUser(user);
    }

    // Xóa người dùng theo ID
    public void deleteUser(int userID) {
        userDAO.deleteUser(userID);
    }

    public void updatePSW(String email, String hashPSW) {
        userDAO.updatePSW(email, hashPSW);
    }
}