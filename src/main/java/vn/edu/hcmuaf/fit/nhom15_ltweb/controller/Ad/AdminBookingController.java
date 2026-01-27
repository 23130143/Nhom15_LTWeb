package vn.edu.hcmuaf.fit.nhom15_ltweb.controller.Ad;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Booking;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.User;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.CheckoutService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminBookingController", value = "/admin/bookings")
public class AdminBookingController extends HttpServlet {
    private CheckoutService bookingService = new CheckoutService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String keyword = request.getParameter("keyword");

        List<Booking> bookings;

        if (keyword != null && !keyword.trim().isEmpty()) {
            bookings = bookingService.searchBooking(keyword);
        } else {
            bookings = bookingService.getAllBookingForAdmin();
        }

        request.setAttribute("bookings", bookings);
        request.setAttribute("keyword", keyword);

        request.getRequestDispatcher("/Admin_Booking.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}