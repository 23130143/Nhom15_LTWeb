package vn.edu.hcmuaf.fit.nhom15_ltweb.service;

import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.TourimagesDAO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tourimages;

public class TourimagesService {
    private TourimagesDAO tourimagesDAO = new TourimagesDAO();

    public Tourimages getMainIMG(int tourID) {
        return tourimagesDAO.getMainImageByTourId(tourID);
    }
}
