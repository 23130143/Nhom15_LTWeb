package vn.edu. hcmuaf.fit.nhom15_ltweb.service;

import vn.edu. hcmuaf.fit.nhom15_ltweb.dao.TourDAO;
import vn. edu.hcmuaf.fit.nhom15_ltweb.dao.CategoryDAO;
import vn.edu.hcmuaf. fit.nhom15_ltweb.model.Tour;
import vn.edu. hcmuaf.fit.nhom15_ltweb.model.Category;

import java.util.List;

public class TourService {
    private TourDAO tourDAO = new TourDAO();
    private CategoryDAO categoryDAO = new CategoryDAO();

    // Lấy tất cả tour
    public List<Tour> getAllTours() {
        return tourDAO.getAllTours();
    }

    // Tìm theo danh mục
    public List<Tour> searchByCategory(int categoriesID) {
        return tourDAO.searchByCategory(categoriesID);
    }

    // Lấy tour theo ID
    public Tour getTourById(int tourID) {
        return tourDAO. getTourById(tourID);
    }

    // Lấy tất cả danh mục
    public List<Category> getAllCategories() {
        return categoryDAO. getAllCategories();
    }

    // Lấy danh mục theo ID
    public Category getCategoryById(int categoryId) {
        return categoryDAO.getCategoryById(categoryId);
    }
}