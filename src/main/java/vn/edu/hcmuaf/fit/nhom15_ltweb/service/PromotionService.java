package vn.edu.hcmuaf.fit.nhom15_ltweb.service;

import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.PromotionDAO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Promotion;

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
   
}
