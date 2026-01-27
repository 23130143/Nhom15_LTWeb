package vn.edu.hcmuaf.fit.nhom15_ltweb.controller.Ad;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Banner;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.BannerService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminBannerController", value = "/admin/banners")
public class AdminBannerController extends HttpServlet {
    private BannerService bannerService = new BannerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyword = request.getParameter("keyword");
        List<Banner> banners;

        if (keyword != null && !keyword.trim().isEmpty()) {
            banners = bannerService.searchBanner(keyword);
        } else {
            banners = bannerService.getAllBanners();
        }

        request.setAttribute("banners", banners);
        request.getRequestDispatcher("/Admin_Banner.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}