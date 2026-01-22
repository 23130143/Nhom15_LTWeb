package vn.edu.hcmuaf.fit.nhom15_ltweb.service;
import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.TourDAO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;

public class TourService {
    private TourDAO tourDAO = new TourDAO(); // Khởi tạo DAO để lấy dữ liệu

    public Tour getTourById(int id) {
        // Gọi DAO để lấy Tour đã có sẵn Promotion và ImageURL
        return tourDAO.getTourById(id);
    }

    // Fen có thể thêm logic kiểm tra sức chứa ở đây nếu muốn nâng cao
    public boolean checkCapacity(int tourID, int requestedQty) {
        Tour tour = tourDAO.getTourById(tourID);
        return tour != null && tour.getAvailableCapacity() >= requestedQty; //
    }
}