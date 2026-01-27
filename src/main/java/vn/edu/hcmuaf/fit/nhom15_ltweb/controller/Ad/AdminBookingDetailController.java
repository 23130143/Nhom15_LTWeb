package vn.edu.hcmuaf.fit.nhom15_ltweb.controller.Ad;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.CheckoutService;

import java.io.IOException;

@WebServlet(name = "AdminBookingDetailController", value = "/admin/bookingdetail")
public class AdminBookingDetailController extends HttpServlet {
    private CheckoutService service = new CheckoutService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("booking", service.getBookingDetail(id));
        request.getRequestDispatcher("/Admin_BookingDetail.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}