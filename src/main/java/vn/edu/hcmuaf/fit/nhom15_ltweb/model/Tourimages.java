package vn.edu.hcmuaf.fit.nhom15_ltweb.model;

public class Tourimages {
    private int imageID;
    private int tourID;
    private String imageURL;

    public Tourimages() {
    }

    public Tourimages(int imageID, int tourID, String imageURL) {
        this.imageID = imageID;
        this.tourID = tourID;
        this.imageURL = imageURL;
    }

    public int getImageID() {
        return imageID;
    }

    public void setImageID(int imageID) {
        this.imageID = imageID;
    }

    public int getTourID() {
        return tourID;
    }

    public void setTourID(int tourID) {
        this.tourID = tourID;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }
}
