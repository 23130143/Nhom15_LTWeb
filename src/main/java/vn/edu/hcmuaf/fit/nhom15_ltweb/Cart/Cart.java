package vn.edu.hcmuaf.fit.nhom15_ltweb.Cart;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

import java.io.Serializable;
import java.util.HashMap;
import java.util.*;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Promotion;

public class Cart implements Serializable {
    private Map<Integer, CartItem> data;

    public Cart() {
        this.data = new HashMap<>();
    }

    public void addItem(Tour tour, int adultQty, int childQty) {
        CartItem item = data.get(tour.getTourID());
        double finalAdult = tour.getAdultPrice();
        double finalChild = tour.getChildPrice();
//        Promotion promo = tour.getPromotion();
//        if (promo!=null&& promo.getPromoType().equals("PERCENT")&&promo.getDiscountValue()>0) {
//            // 2. Nếu có rồi: Chỉ cần cộng dồn số lượng người lớn và trẻ em
//            finalAdult = tour.getAdultPrice() * (1 - promo.getDiscountValue() / 100);
//            finalChild = tour.getChildPrice() * (1 - promo.getDiscountValue() / 100);
//        } if (data.containsKey(tour.getTourID())) {
//
//            item.upAdultQuantity(adultQty);
//            item.upChildQuantity(childQty);
//
//            // Cập nhật lại đơn giá mới nhất
//            item.setAdultPrice(finalAdult);
//            item.setChildPrice(finalChild);
//        } else {
//            // Dùng tour.getTitle() làm name cho CartItem
//            data.put(tour.getTourID(), new CartItem(
//                    finalAdult, finalChild, childQty, adultQty, tour.getTitle(), tour
//            ));
//        }

    }
    public List<CartItem> getItems() {
        return new ArrayList<>(data.values());
    }



    public String format(double price) {
        java.text.NumberFormat formatter = java.text.NumberFormat.getInstance(new java.util.Locale("vi", "VN"));
        return formatter.format(price);
    }
    private CartItem get(int id) {
        return data.get(id);
    }

    public boolean updateItem(int tourID, int adultQty, int childQty) {
        if (get(tourID) == null) return false;
        CartItem item = data.get(tourID);
        item.setAdultQuantity(adultQty > 0 ? adultQty : 1);
        item.setChildQuantity(childQty >= 0 ? childQty : 1);
        return true;
    }
    public CartItem removeItem(int tourID) {
        if (get(tourID) == null) return null;
       return  data.remove(tourID);

    }
    public List<CartItem> removeAllItems() {
        ArrayList<CartItem> cartItems = new ArrayList<>(data.values());
        data.clear();
        return cartItems;
    }

    public int getTotalQuantity() {
        return data.size();
    }
    public double getTotal() {
        AtomicReference<Double> total = new AtomicReference<>((double) 0);
        getItems().forEach(item -> {
            total.updateAndGet(v -> v + item.getTotalItemPrice());
        });
        return total.get();
    }


}