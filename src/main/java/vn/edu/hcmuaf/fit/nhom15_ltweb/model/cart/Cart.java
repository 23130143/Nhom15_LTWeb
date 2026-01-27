package vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Cart implements Serializable {
    private Map<Integer, CartItem> items = new HashMap<>();

    public void addTour(Tour tour, int adult, int child) {
        if (items.containsKey(tour.getTourID())) {
            CartItem item = items.get(tour.getTourID());
            item.setAdultQty(item.getAdultQty() + adult);
            item.setChildQty(item.getChildQty() + child);
        } else {
            items.put(tour.getTourID(), new CartItem(tour, adult, child));
        }
    }

    public void add(CartItem item) {
        int tourID = item.getTour().getTourID();

        if (items.containsKey(tourID)) {
            CartItem existingItem = items.get(tourID);
            existingItem.setAdultQty(
                    existingItem.getAdultQty() + item.getAdultQty()
            );
            existingItem.setChildQty(
                    existingItem.getChildQty() + item.getChildQty()
            );
        } else {
            items.put(tourID, item);
        }


    }

    public void updateTour(int tourID, int adult, int child) {
        if (items.containsKey(tourID)) {
            CartItem item = items.get(tourID);
            item.setAdultQty(adult);
            item.setChildQty(child);
        }
    }

    public void removeTour(int tourID) {
        items.remove(tourID);
    }

    public List<CartItem> getItems() {
        return new ArrayList<>(items.values());
    }

    public int getTotalQuantity() {
        int total = 0;
        for (CartItem item : getItems()) {
            total += item.getTotalPeople();
        }
        return total;
    }

    public double getTotal() {
        double total = 0;
        for (CartItem item : getItems()) {
            total += item.getOriginalPrice();
        }
        return total;
    }

    public String format(double price) {
        java.text.NumberFormat formatter =
                java.text.NumberFormat.getInstance(new java.util.Locale("vi", "VN"));
        return formatter.format(price);
    }
}
