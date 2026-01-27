package vn.edu.hcmuaf.fit.nhom15_ltweb.service;

import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.TourPromotionDao;

public class TourPromotionService {
    private TourPromotionDao dao = new TourPromotionDao();

    public void insert(int tourId, int promotionId) {
        dao.insert(tourId, promotionId);
    }
}
