package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.CartService;
import java.io.IOException;

// QUAN TRỌNG: Đổi đường dẫn thành /cart-handler để dùng chung cho mọi nút
@WebServlet(name = "AddCart", value = "/cart-handler")
public class AddCart extends HttpServlet {

    private CartService cartService = new CartService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy hành động (add, update, remove) từ form gửi lên
        String action = request.getParameter("action");
        if (action == null) action = "";

        HttpSession session = request.getSession();

        try {
            switch (action) {
                // ==================== TRƯỜNG HỢP 1: THÊM VÀO GIỎ ====================
                case "add":
                    int tourID = Integer.parseInt(request.getParameter("tourID"));

                    // Lấy số lượng (Xử lý fallback phòng khi form dùng tên cũ)
                    String aRaw = request.getParameter("adultQty");
                    String cRaw = request.getParameter("childQty");
                    if (aRaw == null) aRaw = request.getParameter("adult");
                    if (cRaw == null) cRaw = request.getParameter("child");

                    int adultQty = (aRaw != null && !aRaw.isEmpty()) ? Integer.parseInt(aRaw) : 1;
                    int childQty = (cRaw != null && !cRaw.isEmpty()) ? Integer.parseInt(cRaw) : 0;

                    // Gọi Service thêm
                    boolean isAdded = cartService.addTour(session, tourID, adultQty, childQty);

                    if (isAdded) {
                        response.sendRedirect("my-cart"); // Thành công -> Về giỏ hàng
                    } else {
                        response.sendRedirect("tour-detail?id=" + tourID + "&error=full"); // Lỗi -> Về chi tiết
                    }
                    break;

                // ==================== TRƯỜNG HỢP 2: CẬP NHẬT SỐ LƯỢNG (+ / -) ====================
                case "update":
                    int uTourID = Integer.parseInt(request.getParameter("tourID"));
                    int uAdult = Integer.parseInt(request.getParameter("adultQty"));
                    int uChild = Integer.parseInt(request.getParameter("childQty"));

                    // Gọi Service cập nhật
                    cartService.updateTour(session, uTourID, uAdult, uChild);

                    // Quay lại trang giỏ hàng ngay lập tức
                    response.sendRedirect("my-cart");
                    break;

                // ==================== TRƯỜNG HỢP 3: XÓA KHỎI GIỎ ====================
                case "remove":
                    int rTourID = Integer.parseInt(request.getParameter("tourID"));

                    // Gọi Service xóa
                    cartService.removeTour(session, rTourID);

                    // Quay lại trang giỏ hàng
                    response.sendRedirect("my-cart");
                    break;

                // ==================== MẶC ĐỊNH ====================
                default:
                    response.sendRedirect("my-cart");
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Nếu có lỗi hệ thống, quay về trang chủ hoặc giỏ hàng
            response.sendRedirect("my-cart");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}