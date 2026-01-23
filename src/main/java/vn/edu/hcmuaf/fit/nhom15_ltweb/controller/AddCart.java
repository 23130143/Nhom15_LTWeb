package vn.edu.hcmuaf.fit.nhom15_ltweb.controller;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.nhom15_ltweb.dao.TourDAO;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tourimages;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.Cart;
import vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.CartItem;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.CartService;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.TourService;
import vn.edu.hcmuaf.fit.nhom15_ltweb.service.TourimagesService;

import java.io.IOException;

@WebServlet(name = "AddCart", value = "/cart")
public class AddCart extends HttpServlet {
    private CartService cartService = new CartService();
    private TourService tourService = new TourService();
    private TourimagesService tourimagesService = new TourimagesService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tourIdRaw = request.getParameter("tourID");
        int adultQty = Integer.parseInt(request.getParameter("adultQty"));
        int childQty = Integer.parseInt(request.getParameter("childQty"));

        if (tourIdRaw == null) {
            response.sendRedirect("index.jsp"); // hoặc trang lỗi
            return;
        }

        int tourID;
        try {
            tourID = Integer.parseInt(tourIdRaw);
        } catch (NumberFormatException e) {
            response.sendRedirect("index.jsp");
            return;
        }

        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        // lấy tour từ DB
        Tour tour = tourService.getTourById(tourID);
        Tourimages img = tourimagesService.getMainIMG(tourID);
        CartItem item = new CartItem();
        item.setTour(tour);
        item.setImageURL(String.valueOf(img));
        item.setAdultQty(adultQty);
        item.setChildQty(childQty);

        cart.add(item); // ví dụ

        response.sendRedirect("my-cart");
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {

        int tourID = Integer.parseInt(req.getParameter("tourID"));
        int adult = Integer.parseInt(req.getParameter("adult"));
        int child = Integer.parseInt(req.getParameter("child"));

        Tour tour = new TourDAO().getTourById(tourID);

        HttpSession session = req.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        if (cart == null) cart = new Cart();

        cart.addTour(tour, adult, child);
        session.setAttribute("cart", cart);

        resp.sendRedirect("cart.jsp");
    }
}