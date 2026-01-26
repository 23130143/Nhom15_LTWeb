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
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.TourWithImage;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.TourService;

@WebServlet("/search-by-category")
public class SearchTourByCategoryServlet extends HttpServlet {
    private TourService tourService = new TourService();
    private CategoryDAO categoryDAO = new CategoryDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String categoryIdStr = req.getParameter("categoryId");
        List<TourWithImage> tourList;
        if (categoryIdStr == null || categoryIdStr.isEmpty()) {
            // KHÔNG truyền categoryId --> LẤY TẤT CẢ TOUR
            tourList = tourService.getAllToursWithImage();
        } else {
            int categoryId = 0;
            try { categoryId = Integer.parseInt(categoryIdStr); } catch(Exception ignored) {}
            tourList = tourService.getToursWithImageByCategory(categoryId); // hàm này như cũ, chỉ lấy đúng 1 loại
        }
        req.setAttribute("tourList", tourList);
        req.getRequestDispatcher("Danh_muc_san_pham.jsp").forward(req, resp);
    }
}