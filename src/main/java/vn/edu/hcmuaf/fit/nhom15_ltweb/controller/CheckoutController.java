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

// QUAN TRỌNG: Dòng này định nghĩa đường dẫn /checkout mà Cart.jsp đang gọi
@WebServlet(name = "CheckoutController", value = "/checkout")
public class CheckoutController extends HttpServlet {

    private CheckoutService checkoutService = new CheckoutService();

    // 1. Xử lý khi bấm nút "Thanh toán ngay" ở Giỏ hàng (Cart.jsp)
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        // Kiểm tra đăng nhập
        User user = (User) session.getAttribute("user");
        if (user == null) {
            // Chưa đăng nhập -> Đá về trang đăng nhập
            response.sendRedirect("Sign-in.jsp");
            return;
        }

        // Kiểm tra giỏ hàng
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null || cart.getItems().isEmpty()) {
            // Giỏ trống -> Đá về trang chủ
            response.sendRedirect("index.jsp");
            return;
        }

        // Đẩy dữ liệu qua trang ThanhToan.jsp để hiển thị
        request.setAttribute("cart", cart);
        request.setAttribute("user", user);
        request.getRequestDispatcher("/ThanhToan.jsp").forward(request, response);
    }

    // 2. Xử lý khi bấm nút "Xác nhận thanh toán" ở trang Thanh Toán (ThanhToan.jsp)
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
            // Lấy phương thức thanh toán từ form (qr hoặc office)
            String paymentMethod = request.getParameter("payment");
            if(paymentMethod == null) paymentMethod = "office";

            // Gọi Service để lưu đơn hàng vào Database
            boolean success = checkoutService.processCheckout(user, cart, paymentMethod);

            if (success) {
                // Tạo mã đơn giả lập để hiển thị (Hoặc lấy ID thật từ service trả về nếu bạn muốn)
                String orderCode = "DL" + (new Random().nextInt(900000) + 100000);
                double totalAmount = cart.getTotal();

                // Đặt hàng xong thì XÓA GIỎ HÀNG
                session.removeAttribute("cart");

                // Truyền dữ liệu sang trang kết quả
                request.setAttribute("orderCode", orderCode);
                request.setAttribute("totalAmount", totalAmount);

                // Điều hướng tùy theo phương thức thanh toán
                if ("qr".equals(paymentMethod)) {
                    request.getRequestDispatcher("/ThanhToanMaQR.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("/PaymentOffice.jsp").forward(request, response);
                }
            } else {
                // Lưu thất bại
                response.sendRedirect("my-cart?error=order_failed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("my-cart?error=system");
        }
    }
}