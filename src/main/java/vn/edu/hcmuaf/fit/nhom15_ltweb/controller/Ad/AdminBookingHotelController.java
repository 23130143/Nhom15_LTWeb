package vn.edu.hcmuaf.fit.nhom15_ltweb.controller.Ad;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.BookingHotel;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.CheckoutService;

import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "AdminBookingHotelController ", value = "/admin/booking/hotel")
public class AdminBookingHotelController extends HttpServlet {
    private CheckoutService service = new CheckoutService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookingHotel bookingHotel = new BookingHotel();
        int bookingID = Integer.parseInt(request.getParameter("bookingID"));
        String hotelName = request.getParameter("hotelName");
        String roomType = request.getParameter("roomType");
        Date checkIn = Date.valueOf(request.getParameter("checkIn"));
        Date checkOut = Date.valueOf(request.getParameter("checkOut"));
        bookingHotel.setBookingID(bookingID);
        bookingHotel.setHotelName(hotelName);
        bookingHotel.setRoomType(roomType);
        bookingHotel.setCheckIn(checkIn);
        bookingHotel.setCheckOut(checkOut);
        service.addHotel(bookingHotel);

        response.sendRedirect(
                request.getContextPath() + "/admin/bookingdetail?id=" + bookingID
        );
    }
}