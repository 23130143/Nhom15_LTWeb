package vn.edu.hcmuaf.fit.nhom15_ltweb.service;

import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.TourDAO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.TourimagesDAO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tourimages;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.Cart;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.CartItem;

public class CartService {
    private TourDAO tourDAO = new TourDAO();
    private TourimagesDAO tourImagesDAO = new TourimagesDAO();

    // 1. HÀM QUẢN LÝ SESSION (Đây là chỗ xử lý Session bạn hỏi)
    public Cart getCart(HttpSession session) {
        // Lấy giỏ hàng từ Session ra
        Cart cart = (Cart) session.getAttribute("cart");

        // Nếu trong Session chưa có giỏ (lần đầu mua), thì tạo mới và nhét vào Session
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
        return cart;
    }

    // 2. HÀM THÊM VÀO GIỎ (Đã tích hợp lấy ảnh và check sức chứa)
    public boolean addTour(HttpSession session, int tourID, int adultQty, int childQty) {
        Tour tour = tourDAO.getTourById(tourID);
        if (tour == null) return false;

        // Lấy ảnh đại diện (để tránh lỗi ảnh bị null)
        Tourimages imgObj = tourImagesDAO.getMainImageByTourId(tourID);
        String imgURL = (imgObj != null) ? imgObj.getImageURL() : "IMAGE/asset/images/no-image.jpg";

        // Lấy giỏ hàng từ Session (thông qua hàm ở trên)
        Cart cart = getCart(session);

        // Kiểm tra sức chứa
        int currentQty = 0;
        CartItem existingItem = cart.getItems().stream()
                .filter(item -> item.getTour().getTourID() == tourID)
                .findFirst().orElse(null);

        if (existingItem != null) {
            currentQty = existingItem.getTotalPeople();
        }

        if ((currentQty + adultQty + childQty) <= tour.getAvailableCapacity()) {
            // Thêm vào giỏ
            cart.addTour(tour, adultQty, childQty, imgURL);
            return true;
        }

        return false; // Hết chỗ
    }

    // Các hàm update/remove gọi lại getCart(session) tương tự...
    public void removeTour(HttpSession session, int tourID) {
        Cart cart = getCart(session);
        cart.removeTour(tourID);
    }

    public void updateTour(HttpSession session, int tourID, int adultQty, int childQty) {
        Cart cart = getCart(session);
        cart.updateTour(tourID, adultQty, childQty);
    }
}