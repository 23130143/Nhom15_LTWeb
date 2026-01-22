package vn.edu.hcmuaf.fit.nhom15_ltweb.Cart;

import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;

public class CartItem  implements  java.io.Serializable {
    private Tour tour;
    private String name;
    private int adultQuantity;
    private int childQuantity;
    private double adultPrice;
    private double childPrice;
    public CartItem(double adultPrice,  double childPrice ,int childQuantity, int adultQuantity, String name, Tour tour) {
        this.adultPrice = adultPrice;
        this.childQuantity = childQuantity;
        this.adultQuantity = adultQuantity;
        this.name = name;
        this.tour = tour;
        this.childPrice = childPrice;
    }
public CartItem() {}
    public double getChildPrice() {
        return childPrice;
    }

    public void setChildPrice(double childPrice) {
        this.childPrice = childPrice;
    }

    public Tour getTour() {
        return tour;
    }

    public void setTour(Tour tour) {
        this.tour = tour;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAdultQuantity() {
        return adultQuantity;
    }

    public void setAdultQuantity(int adultQuantity) {
        this.adultQuantity = adultQuantity;
    }

    public int getChildQuantity() {
        return childQuantity;
    }

    public void setChildQuantity(int childQuantity) {
        this.childQuantity = childQuantity;
    }

    public double getAdultPrice() {
        return adultPrice;
    }

    public void setAdultPrice(double adultPrice) {
        this.adultPrice = adultPrice;
    }
    // Tính tổng tiền cho tour này: (NL * giá NL) + (TE * giá TE)
    public double getTotalItemPrice() {
        return (this.adultQuantity * this.adultPrice) + (this.childQuantity * this.childPrice);
    }
    public String format(double price) {
        java.text.NumberFormat nf = java.text.NumberFormat.getInstance(new java.util.Locale("vi", "VN"));
        return nf.format(price);
    }
    public void upAdultQuantity(int quantity) {
        this.adultQuantity += quantity;
    }

    public void upChildQuantity(int quantity) {
        this.childQuantity += quantity;
    }
}
