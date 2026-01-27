package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Category;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.TourWithImage;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.TourService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchTourController", value = "/search-tour")
public class SearchTourController extends HttpServlet {
    private TourService tourService = new TourService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        // Lấy categoryId từ request
        String categoryIdStr = request.getParameter("categoryId");

        Integer categoryId = null;
        if (categoryIdStr != null && !categoryIdStr.isEmpty()) {
            try {
                categoryId = Integer.parseInt(categoryIdStr);
            } catch (NumberFormatException e) {
                categoryId = null;
            }
        }

        // Tìm kiếm theo danh mục
        List<TourWithImage> tourList;
        String categoryName = null;

        if (categoryId != null && categoryId > 0) {
            // Tìm theo danh mục cụ thể
            tourList = tourService.searchByCategory(categoryId);

            // Lấy tên danh mục
            Category category = tourService.getCategoryById(categoryId);
            if (category != null) {
                categoryName = category.getCategoriesName();
            }
        } else {
            // Lấy tất cả tour
            tourList = tourService.getAllTours();
        }

        // Lấy danh sách danh mục cho sidebar
        List<Category> categories = tourService.getAllCategories();

        // Đặt vào request
        request.setAttribute("tourList", tourList);
        request.setAttribute("categories", categories);
        request.setAttribute("searchCategoryId", categoryId);
        request.setAttribute("categoryName", categoryName);
        request.setAttribute("resultCount", tourList.size());

        // Forward đến JSP
        request.getRequestDispatcher("/Danh_muc_san_pham.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}