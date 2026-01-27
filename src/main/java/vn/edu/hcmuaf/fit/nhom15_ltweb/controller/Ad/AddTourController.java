package vn.edu.hcmuaf.fit.nhom15_ltweb.controller.Ad;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.TourDAO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

@WebServlet(name = "AddTourController", value = "/admin/addtour")
public class AddTourController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/addTour.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        // 1. Lấy dữ liệu tour
        Tour tour = new Tour();
//        tour.setTourID(Integer.parseInt(request.getParameter("ID")));
        tour.setTitle(request.getParameter("title"));
        tour.setAdultPrice(Double.parseDouble(request.getParameter("adultPrice")));
        tour.setChildPrice(Double.parseDouble(request.getParameter("Childprice")));
        tour.setCategoriesID(Integer.parseInt(request.getParameter("categoriesID")));
        tour.setAvailableCapacity(Integer.parseInt(request.getParameter("availableCapacity")));
        tour.setDeparture(request.getParameter("Departure"));
        tour.setDescription(request.getParameter("description"));
        tour.setLocation(request.getParameter("location"));
        tour.setDuration(request.getParameter("duration"));
        tour.setSlTour(Integer.parseInt(request.getParameter("SlTour")));

        TourDAO dao = new TourDAO();

        // 2. Insert tour → lấy tourID
        int tourID = dao.insertTour(tour);

        // 3. Upload ảnh
        String uploadPath = getServletContext().getRealPath("/uploads");
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdir();

        for (Part part : request.getParts()) {
            if (part.getName().equals("images") && part.getSize() > 0) {
                String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
                part.write(uploadPath + File.separator + fileName);

                dao.insertTourImage(tourID, "uploads/" + fileName);
            }
        }
        response.sendRedirect(request.getContextPath() + "/admin/tours");
    }
}