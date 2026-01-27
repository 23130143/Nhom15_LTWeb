package vn.edu.hcmuaf.fit.nhom15_ltweb.controller.Ad;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.User;

import java.io.IOException;
@WebFilter(filterName = "AdminAuthorizationFilter", urlPatterns = {"/admin/*"})
public class AdminAuthorizationFilter implements Filter {
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        HttpSession session = req.getSession(false); // Lấy session hiện tại, không tạo mới

        boolean isLoggedIn = (session != null && session.getAttribute("user") != null);

        if (isLoggedIn) {
            User user = (User) session.getAttribute("user");
            // Kiểm tra role: giả sử trong Database role admin lưu là "admin" hoặc "ADM"
            // Bạn cần check đúng chuỗi string mà DB bạn đang lưu
            if ("admin".equals(user.getRole())) {
                // Hợp lệ -> Cho đi tiếp vào các Controller (Dashboard, Users, Tour...)
                chain.doFilter(request, response);
                return;
            }
        }

        // Nếu code chạy xuống đây nghĩa là chưa login hoặc không phải admin
        // Lưu lại trang hiện tại để login xong quay lại (nếu muốn) hoặc chỉ cần đẩy về login
        res.sendRedirect(req.getContextPath() + "/login");
    }

    @Override
    public void destroy() {
    }
}
