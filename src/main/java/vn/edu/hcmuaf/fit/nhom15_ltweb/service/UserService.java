package vn.edu.hcmuaf.fit.nhom15_ltweb.service;
import  vn.edu.hcmuaf.fit.nhom15_ltweb.model.User;
import vn
.edu.hcmuaf.fit.nhom15_ltweb.dao.UserDAO;
import java.util.List;

public class UserService {
    private final UserDAO userDAO;

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

    // Thêm người dùng (logic có thể kiểm tra dữ liệu ở đây)
    public void createUser(User user) {
        // Kiểm tra email không được trùng
        User existingUser = userDAO.getAllUsers().stream()
                .filter(u -> u.getEmail().equalsIgnoreCase(user.getEmail()))
                .findFirst()
                .orElse(null);

        if (existingUser != null) {
            throw new IllegalArgumentException("Email đã tồn tại, vui lòng thử email khác!");
        }

        userDAO.insertUser(user);
    }

    // Cập nhật người dùng
    public void updateUser(User user) {
        if (user.getUserID() <= 0) {
            throw new IllegalArgumentException("ID người dùng không hợp lệ!");
        }
        userDAO.updateUser(user);
    }

    // Xóa người dùng theo ID
    public void deleteUser(int userID) {
        userDAO.deleteUser(userID);
    }
}