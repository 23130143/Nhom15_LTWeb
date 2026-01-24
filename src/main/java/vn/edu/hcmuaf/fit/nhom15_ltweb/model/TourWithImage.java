package vn.edu.hcmuaf.fit.nhom15_ltweb.model;

public class TourWithImage {
    private Tour tour;
    private Tourimages image;

    public TourWithImage(Tour tour, Tourimages image) {
        this.tour = tour;
        this.image = image;
    }
    public Tour getTour() { return tour; }
    public void setTour(Tour tour) { this.tour = tour; }

    public Tourimages getImage() { return image; }
    public void setImage(Tourimages image) { this.image = image; }
}