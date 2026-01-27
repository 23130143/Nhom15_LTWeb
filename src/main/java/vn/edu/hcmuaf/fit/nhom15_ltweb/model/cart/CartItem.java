package vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Promotion;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;
import java.text.NumberFormat;
import java.util.Locale;

public class CartItem {
    private Tour tour;
    private int adultQty;
    private int childQty;
    private Promotion promotion;
    private String imageURL; // Biến ảnh

    public CartItem() {}

    // Constructor nhận ảnh
    public CartItem(Tour tour, int adultQty, int childQty, String imageURL) {
        this.tour = tour;
        this.adultQty = adultQty;
        this.childQty = childQty;
        this.imageURL = imageURL;
    }

    public int getTotalPeople() { return adultQty + childQty; }

    // Getter Setter ảnh
    public String getImageURL() { return imageURL; }
    public void setImageURL(String imageURL) { this.imageURL = imageURL; }

    public Tour getTour() { return tour; }
    public void setTour(Tour tour) { this.tour = tour; }
    public int getAdultQty() { return adultQty; }
    public void setAdultQty(int adultQty) { this.adultQty = adultQty; }
    public int getChildQty() { return childQty; }
    public void setChildQty(int childQty) { this.childQty = childQty; }
    public void setPromotion(Promotion promotion) { this.promotion = promotion; }

    public double getOriginalPrice() {
        return (adultQty * tour.getAdultPrice()) + (childQty * tour.getChildPrice());
    }

    public double getDiscountAmount() {
        if (promotion == null) return 0;
        double total = getOriginalPrice();
        if ("percent".equalsIgnoreCase(promotion.getPromoType())) {
            return total * promotion.getDiscountValue() / 100.0;
        }
        return 0;
    }
    public double getFinalPrice() { return Math.max(0, getOriginalPrice() - getDiscountAmount()); }

    public String format(double price) {
        return NumberFormat.getInstance(new Locale("vi", "VN")).format(price);
    }
}