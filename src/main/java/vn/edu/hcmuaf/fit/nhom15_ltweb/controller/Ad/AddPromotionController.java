package vn.edu.hcmuaf.fit.nhom15_ltweb.controller.Ad;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Promotion;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.PromotionService;

import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "AddPromotionController", value = "/admin/addpromotion")
public class AddPromotionController extends HttpServlet {
    private PromotionService promotionService = new PromotionService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/Add_Promotion.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        Promotion promotion = new Promotion();
        promotion.setPromoName(request.getParameter("promoName"));
        promotion.setPromoType(request.getParameter("promoType"));
        promotion.setDiscountValue(Double.parseDouble(request.getParameter("discount")));
        promotion.setStartDate(Date.valueOf(request.getParameter("startDate")));
        promotion.setEndDate(Date.valueOf(request.getParameter("endDate")));
        if (promotion.getEndDate().before(promotion.getStartDate())) {
            request.setAttribute("error", "Ngày kết thúc không được trước ngày bắt đầu");
            request.getRequestDispatcher("/admin/addpromotion").forward(request, response);
            return;
        }
        promotionService.insertPromotion(promotion);

        response.sendRedirect(request.getContextPath() + "/admin/promotions");
    }
}