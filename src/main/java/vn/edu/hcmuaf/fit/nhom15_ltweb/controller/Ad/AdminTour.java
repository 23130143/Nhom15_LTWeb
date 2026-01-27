package vn.edu.hcmuaf.fit.nhom15_ltweb.controller.Ad;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.User;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.TourService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminTour", value = "/admin/tours")
public class AdminTour extends HttpServlet {

    private TourService service = new TourService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        User user = (User) request.getSession().getAttribute("user");
        if (user == null || !"ADMIN".equals(user.getRole())) {
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return;
        }

        String keyword = request.getParameter("keyword");

        List<Tour> tours;

        if (keyword != null && !keyword.trim().isEmpty()) {
            tours = service.searchTourByName(keyword);
        } else {
            tours = service.getAllTours_l();
        }

        request.setAttribute("tours", tours);
        request.setAttribute("keyword", keyword);

        request.getRequestDispatcher("/AdSanPham.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
