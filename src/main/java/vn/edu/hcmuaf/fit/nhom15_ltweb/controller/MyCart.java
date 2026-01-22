package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "MyCart", value = "/my-cart")
public class MyCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Forward dữ liệu sang Cart.jsp để hiển thị
        request.getRequestDispatcher("Cart.jsp").forward(request, response);
    }
}
