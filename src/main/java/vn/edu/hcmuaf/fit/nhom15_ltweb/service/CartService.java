package vn.edu.hcmuaf.fit.nhom15_ltweb.service;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.Cart;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.CartItem;

public class CartService {
    //    private TourDAO tourDAO = new TourDAO();
//
//    // Thay thế MyCart: Lấy giỏ hàng từ Session hoặc tạo mới
//    public Cart getCart(HttpSession session) {
//        Cart cart = (Cart) session.getAttribute("cart");
//        if (cart == null) {
//            cart = new Cart();
//            session.setAttribute("cart", cart);
//        }
//        return cart;
//    }
//
//    // Thay thế AddCart: Thêm Tour kèm kiểm tra sức chứa
//    public boolean addTour(HttpSession session, int tourID, int adultQty, int childQty) {
//        Tour tour = tourDAO.getTourById(tourID);
//
//        if (tour != null) {
//            // Kiểm tra availableCapacity của tour
//            if ((adultQty + childQty) <= tour.getAvailableCapacity()) {
//                Cart cart = getCart(session);
//                cart.addItem(tour, adultQty, childQty); //
//                return true;
//            }
//        }
//        return false;
//    }
//
//    // Thay thế UpdateItem: Cập nhật số lượng NL/TE
//    public void updateTour(HttpSession session, int tourID, int adultQty, int childQty) {
//        Cart cart = getCart(session);
//        if (cart != null) {
//            cart.updateItem(tourID, adultQty, childQty); //
//        }
//    }
//
//    // Thay thế RemoveItem: Xóa Tour khỏi giỏ
//    public void removeTour(HttpSession session, int tourID) {
//        Cart cart = getCart(session);
//        if (cart != null) {
//            cart.removeItem(tourID); //
//            if (cart.getItems().isEmpty()) {
//                session.removeAttribute("cart");
//            }
//        }
//    }
    private PromotionService promoService = new PromotionService();

    public double getTotalPrice(Cart cart) {
        double total = 0;
        for (CartItem item : cart.getItems()) {
            double raw = item.getOriginalPrice();
            double finalPrice = promoService.applyPromotion(
                    item.getTour().getTourID(), raw
            );
            total += finalPrice;
        }
        return total;
    }
}