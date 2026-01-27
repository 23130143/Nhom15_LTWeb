package vn.edu.hcmuaf.fit.nhom15_ltweb.controller.Ad;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.User;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.DashboardService;

import java.io.IOException;

@WebServlet(name = "AdminDashboardController", value = "/admin/dashboard")
public class AdminDashboardController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        User user = (User) request.getSession().getAttribute("user");
        DashboardService dashboardService = new DashboardService();

        request.setAttribute("summary", dashboardService.getSummary());
//        request.setAttribute("activities", dashboardService.getRecentActivities());

        request.getRequestDispatcher("/Admin_DashBoard.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}