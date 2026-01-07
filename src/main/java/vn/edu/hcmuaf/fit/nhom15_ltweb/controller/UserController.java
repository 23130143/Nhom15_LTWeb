package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.User;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.UserService;

import java.util.List;
import java.util.Scanner;

public class UserController {
    private final UserService userService; // Sử dụng Service để thao tác nghiệp vụ

    public UserController() {
        this.userService = new UserService();
    }

    // Hiển thị tất cả người dùng
    public void displayAllUsers() {
        List<User> users = userService.getAllUsers();
        if (users.isEmpty()) {
            System.out.println("Không có người dùng nào trong hệ thống.");
        } else {
            System.out.println("Danh sách người dùng:");
            users.forEach(System.out::println);
        }
    }


    // Xử lý cập nhật thông tin người dùng
    public void updateUser() {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Nhập ID người dùng cần cập nhật: ");
        int userID = scanner.nextInt();
        scanner.nextLine();

        User existingUser = userService.getUserById(userID);
        if (existingUser == null) {
            System.out.println("ID người dùng không tồn tại!");
            return;
        }

        System.out.println("Nhập thông tin mới (bấm Enter để giữ nguyên giá trị cũ):");
        System.out.print("Họ và tên [hiện tại: " + existingUser.getFullName() + "]: ");
        String fullName = scanner.nextLine();
        if (!fullName.isEmpty()) existingUser.setFullName(fullName);

        System.out.print("Email [hiện tại: " + existingUser.getEmail() + "]: ");
        String email = scanner.nextLine();
        if (!email.isEmpty()) existingUser.setEmail(email);

        System.out.print("Vai trò (admin/user) [hiện tại: " + existingUser.getRole() + "]: ");
        String role = scanner.nextLine();
        if (!role.isEmpty()) existingUser.setRole(role);

        System.out.print("Số hộ chiếu [hiện tại: " + existingUser.getPassport() + "]: ");
        String passport = scanner.nextLine();
        if (!passport.isEmpty()) existingUser.setPassport(passport);

        System.out.print("Số điện thoại [hiện tại: " + existingUser.getPhone() + "]: ");
        String phone = scanner.nextLine();
        if (!phone.isEmpty()) existingUser.setPhone(phone);

        System.out.print("Địa chỉ [hiện tại: " + existingUser.getAddress() + "]: ");
        String address = scanner.nextLine();
        if (!address.isEmpty()) existingUser.setAddress(address);

        System.out.print("Ngày sinh (yyyy-MM-dd) [hiện tại: " + existingUser.getBirthDate() + "]: ");
        String birthDate = scanner.nextLine();
        if (!birthDate.isEmpty()) {
            try {
                existingUser.setBirthDate(java.sql.Date.valueOf(birthDate));
            } catch (IllegalArgumentException e) {
                System.out.println("Ngày sinh không hợp lệ! Hủy thao tác...");
                return;
            }
        }

        System.out.print("Giới tính (Male/Female) [hiện tại: " + existingUser.getGender() + "]: ");
        String gender = scanner.nextLine();
        if (!gender.isEmpty()) existingUser.setGender(gender);

        userService.updateUser(existingUser);
        System.out.println("Cập nhật thông tin người dùng thành công!");
    }

    // Xử lý xóa người dùng
    public void deleteUser() {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Nhập ID người dùng cần xóa: ");
        int userID = scanner.nextInt();

        try {
            userService.deleteUser(userID);
            System.out.println("Xóa người dùng thành công!");
        } catch (Exception e) {
            System.out.println("Lỗi: " + e.getMessage());
        }
    }
}