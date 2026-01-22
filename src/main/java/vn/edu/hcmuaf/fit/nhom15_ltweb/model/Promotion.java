package vn.edu.hcmuaf.fit.nhom15_ltweb.model;




import java.io.Serializable;
import java.sql.Date;

public class Promotion implements Serializable {
    private int promoID;         // int
    private int imageID;         // int
    private String promoName;    // varchar(100)
    private String promoType;    // varchar(20) - để check "PERCENT"
    private double discountValue;// decimal(10,2)
    private Date startDate;      // date
    private Date endDate;        // date
    private boolean active;      // tinyint(1)

    public Promotion() {}

    // Getter và Setter

    public Promotion(boolean active, Date endDate, Date startDate, double discountValue, String promoType, String promoName, int imageID, int promoID) {
        this.active = active;
        this.endDate = endDate;
        this.startDate = startDate;
        this.discountValue = discountValue;
        this.promoType = promoType;
        this.promoName = promoName;
        this.imageID = imageID;
        this.promoID = promoID;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public double getDiscountValue() {
        return discountValue;
    }

    public void setDiscountValue(double discountValue) {
        this.discountValue = discountValue;
    }

    public String getPromoType() {
        return promoType;
    }

    public void setPromoType(String promoType) {
        this.promoType = promoType;
    }

    public String getPromoName() {
        return promoName;
    }

    public void setPromoName(String promoName) {
        this.promoName = promoName;
    }

    public int getImageID() {
        return imageID;
    }

    public void setImageID(int imageID) {
        this.imageID = imageID;
    }

    public int getPromoID() {
        return promoID;
    }

    public void setPromoID(int promoID) {
        this.promoID = promoID;
    }

    // ... Bạn hãy tạo tiếp các Getter/Setter còn lại bằng IntelliJ (Alt+Insert)
}