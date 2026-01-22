package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.CartService;
import java.io.IOException;

@WebServlet(name = "UpdateItem", value = "/update-item")
public class UpdateItem extends HttpServlet {
    private CartService cartService = new CartService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Lấy tourID và số lượng mới từ form
            int tourID = Integer.parseInt(request.getParameter("tourID"));
            int adultQty = Integer.parseInt(request.getParameter("adultQty"));
            int childQty = Integer.parseInt(request.getParameter("childQty"));

            // Gọi Service để cập nhật dữ liệu trong Session
            cartService.updateTour(request.getSession(), tourID, adultQty, childQty);

            response.sendRedirect("my-cart");
        } catch (Exception e) {
            response.sendRedirect("my-cart?error=update_failed");
        }
    }
}