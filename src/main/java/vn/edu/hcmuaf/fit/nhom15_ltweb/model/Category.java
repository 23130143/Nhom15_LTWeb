package vn.edu.hcmuaf.fit.nhom15_ltweb.model;

public class Category {
    private int categoriesID;
    private String categoriesName;

    public Category() {}

    public Category(int categoriesID, String categoriesName) {
        this.categoriesID = categoriesID;
        this.categoriesName = categoriesName;
    }

    public int getCategoriesID() { return categoriesID; }
    public void setCategoriesID(int categoriesID) { this.categoriesID = categoriesID; }

    public String getCategoriesName() { return categoriesName; }
    public void setCategoriesName(String categoriesName) { this.categoriesName = categoriesName; }
}