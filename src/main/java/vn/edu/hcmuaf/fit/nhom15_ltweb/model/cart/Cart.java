package vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.text.NumberFormat;
import java.util.Locale;

public class Cart implements Serializable {
    private Map<Integer, CartItem> items = new HashMap<>();

    // Cập nhật hàm này nhận 4 tham số để khớp với Service
    public void addTour(Tour tour, int adult, int child, String imageURL) {
        CartItem item = items.get(tour.getTourID());
        if (item != null) {
            item.setAdultQty(item.getAdultQty() + adult);
            item.setChildQty(item.getChildQty() + child);
            item.setImageURL(imageURL);
        } else {
            items.put(tour.getTourID(), new CartItem(tour, adult, child, imageURL));
        }
    }

    public void updateTour(int tourID, int adult, int child) {
        CartItem item = items.get(tourID);
        if (item != null) {
            item.setAdultQty(adult);
            item.setChildQty(child);
        }
    }

    public void removeTour(int tourID) { items.remove(tourID); }
    public List<CartItem> getItems() { return new ArrayList<>(items.values()); }
    public int getTotalQuantity() {
        int total = 0;
        for (CartItem item : getItems()) total += item.getTotalPeople();
        return total;
    }
    public double getTotal() {
        double total = 0;
        for (CartItem item : getItems()) total += item.getOriginalPrice();
        return total;
    }
    public String format(double price) {
        return NumberFormat.getInstance(new Locale("vi", "VN")).format(price);
    }
}