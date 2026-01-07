package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.UserDAO;

import java.io.IOException;

@WebServlet(name = "Login", value = "/login")
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("/Log-in.jsp")
                .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username.isEmpty() || password.isEmpty()) {
            request.setAttribute("errorEmpty", "Please enter username and password");
            request.getRequestDispatcher("/Log-in.jsp").forward(request, response);
            return;
        }
        username = username.trim();
        password = password.trim();
        UserDAO userDAO = new UserDAO();
        if ((userDAO.login(username, password)) != null) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            session.setAttribute("password", password);
            response.sendRedirect("/home");
        } else {
            request.setAttribute("errorInvalid", "Username or password is incorrect.");
            request.getRequestDispatcher("/Log-in.jsp").forward(request, response);
        }

    }
}
