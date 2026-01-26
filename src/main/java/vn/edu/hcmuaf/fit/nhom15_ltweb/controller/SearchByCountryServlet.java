package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;
import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.TourDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.TourWithImage;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.TourService;
import vn.edu.hcmuaf.fit.nhom15_ltweb.ultils.DBConnect;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/search-by-country")
public class SearchByCountryServlet extends HttpServlet {
    private TourService tourService = new TourService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String country = request.getParameter("country");
        List<TourWithImage> tourList = tourService.getToursWithImageByCountry(country); // DAO mới
        request.setAttribute("tourList", tourList);
        request.getRequestDispatcher("/Danh_muc_san_pham.jsp").forward(request, response);
    }
}