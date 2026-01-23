package vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Promotion;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;

public class CartItem {
    private Tour tour;
    private int adultQty;
    private int childQty;
    private Promotion promotion;
    private String imageURL;

    public CartItem() {
    }

    public CartItem(Tour tour, int adultQty, int childQty) {
        this.tour = tour;
        this.adultQty = adultQty;
        this.childQty = childQty;
    }

    public int getTotalPeople() {
        return adultQty + childQty;
    }

    // getter setter

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public Tour getTour() {
        return tour;
    }

    public void setTour(Tour tour) {
        this.tour = tour;
    }

    public int getAdultQty() {
        return adultQty;
    }

    public void setAdultQty(int adultQty) {
        this.adultQty = adultQty;
    }

    public int getChildQty() {
        return childQty;
    }

    public void setChildQty(int childQty) {
        this.childQty = childQty;
    }

    public double getOriginalPrice() {
        return adultQty * tour.getAdultPrice()
                + childQty * tour.getChildPrice();
    }

    public double getDiscountAmount() {
        if (promotion == null) return 0;

        double total = getOriginalPrice();

        switch (promotion.getPromoType()) {
            case "percent":
                return total * promotion.getDiscountValue() / 100;
            case "fixed":
                return promotion.getDiscountValue();
            default:
                return 0;
        }
    }

    public double getFinalPrice() {
        return Math.max(0, getOriginalPrice() - getDiscountAmount());
    }

    public Promotion getPromotion() {
        return promotion;
    }

    public void setPromotion(Promotion promotion) {
        this.promotion = promotion;
    }

    public String format(double price) {
        java.text.NumberFormat formatter =
                java.text.NumberFormat.getInstance(new java.util.Locale("vi", "VN"));
        return formatter.format(price);
    }
}
