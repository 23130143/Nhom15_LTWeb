package vn.edu.hcmuaf.fit.nhom15_ltweb.model;

import java.io.Serializable;
import java.sql.Date;

public class Banner implements Serializable {
    private int bannerID;
    private String title;
    private String imgBanner;
    private Date createdDate;

    public Banner() {}

    public int getBannerID() { return bannerID; }
    public void setBannerID(int bannerID) { this.bannerID = bannerID; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getImgBanner() { return imgBanner; }
    public void setImgBanner(String imgBanner) { this.imgBanner = imgBanner; }

    public Date getCreatedDate() { return createdDate; }
    public void setCreatedDate(Date createdDate) { this.createdDate = createdDate; }
}