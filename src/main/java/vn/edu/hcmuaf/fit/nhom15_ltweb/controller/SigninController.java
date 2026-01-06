package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.UserDAO;

import java.io.IOException;

@WebServlet(name = "SigninController", value = "/signin")
public class SigninController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/Sign-in.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        if (username.isEmpty() || password.isEmpty() || confirmPassword.isEmpty() || username == null || password == null || confirmPassword == null) {
            request.setAttribute("errorEmpty", "Please enter username and password and confirm password");
            request.getRequestDispatcher("/Sign-in.jsp").forward(request, response);
            return;
        }
        if (!password.equalsIgnoreCase(confirmPassword)) {
            request.setAttribute("errorPassword", "Passwords do not match");
            request.getRequestDispatcher("/Sign-in.jsp").forward(request, response);
        }
        UserDAO userDAO = new UserDAO();
        if (userDAO.existsByEmail(username)) {
            request.setAttribute("errorEmail", "This username is already taken");
            request.getRequestDispatcher("/Sign-in.jsp").forward(request, response);
            return;
        }
        if (!userDAO.checkPassword(password)) {
            request.setAttribute("errorPasswordWeak", "Password must have uppercase, lowercase, number, and special character");
            request.getRequestDispatcher("/Sign-in.jsp").forward(request, response);
            return;
        }
    }
}