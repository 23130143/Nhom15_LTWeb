package vn.edu.hcmuaf.fit.nhom15_ltweb.controller.Ad;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Banner;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.BannerService;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.sql.Date;
import java.time.LocalDate;

@WebServlet(name = "AddBannerController", value = "/admin/addbanner")
public class AddBannerController extends HttpServlet {
    private BannerService bannerService = new BannerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String title = request.getParameter("title");
        Date createdDate = Date.valueOf(LocalDate.now());

        // xử lý upload ảnh
        Part filePart = request.getPart("imgBanner");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

        String uploadPath = request.getServletContext()
                .getRealPath("/IMAGE/banner");

        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdirs();

        String filePath = uploadPath + File.separator + fileName;
        filePart.write(filePath);

        // đường dẫn lưu DB
        String imgBanner = "/IMAGE/banner/" + fileName;

        Banner banner = new Banner();
        banner.setTitle(title);
        banner.setImgBanner(imgBanner);
        banner.setCreatedDate(createdDate);

        bannerService.addBanner(banner);

        // quay về danh sách
        response.sendRedirect(request.getContextPath() + "/admin/banner");
    }
}