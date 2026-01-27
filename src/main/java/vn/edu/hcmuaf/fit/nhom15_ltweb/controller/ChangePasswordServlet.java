package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.User;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

// xử lý đổi mật khẩu

@WebServlet("/change-password")
public class ChangePasswordServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Integer userID = (Integer) session.getAttribute("userID");

        if (userID == null) {
            response.sendRedirect("Log-in.jsp");
            return;
        }

        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        UserService userService = new UserService();
        User user = userService.getUserById(userID);

        // So sánh mật khẩu cũ: mã hóa đầu vào rồi mới so sánh
        if (!user.getPassword().equals(md5(oldPassword))) {
            request.setAttribute("error", "Mật khẩu cũ không đúng!");
            request.getRequestDispatcher("/DoiMK.jsp").forward(request, response);
            return;
        }

        if (!newPassword.equals(confirmPassword)) {
            request.setAttribute("error", "Mật khẩu mới không trùng nhau!");
            request.getRequestDispatcher("/DoiMK.jsp").forward(request, response);
            return;
        }

        // Lưu mật khẩu mới dạng mã hóa MD5
        user.setPassword(md5(newPassword));
        userService.updateUser(user);

        response.sendRedirect(request.getContextPath() + "/profile");
    }

    // Hàm mã hóa MD5 đơn giản
    public static String md5(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] messageDigest = md.digest(input.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : messageDigest) {
                sb.append(String.format("%02x", b & 0xff));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}