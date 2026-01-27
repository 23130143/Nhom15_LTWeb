package vn.edu.hcmuaf.fit.nhom15_ltweb.service;

import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.BannerDAO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Banner;

import java.util.List;

public class BannerService {
    private BannerDAO bannerDAO;

    public BannerService() {
    }

    public List<Banner> getAllBanners() {
        return bannerDAO.getAllBanners();
    }

    public void addBanner(Banner banner) {
        bannerDAO.addBanner(banner);
    }

    public List<Banner> searchBanner(String keyword) {
        List<Banner> banners = bannerDAO.searchBanner(keyword);
        return banners;
    }
}
