package vn.edu.hcmuaf.fit.nhom15_ltweb.controller.Ad;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.BookingFlight;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.CheckoutService;

import java.io.IOException;
import java.time.LocalDateTime;

@WebServlet(name = "AdminBookingFlightController ", value = "/admin/booking/flight")
public class AdminBookingFlightController extends HttpServlet {
    private CheckoutService service = new CheckoutService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookingFlight f = new BookingFlight();
        f.setBookingID(Integer.parseInt(request.getParameter("bookingID")));
        f.setAirline(request.getParameter("airline"));
        f.setFlightCode(request.getParameter("flightCode"));
        f.setDepartDate(LocalDateTime.parse(request.getParameter("departDate")));
        f.setArrivalDate(LocalDateTime.parse(request.getParameter("arrivalDate")));
        f.setNumberSeat(request.getParameter("numberSeat"));
        f.setQrCode(request.getParameter("qrCode"));

        service.addFlight(f);
        response.sendRedirect(request.getHeader("Referer"));
    }
}