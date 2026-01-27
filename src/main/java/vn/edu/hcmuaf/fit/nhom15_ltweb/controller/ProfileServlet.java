package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.User;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

// hiển thị dữ liệu từ database lên Hoso.jsp

@WebServlet("/profile")
public class ProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        Integer userID = (session != null) ? (Integer) session.getAttribute("userID") : null; // lưu userID khi sign-in thành công

        if (userID == null) {
            response.sendRedirect("Log-in.jsp");
            return;
        }

        UserService userService = new UserService();
        User user = userService.getUserById(userID);
        request.setAttribute("user", user);

        request.getRequestDispatcher("/HoSo.jsp").forward(request, response);
    }
}