package vn.edu.hcmuaf.fit.nhom15_ltweb.service;

import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.CategoryDAO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.TourDAO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Category;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.TourWithImage;

import java.util.List;

public class TourService {
    private TourDAO tourDAO = new TourDAO();
    private CategoryDAO categoryDAO = new CategoryDAO();

    // Lấy tất cả tour
    public List<TourWithImage> getAllTours() {
        return TourDAO.getAllToursWithImage();
    }

    // Tìm theo danh mục
    public List<TourWithImage> searchByCategory(int categoryId) {
        return TourDAO.getToursWithImageByCategory(categoryId);
    }

    // Lấy tour theo ID
    public Tour getTourById(int tourID) {
        return tourDAO.getTourById(tourID);
    }

    // Lấy tất cả danh mục
    public List<Category> getAllCategories() {
        return categoryDAO.getAllCategories();
    }

    public List<TourWithImage> getToursWithImageByCategory(int categoryId) {
        return TourDAO.getToursWithImageByCategory(categoryId);
    }

    public List<TourWithImage> getToursWithImageByCountry(String country) {
        return TourDAO.getToursWithImageByCountry(country); // DAO mới
    }

    public List<TourWithImage> getAllToursWithImage() {
        return TourDAO.getAllToursWithImage();
    }

    // Lấy danh mục theo ID
    public Category getCategoryById(int categoryId) {
        return categoryDAO.getCategoryById(categoryId);
    }

    public List<Tour> getTopSellingTours(int limit) {
        return tourDAO.getTopSellingTours(limit);
    }

    // Lấy tour bán chạy nhất theo danh mục
    public List<Tour> getTopSellingToursByCategory(int categoriesID, int limit) {
        return tourDAO.getTopSellingToursByCategory(categoriesID, limit);
    }

    public List<Tour> getAllTours_l() {
        List<Tour> tours = tourDAO.getAllTours();
        return tours;
    }

    public int insertTour(Tour tour) {
        return tourDAO.insertTour(tour);
    }

    public void insertTourImage(int tourID, String s) {
        tourDAO.insertTourImage(tourID, s);
    }

    public List<Tour> searchTourByName(String keyword) {
        List<Tour> list = tourDAO.searchByName(keyword);
        return list;
    }
}

//    // Fen có thể thêm logic kiểm tra sức chứa ở đây nếu muốn nâng cao
//    public boolean checkCapacity(int tourID, int requestedQty) {
//        Tour tour = tourDAO.getTourById(tourID);
//        return tour != null && tour.getAvailableCapacity() >= requestedQty; //
//    }
//}