package vn.edu.hcmuaf.fit.nhom15_ltweb.controller.Ad;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.TourPromotionService;

import java.io.IOException;

@WebServlet(name = "LinkTourController", value = "/admin/link-tour")
public class LinkTourController extends HttpServlet {
    private TourPromotionService tourPromotionService = new TourPromotionService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int PromotionId = Integer.parseInt(request.getParameter("promotionId"));
        String[] tourIds = request.getParameter("tourIds").split(",");

        if (tourIds != null) {
            for (String tourID : tourIds) {
                tourPromotionService.insert(Integer.parseInt(tourID), PromotionId);
            }
        }
        response.sendRedirect(request.getContextPath() + "/admin/promotions");
    }
}