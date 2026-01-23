package vn.edu.hcmuaf.fit.nhom15_ltweb.service;

import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.TourDAO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;

import java.util.List;

public class TourAdminService {
    private TourDAO tourDAO = new TourDAO();

    public List<Tour> getAllTour() {
        return tourDAO.getAllTours();
    }
}
