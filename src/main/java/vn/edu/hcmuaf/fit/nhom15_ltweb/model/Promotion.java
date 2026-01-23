package vn.edu.hcmuaf.fit.nhom15_ltweb.model;


import java.io.Serializable;
import java.sql.Date;

public class Promotion implements Serializable {
    private int promoID;
    private int imageID;
    private String promoName;
    private String promoType;
    private double discountValue;
    private Date startDate;
    private Date endDate;
    private boolean active;

    public Promotion() {
    }

    // ========== GETTER & SETTER ==========

    public int getPromoID() {
        return promoID;
    }

    public void setPromoID(int promoID) {
        this.promoID = promoID;
    }

    public int getImageID() {
        return imageID;
    }

    public void setImageID(int imageID) {
        this.imageID = imageID;
    }

    public String getPromoName() {
        return promoName;
    }

    public void setPromoName(String promoName) {
        this.promoName = promoName;
    }

    public String getPromoType() {
        return promoType;
    }

    public void setPromoType(String promoType) {
        this.promoType = promoType;
    }

    public double getDiscountValue() {
        return discountValue;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public void setDiscountValue(double discountValue) {
        this.discountValue = discountValue;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    // ========== METHOD TÍNH GIÁ ==========

    // Tính giá sau khuyến mãi
    public double calculateNewPrice(double originalPrice) {
        if ("PERCENT".equalsIgnoreCase(this.promoType)) {
            // Giảm theo %: giá mới = giá gốc * (1 - discount/100)
            return originalPrice * (1 - this.discountValue / 100);
        } else {
            // Giảm trực tiếp (FIXED): giá mới = giá gốc - discount
            return originalPrice - this.discountValue;
        }
    }

    // Lấy label khuyến mãi
    public String getLabel() {
        return (this.promoName != null && !this.promoName.isEmpty()) ? this.promoName : "Khuyến mãi";
    }
}