package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Category;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Banner;
import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeController", value = {"/home", ""})
public class HomeController extends HttpServlet {

    private TourDAO tourDAO = new TourDAO();
    private CategoryDAO categoryDAO = new CategoryDAO();
    private TourimagesDAO tourimagesDAO = new TourimagesDAO();
    private TourExperienceDAO tourExperienceDAO = new TourExperienceDAO();
    private PromotionDAO promotionDAO = new PromotionDAO();
    private BannerDAO bannerDAO = new BannerDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Banner banner = bannerDAO.getLatestBanner();
        request.setAttribute("banner", banner);

        List<Tour> topTours = tourDAO.getTopSellingTours(6);
        request.setAttribute("topTours", topTours);

        List<Tour> europeTours = tourDAO.getTopSellingToursByCategory(1, 6);
        request.setAttribute("europeTours", europeTours);

        List<Tour> asiaTours = tourDAO.getTopSellingToursByCategory(2, 6);
        request.setAttribute("asiaTours", asiaTours);

        List<Category> categories = categoryDAO.getAllCategories();
        request.setAttribute("categories", categories);

        request.setAttribute("tourimagesDAO", tourimagesDAO);
        request.setAttribute("tourExperienceDAO", tourExperienceDAO);
        request.setAttribute("promotionDAO", promotionDAO);

        // Luôn forward về index.jsp (JSP tự kiểm tra session)
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}