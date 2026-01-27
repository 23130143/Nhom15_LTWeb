package vn.edu.hcmuaf.fit.nhom15_ltweb.controller.Ad;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.BookingDetailDTO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.CheckoutService;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.MailService;

import java.io.IOException;

@WebServlet(name = "AdminBookingSendMailController", value = "/admin/booking/send-mail")
public class AdminBookingSendMailController extends HttpServlet {
    private CheckoutService bookingService = new CheckoutService();
    private MailService mailService = new MailService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bookingID = Integer.parseInt(request.getParameter("id"));

        BookingDetailDTO booking = bookingService.getBookingDetail(bookingID);

        mailService.sendBookingInfo(
                booking.getEmail(),
                booking
        );

        response.sendRedirect(
                request.getContextPath() + "/admin/bookingdetail?id=" + bookingID
        );
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}