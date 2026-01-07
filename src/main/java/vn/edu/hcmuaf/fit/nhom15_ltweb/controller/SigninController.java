package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.SigninService;

import java.io.IOException;

@WebServlet(name = "SigninController", value = "/signin")
public class SigninController extends HttpServlet {
    private SigninService signinService = new SigninService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/Sign-in.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String result = signinService.register(fullname, username, password, confirmPassword);
        switch (result) {
            case "EMPTY": {
                request.setAttribute("errorEmpty", "Please enter username and password and confirm password");
                request.getRequestDispatcher("/Sign-in.jsp").forward(request, response);
                return;
            }
            case "PASSWORD": {
                request.setAttribute("errorPassword", "Passwords do not match");
                request.getRequestDispatcher("/Sign-in.jsp").forward(request, response);
                return;
            }
            case "EMAIL": {
                request.setAttribute("errorEmail", "This username is already taken");
                request.getRequestDispatcher("/Sign-in.jsp").forward(request, response);
                return;
            }
            case "WEAK_PASSWORD": {
                request.setAttribute("errorPasswordWeak", "Password must have uppercase, lowercase, number, and special character");
                request.getRequestDispatcher("/Sign-in.jsp").forward(request, response);
                return;
            }
            case "FAILURE": {
                request.setAttribute("error", "Sign-in failed");
                request.getRequestDispatcher("/Sign-in.jsp").forward(request, response);
                return;
            }
            case "SUCCESS": {
                request.setAttribute("success", "Sign-in successfully");
                request.getRequestDispatcher("/Log-in.jsp").forward(request, response);
                return;
            }
        }

    }
}