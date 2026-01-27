package vn.edu.hcmuaf.fit.nhom15_ltweb.service;

import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.OrderDAO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Booking;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Payments;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.User;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.Cart;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.CartItem;

import java.sql.Date;
import java.time.LocalDate;

public class CheckoutService {
    private OrderDAO orderDAO = new OrderDAO();

    public boolean processCheckout(User user, Cart cart, String paymentMethod) {
        if (cart == null || cart.getItems().isEmpty()) return false;

        try {
            Date today = Date.valueOf(LocalDate.now());

            // Duyệt từng tour trong giỏ để lưu
            for (CartItem item : cart.getItems()) {

                // 1. Tạo đối tượng Booking
                Booking booking = new Booking(
                        0,                          // bookingID (DB tự tăng)
                        user.getUserID(),
                        item.getTour().getTourID(),
                        today,
                        item.getFinalPrice(),
                        "PENDING",
                        item.getAdultQty(),
                        item.getChildQty(),
                        today,
                        "Đặt hàng qua Web"
                );

                // 2. Lưu Booking vào DB -> Lấy ID thật vừa sinh ra
                int newBookingID = orderDAO.insertBooking(booking);

                // --- KIỂM TRA LỖI BOOKING ---
                if (newBookingID == -1) {
                    System.err.println("❌ LỖI: Không lưu được Booking! Kiểm tra lại OrderDAO hoặc Database.");
                    return false; // Dừng ngay lập tức
                }

                // 3. Tạo và Lưu Payment
                Payments payment = new Payments(
                        newBookingID,
                        item.getFinalPrice(),
                        paymentMethod,
                        today,
                        "PENDING"
                );

                boolean paySuccess = orderDAO.insertPayment(payment);

                // --- KIỂM TRA LỖI PAYMENT ---
                if (!paySuccess) {
                    System.err.println("❌ LỖI: Không lưu được Payment cho BookingID: " + newBookingID);
                    return false;
                }
            }

            // Nếu chạy hết vòng lặp mà không bị return false -> Thành công
            return true;

        } catch (Exception e) {
            e.printStackTrace(); // In lỗi ra console nếu có Exception
            return false;
        }
    }
}