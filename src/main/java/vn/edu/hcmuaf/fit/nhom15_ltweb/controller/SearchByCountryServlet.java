package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;
import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.TourDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/search-by-country")
public class SearchByCountryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String country = request.getParameter("country");
        List<Tour> tourList = TourDAO.getToursByCountry(country);

        request.setAttribute("tourList", tourList);
        request.setAttribute("country", country);

        request.getRequestDispatcher("/Danh_muc_san_pham.jsp").forward(request, response);
    }
    public static List<Tour> getToursByCountryWithImage(String country) {
        List<Tour> tours = new ArrayList<>();
        String sql = "SELECT t.*, ti.imageURL " +
                "FROM tours t " +
                "LEFT JOIN ( " +
                "    SELECT tourID, MIN(imageID) as minImageID " +
                "    FROM tourimages GROUP BY tourID " +
                ") minimg ON t.tourID = minimg.tourID " +
                "LEFT JOIN tourimages ti ON minimg.minImageID = ti.imageID " +
                "WHERE t.location = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, country);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Tour tour = new Tour();
                // ...các dòng set trường... copy hệt trên!
//                tour.setImageURL(rs.getString("imageURL"));
                tours.add(tour);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return tours;
    }
}