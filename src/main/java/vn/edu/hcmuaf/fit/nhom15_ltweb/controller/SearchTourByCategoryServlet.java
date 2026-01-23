package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Category;
import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.CategoryDAO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.TourService;

@WebServlet("/search-by-category")
public class SearchTourByCategoryServlet extends HttpServlet {
    private TourService tourService = new TourService();
    private CategoryDAO categoryDAO = new CategoryDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String categoryIdStr = req.getParameter("categoryId");
        int categoryId = 0;
        try {
            categoryId = Integer.parseInt(categoryIdStr);
        } catch(Exception ignored) {}

        List<Tour> tourList;
        String categoryName = "";
        if (categoryId > 0) {
            tourList = tourService.searchByCategory(categoryId);
            Category cat = categoryDAO.getCategoryById(categoryId);
            if (cat != null) categoryName = cat.getCategoriesName();
        } else {
            tourList = tourService.getAllTours();
        }

        req.setAttribute("tourList", tourList);
        req.setAttribute("categoryName", categoryName);
        req.setAttribute("categories", categoryDAO.getAllCategories());
        req.getRequestDispatcher("Danh_muc_san_pham.jsp").forward(req, resp);
    }
}