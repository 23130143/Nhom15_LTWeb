package vn.edu.hcmuaf.fit.nhom15_ltweb.controller.Ad;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Promotion;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.PromotionService;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.TourService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminKhuyenMaiController", value = "/admin/promotions")
public class AdminKhuyenMaiController extends HttpServlet {
    private PromotionService promotionService = new PromotionService();
    private TourService tourService = new TourService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String keyword = request.getParameter("keyword");

        List<Promotion> promotions;

        if (keyword != null && !keyword.trim().isEmpty()) {
            promotions = promotionService.searchPromotionByName(keyword);
        } else {
            promotions = promotionService.getAllPromotion();
        }

        // ⚠️ LUÔN cần cho modal "Gắn tour"
        List<Tour> tours = tourService.getAllTours_l();

        request.setAttribute("promotions", promotions);
        request.setAttribute("tours", tours);
        request.setAttribute("keyword", keyword);

        request.getRequestDispatcher("/Admin_KhuyenMai.jsp")
                .forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}