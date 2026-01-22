package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;


import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.CartService;
import java.io.IOException;

@WebServlet(name = "AddCart", value = "/add-cart")
public class AddCart extends HttpServlet {
    private CartService cartService = new CartService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // 1. Lấy thông tin từ request
            int tourID = Integer.parseInt(request.getParameter("tourID"));
            int adultQty = Integer.parseInt(request.getParameter("adultQty"));
            int childQty = Integer.parseInt(request.getParameter("childQty"));

            // 2. Gọi Service xử lý logic (bao gồm kiểm tra availableCapacity và gán ảnh)
            boolean isAdded = cartService.addTour(request.getSession(), tourID, adultQty, childQty);

            if (isAdded) {
                response.sendRedirect("my-cart");
            } else {
                // Nếu vượt quá sức chứa, quay lại trang trước đó
                String referer = request.getHeader("Referer");
                response.sendRedirect(referer != null ? referer + "?error=full" : "index.jsp");
            }
        } catch (NumberFormatException e) {
            response.sendRedirect("index.jsp");
        }
    }
}