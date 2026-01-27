package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.User;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

// xử lý cập nhật hồ sơ

@WebServlet("/edit-profile")
public class EditProfileServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        Integer userID = (Integer) session.getAttribute("userID");

        if (userID == null) {
            response.sendRedirect("Log-in.jsp");
            return;
        }

        String fullName = request.getParameter("fullName");
        String phone = request.getParameter("phone");
        String birthDate = request.getParameter("birthDate");
        String address = request.getParameter("address");
        String gender = request.getParameter("gender");
        String passport = request.getParameter("passport");

        UserService userService = new UserService();
        User user = userService.getUserById(userID);
        user.setFullName(fullName);
        user.setPhone(phone);
        user.setGender(gender);
        user.setAddress(address);
        user.setPassport(passport);
        try {
            if (birthDate != null && !birthDate.isEmpty()) {
                Date bDate = new SimpleDateFormat("yyyy-MM-dd").parse(birthDate);
                user.setBirthDate(bDate);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        userService.updateUser(user);

        response.sendRedirect(request.getContextPath() + "/profile");
    }
}