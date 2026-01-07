package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.UserService;

import java.io.IOException;

@WebServlet(name = "ForgetPSWController", value = "/forgetpsw")
public class ForgetPSWController extends HttpServlet {
    UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/Fpsw.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        boolean rs = userService.existsByEmail(email);
        if (rs) {
            request.getRequestDispatcher("/noti_fpsw.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "Khong tim thay tai khoan");
            request.getRequestDispatcher("/Fpsw.jsp").forward(request, response);
        }
    }
}