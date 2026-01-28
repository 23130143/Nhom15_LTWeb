package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.User;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.Cart;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.CheckoutService;

import java.io.IOException;
import java.util.Random;

@WebServlet(name = "CheckoutController", value = "/checkout")
public class CheckoutController extends HttpServlet {

    private CheckoutService checkoutService = new CheckoutService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null) {
            response.sendRedirect("Sign-in.jsp");
            return;
        }

        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null || cart.getItems().isEmpty()) {
            response.sendRedirect("index.jsp");
            return;
        }

        request.setAttribute("cart", cart);
        request.setAttribute("user", user);
        request.getRequestDispatcher("/ThanhToan.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Cart cart = (Cart) session.getAttribute("cart");

        if (user == null || cart == null) {
            response.sendRedirect("index.jsp");
            return;
        }

        try {
            String paymentMethod = request.getParameter("payment");
            if(paymentMethod == null) paymentMethod = "office";

            // Gọi Service để lưu
            boolean success = checkoutService.processCheckout(user, cart, paymentMethod);

            if (success) {
                // Tạo mã đơn hàng giả lập
                String orderCode = "DL" + (new Random().nextInt(900000) + 100000);
                double totalAmount = cart.getTotal();

                // Xóa giỏ hàng sau khi thành công
                session.removeAttribute("cart");

                request.setAttribute("orderCode", orderCode);
                request.setAttribute("totalAmount", totalAmount);

                if ("qr".equals(paymentMethod)) {
                    request.getRequestDispatcher("/ThanhToanMaQR.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("/PaymentOffice.jsp").forward(request, response);
                }
            } else {
                // Nếu thất bại -> In lỗi ra console server
                System.err.println(">>> LỖI: processCheckout trả về false. Kiểm tra lại OrderDAO.");
                response.sendRedirect("my-cart?error=order_failed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("my-cart?error=system");
        }
    }
}