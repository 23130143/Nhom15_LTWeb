package vn.edu.hcmuaf.fit.nhom15_ltweb.service;

import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.PromotionDAO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Promotion;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;

import java.util.List;

public class PromotionService {
    private PromotionDAO dao = new PromotionDAO();

    public double applyPromotion(int tourID, double rawPrice) {
        Promotion promo = dao.getPromotionByTourId(tourID);
        if (promo == null) return rawPrice;

        switch (promo.getPromoType()) {
            case "percent":
                return rawPrice * (1 - promo.getDiscountValue() / 100);
            case "fixed":
                return Math.max(0, rawPrice - promo.getDiscountValue());
            default:
                return rawPrice;
        }
    }

    public List<Promotion> getAllPromotion() {
        List<Promotion> list = dao.getAllPromotion();
        return list;
    }

    public void insertPromotion(Promotion promotion) {
        dao.insertPromotion(promotion);
    }

    public List<Promotion> searchPromotionByName(String keyword) {
        List<Promotion> list = dao.searchByName(keyword);
        return list;
    }

    public List<Tour> getAllToursForLink() {
        List<Tour> list = dao.getAllToursForLink();
        return list;
    }
}
