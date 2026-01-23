package vn.edu.hcmuaf.fit.nhom15_ltweb.model;
import java.io.Serializable;
public class TourExperience implements Serializable {
    private int tourExperienceID;
    private int tourID;
    private String tourExperienceTitle;
    private String tourExperienceInfo;

    public TourExperience() {}

    public int getTourExperienceID() { return tourExperienceID; }
    public void setTourExperienceID(int tourExperienceID) { this.tourExperienceID = tourExperienceID; }

    public int getTourID() { return tourID; }
    public void setTourID(int tourID) { this.tourID = tourID; }

    public String getTourExperienceTitle() { return tourExperienceTitle; }
    public void setTourExperienceTitle(String tourExperienceTitle) { this.tourExperienceTitle = tourExperienceTitle; }

    public String getTourExperienceInfo() { return tourExperienceInfo; }
    public void setTourExperienceInfo(String tourExperienceInfo) { this.tourExperienceInfo = tourExperienceInfo; }
}