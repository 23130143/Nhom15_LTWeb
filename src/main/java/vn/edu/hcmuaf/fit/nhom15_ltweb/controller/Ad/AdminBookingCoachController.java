package vn.edu.hcmuaf.fit.nhom15_ltweb.controller.Ad;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.BookingCoach;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.CheckoutService;

import java.io.IOException;

@WebServlet(name = "AdminBookingCoachController ", value = "/admin/booking/coach")
public class AdminBookingCoachController extends HttpServlet {
    private CheckoutService service = new CheckoutService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookingCoach bookingCoach = new BookingCoach();
        int bookingID = Integer.parseInt(request.getParameter("bookingID"));
        String coachType = request.getParameter("coachType");
        String seatNumber = request.getParameter("seatNumber");
        String pickupLocation = request.getParameter("pickupLocation");
        String dropoffLocation = request.getParameter("dropoffLocation");
        bookingCoach.setBookingID(bookingID);
        bookingCoach.setCoachType(coachType);
        bookingCoach.setSeatNumber(seatNumber);
        bookingCoach.setPickupLocation(pickupLocation);
        bookingCoach.setDropoffLocation(dropoffLocation);
        service.addCoach(bookingCoach);

        response.sendRedirect(
                request.getContextPath() + "/admin/bookingdetail?id=" + bookingID
        );
    }
}