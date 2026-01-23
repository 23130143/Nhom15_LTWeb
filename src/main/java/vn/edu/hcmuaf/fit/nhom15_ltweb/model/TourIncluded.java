package vn.edu.hcmuaf.fit.nhom15_ltweb.model;

import java.io.Serializable;

public class TourIncluded implements Serializable {
    private int tourIncludedID;
    private String tourIncludedTitle;
    private String tourIncludedInfo;

    public TourIncluded() {}

    public int getTourIncludedID() { return tourIncludedID; }
    public void setTourIncludedID(int tourIncludedID) { this.tourIncludedID = tourIncludedID; }

    public String getTourIncludedTitle() { return tourIncludedTitle; }
    public void setTourIncludedTitle(String tourIncludedTitle) { this.tourIncludedTitle = tourIncludedTitle; }

    public String getTourIncludedInfo() { return tourIncludedInfo; }
    public void setTourIncludedInfo(String tourIncludedInfo) { this.tourIncludedInfo = tourIncludedInfo; }
}