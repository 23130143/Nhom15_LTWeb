package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.*;
import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "TourDetailController", value = "/tour-detail")
public class TourDetailController extends HttpServlet {

    private TourDAO tourDAO = new TourDAO();
    private TourimagesDAO tourimagesDAO = new TourimagesDAO();
    private TourExperienceDAO tourExperienceDAO = new TourExperienceDAO();
    private TourIncludedDAO tourIncludedDAO = new TourIncludedDAO();
    private PromotionDAO promotionDAO = new PromotionDAO();
    private CategoryDAO categoryDAO = new CategoryDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        // Lấy tourID từ parameter
        String idParam = request.getParameter("id");
        if (idParam == null || idParam.isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/home");
            return;
        }

        int tourID;
        try {
            tourID = Integer.parseInt(idParam);
        } catch (NumberFormatException e) {
            response.sendRedirect(request.getContextPath() + "/home");
            return;
        }

        // Lấy thông tin tour từ bảng Tours
        Tour tour = tourDAO.getTourById(tourID);
        if (tour == null) {
            response.sendRedirect(request.getContextPath() + "/home");
            return;
        }
        request.setAttribute("tour", tour);

        // Lấy danh mục từ bảng Categories
        Category category = categoryDAO.getCategoryById(tour.getCategoriesID());
        request.setAttribute("category", category);

        // Lấy tất cả ảnh từ bảng TourImages
        List<Tourimages> images = tourimagesDAO.getImagesByTourId(tourID);
        request.setAttribute("images", images);

        // Lấy ảnh đại diện
        Tourimages mainImage = tourimagesDAO.getMainImageByTourId(tourID);
        request.setAttribute("mainImage", mainImage);

        // Lấy trải nghiệm từ bảng TourExperience
        List<TourExperience> experiences = tourExperienceDAO.getExperiencesByTourId(tourID, 100);
        request.setAttribute("experiences", experiences);

        // Lấy dịch vụ bao gồm từ bảng TourIncluded + TourIncluded_Ref
        List<TourIncluded> includedList = tourIncludedDAO.getIncludedByTourId(tourID);
        request.setAttribute("includedList", includedList);

        // Lấy khuyến mãi từ bảng Promotions + TourPromotions
        Promotion promo = promotionDAO.getPromotionByTourId(tourID);
        request.setAttribute("promo", promo);

        // Forward sang chi_tiet.jsp (SỬA TÊN FILE Ở ĐÂY)
        request.getRequestDispatcher("/chi_tiet.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}