package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.CartService;
import java.io.IOException;

@WebServlet(name = "RemoveItem", value = "/del-item")
public class RemoveItem extends HttpServlet {
    private CartService cartService = new CartService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int tourID = Integer.parseInt(request.getParameter("tourID"));

            // Gọi Service để xóa item và dọn dẹp session nếu giỏ trống
            cartService.removeTour(request.getSession(), tourID);

            response.sendRedirect("my-cart");
        } catch (Exception e) {
            response.sendRedirect("my-cart");
        }
    }
}