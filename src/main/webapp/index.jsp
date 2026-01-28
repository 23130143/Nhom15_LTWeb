<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.Category" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tourimages" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.TourExperience" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.Promotion" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.Banner" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.User" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.dao.TourimagesDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.dao.TourExperienceDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.dao.PromotionDAO" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.Cart" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.User" %>
<%@ page import="java.util.Locale" %>
<%
    // Lấy Giỏ hàng từ Session để đếm số lượng
    Cart cartHeader = (Cart) session.getAttribute("cart");

    // Lấy thông tin người dùng (để hiển thị tên/đăng nhập)
    User userHeader = (User) session.getAttribute("user");
    boolean isUserLoggedIn = (userHeader != null);
%>

<%
    List<Tour> topTours = (List<Tour>) request.getAttribute("topTours");
    List<Tour> europeTours = (List<Tour>) request.getAttribute("europeTours");
    List<Tour> asiaTours = (List<Tour>) request.getAttribute("asiaTours");
    List<Category> categories = (List<Category>) request.getAttribute("categories");
    TourimagesDAO tourimagesDAO = (TourimagesDAO) request.getAttribute("tourimagesDAO");
    TourExperienceDAO tourExperienceDAO = (TourExperienceDAO) request.getAttribute("tourExperienceDAO");
    PromotionDAO promotionDAO = (PromotionDAO) request.getAttribute("promotionDAO");
    Banner banner = (Banner) request.getAttribute("banner");

    // Kiểm tra đăng nhập
    User loggedUser = (User) session.getAttribute("user");
    boolean isLoggedIn = (loggedUser != null);

    NumberFormat formatter = NumberFormat.getInstance(new Locale("vi", "VN"));
%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>TravelNow - Trang chủ</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
          integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/Tour.css">
</head>
<body>

<!-- HEADER -->
<section id="header">
    <div class="header-content">
        <header class="header-wrapper">
            <div class="container">
                <div class="header-box">
                    <div class="logo">
                        <div class="header-logo">
                            <a href="${pageContext.request.contextPath}/home" aria-label="TravelNow" class="Travel-logo">
                                <img src="${pageContext.request.contextPath}/IMAGE/asset/images/LOGO.png" alt="Travel">
                            </a>
                        </div>
                    </div>

                    <div class="header-center">
                        <nav>
                            <div class="menu">
                                <a href="${pageContext.request.contextPath}/home" class="item active">Tour trong nước</a>
                                <a href="${pageContext.request.contextPath}/home" class="item">Tour nước ngoài</a>
                                <a href="${pageContext.request.contextPath}/Khuyen_Mai.jsp" class="item">Khuyến mãi</a>
                                <a href="${pageContext.request.contextPath}/GioiThieu.jsp" class="item">Giới thiệu</a>
                                <div class="item">
                                    <div class="sub">
                                        <span></span><span></span><span></span>
                                    </div>
                                    <div class="sub-item">
                                        <a href="${pageContext.request.contextPath}/Tin%20t%E1%BB%A9c.jsp">Tin Tức</a>
                                        <a href="${pageContext.request.contextPath}/Cau_hoi_thuong_gap.jsp">Câu hỏi thường gặp</a>
                                        <a href="${pageContext.request.contextPath}/NhatKyDuLich.jsp">Nhật ký khách hàng</a>
                                    </div>
                                </div>
                            </div>
                        </nav>
                    </div>

                    <div class="header-right">
                        <div class="cart">
                            <a href="${pageContext.request.contextPath}/my-cart">
                                <i class="fa-solid fa-cart-shopping"></i>
                                <span class="cart-count">
                                    <%= (cartHeader != null) ? cartHeader.getItems().size() : 0 %>
                                </span>
                            </a>
                        </div>

                        <% if (isUserLoggedIn) { %>
                        <div class="account">
                            <i class="fa-solid fa-circle-user"></i>
                            <span><%= userHeader.getFullName() %> ▾</span>
                            <div class="dropdown">
                                <a href="${pageContext.request.contextPath}/LichSuChuyenDi.jsp" class="dropdown-item">Kỳ nghỉ của tôi</a>
                                <a href="${pageContext.request.contextPath}/HoSo.jsp" class="dropdown-item">Hồ sơ của tôi</a>
                                <a href="${pageContext.request.contextPath}/logout" class="btn-sign-out">Đăng xuất</a>
                            </div>
                        </div>
                        <% } else { %>
                        <div class="account">
                            <i class="fa-solid fa-circle-user"></i>
                            <span>Tài khoản ▾</span>
                            <div class="dropdown">
                                <button onclick="location.href='${pageContext.request.contextPath}/signin'" class="register-btn">Đăng ký</button>
                                <p>Quý khách đã có tài khoản?<br>
                                    <a href="${pageContext.request.contextPath}/login">Đăng nhập ngay</a>
                                </p>
                            </div>
                        </div>
                        <% } %>

                        <div class="phone_number">
                            <i class="fa-solid fa-phone"></i>
                            <span class="phonenum">1900 2490</span>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </div>
</section>

<!-- BANNER SECTION -->
<section class="section-search">
    <% if (banner != null && banner.getImgBanner() != null && !banner.getImgBanner().isEmpty()) { %>
    <img src="${pageContext.request.contextPath}/<%= banner.getImgBanner() %>" alt="<%= banner.getTitle() %>"/>
    <% } else { %>
    <img src="${pageContext.request.contextPath}/IMAGE/asset/images/search.gif" alt="ảnh nền"/>
    <% } %>
    <div class="search-container">
        <div class="home-title">
            <h1>Hơn 100+ Tour, Khám Phá Ngay</h1>
        </div>
        <div class="home-info">
            <h2>Giá tốt - hỗ trợ 24/7 - khắp nơi</h2>
        </div>
        <div class="home-button">
            <div class="search-item1">
                <i class="fa-solid fa-location-dot"></i>
                <div class="search-content">
                    <label for="001">ĐỊA ĐIỂM</label>
                    <input id="001" type="text" placeholder="Bạn muốn đi đâu?">
                </div>
            </div>
            <div class="search-item2">
                <i class="fa-solid fa-plane-departure"></i>
                <div class="search-content">
                    <label for="002">KHỞI HÀNH TỪ</label>
                    <select id="002">
                        <option value="">Vui lòng chọn</option>
                        <option>Hồ Chí Minh</option>
                        <option>Hà Nội</option>
                        <option>Đà Nẵng</option>
                        <option>Phú Quốc</option>
                        <option>Hải Phòng</option>
                    </select>
                </div>
            </div>
            <button class="search-button" onclick="window.location.href='${pageContext.request.contextPath}/search-by-category'">Tìm</button>
        </div>
    </div>
</section>

<!-- SECTION 1: TOUR ƯU ĐÃI HÔM NAY -->
<section class="tour-section" id="1">
    <div class="container">
        <h2>Tour ưu đãi hôm nay</h2>
        <span class="title-group">Chơi Tết Thả Ga, Không Lo Về Giá</span>

        <div class="tour-grid">
            <%
                if (topTours != null && !topTours.isEmpty()) {
                    for (Tour tour : topTours) {
                        Tourimages image = (tourimagesDAO != null) ? tourimagesDAO.getMainImageByTourId(tour.getTourID()) : null;
                        List<TourExperience> experiences = (tourExperienceDAO != null) ? tourExperienceDAO.getExperiencesByTourId(tour.getTourID(), 4) : null;
                        Promotion promo = (promotionDAO != null) ? promotionDAO.getPromotionByTourId(tour.getTourID()) : null;

                        double oldPrice = tour.getAdultPrice();
                        double newPrice = (promo != null) ? promo.calculateNewPrice(oldPrice) : oldPrice;
                        String promoLabel = (promo != null) ? promo.getLabel() : "Hot Deal";
            %>
            <div class="tour-card" onclick="location.href='${pageContext.request.contextPath}/tour-detail?id=<%= tour.getTourID() %>'">
                <div class="label red"><%= promoLabel %></div>

                <% if (image != null && image.getImageURL() != null && !image.getImageURL().isEmpty()) { %>
                <img class="tour-img" src="${pageContext.request.contextPath}/<%= image.getImageURL() %>" alt="<%= tour.getTitle() %>">
                <% } else { %>
                <img class="tour-img" src="${pageContext.request.contextPath}/IMAGE/asset/images/Tour_1.jpg" alt="<%= tour.getTitle() %>">
                <% } %>

                <div class="tour-detail">
                    <div class="tour-content">
                        <h3><%= tour.getTitle() %></h3>
                    </div>
                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text"><%= tour.getDuration() %></span>
                    </div>
                    <div class="tour-info">
                        <ul class="tour-list">
                            <% if (experiences != null && !experiences.isEmpty()) {
                                for (TourExperience exp : experiences) { %>
                            <li><%= exp.getTourExperienceTitle() %></li>
                            <% } } else { %>
                            <li>Khám phá địa điểm du lịch</li>
                            <li>Trải nghiệm văn hóa địa phương</li>
                            <li>Thưởng thức ẩm thực</li>
                            <li>Tham quan danh lam thắng cảnh</li>
                            <% } %>
                        </ul>
                    </div>
                    <div class="price">
                        <% if (promo != null) { %>
                        <span class="old"><%= formatter.format(oldPrice) %> <small class="textCurrency">đ</small></span>
                        <% } %>
                        <span class="new"><%= formatter.format(newPrice) %> <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>
            <% } } else { %>
            <p>Không có tour nào.</p>
            <% } %>
        </div>

        <div class="see-more">
            <a href="${pageContext.request.contextPath}/search-by-category" class="btn-see-more">Xem thêm tours</a>
        </div>
    </div>
</section>

<!-- SECTION 2: TOUR CHÂU ÂU -->
<section class="tour-section" id="2">
    <div class="container">
        <h2>Tour Miền Bắc</h2>
        <span class="title-group">Khám phá vẻ đẹp Miền Bắc</span>

        <div class="tour-grid">
            <%
                if (europeTours != null && !europeTours.isEmpty()) {
                    for (Tour tour : europeTours) {
                        Tourimages image = (tourimagesDAO != null) ? tourimagesDAO.getMainImageByTourId(tour.getTourID()) : null;
                        List<TourExperience> experiences = (tourExperienceDAO != null) ? tourExperienceDAO.getExperiencesByTourId(tour.getTourID(), 4) : null;
                        Promotion promo = (promotionDAO != null) ? promotionDAO.getPromotionByTourId(tour.getTourID()) : null;

                        double oldPrice = tour.getAdultPrice();
                        double newPrice = (promo != null) ? promo.calculateNewPrice(oldPrice) : oldPrice;
                        // Sửa nhãn mặc định nếu không có khuyến mãi
                        String promoLabel = (promo != null) ? promo.getLabel() : "Miền Bắc";
            %>
            <div class="tour-card" onclick="location.href='${pageContext.request.contextPath}/tour-detail?id=<%= tour.getTourID() %>'">
                <div class="label red"><%= promoLabel %></div>

                <% if (image != null && image.getImageURL() != null && !image.getImageURL().isEmpty()) { %>
                <img class="tour-img" src="${pageContext.request.contextPath}/<%= image.getImageURL() %>" alt="<%= tour.getTitle() %>">
                <% } else { %>
                <img class="tour-img" src="${pageContext.request.contextPath}/IMAGE/asset/images/Tour_2.jpg" alt="<%= tour.getTitle() %>">
                <% } %>

                <div class="tour-detail">
                    <div class="tour-content">
                        <h3><%= tour.getTitle() %></h3>
                    </div>
                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text"><%= tour.getDuration() %></span>
                    </div>
                    <div class="tour-info">
                        <ul class="tour-list">
                            <% if (experiences != null && !experiences.isEmpty()) {
                                for (TourExperience exp : experiences) { %>
                            <li><%= exp.getTourExperienceTitle() %></li>
                            <% } } else { %>
                            <li>Tham quan thủ đô</li>
                            <li>Khám phá Tây Bắc</li>
                            <li>Thưởng thức phở</li>
                            <li>Ngắm cảnh Vịnh</li>
                            <% } %>
                        </ul>
                    </div>
                    <div class="price">
                        <% if (promo != null) { %>
                        <span class="old"><%= formatter.format(oldPrice) %> <small class="textCurrency">đ</small></span>
                        <% } %>
                        <span class="new"><%= formatter.format(newPrice) %> <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>
            <% } } else { %>
            <p>Không có tour Miền Bắc nào.</p>
            <% } %>
        </div>

        <div class="see-more">
            <a href="${pageContext.request.contextPath}/search-by-category?categoryId=1" class="btn-see-more">Xem thêm tours</a>
        </div>
    </div>
</section>

<!-- SECTION 3: TOUR CHÂU Á -->
<section class="tour-section" id="3">
    <div class="container">
        <h2>Tour Miền Nam</h2>
        <span class="title-group">Khám phá vẻ đẹp Miền Nam</span>

        <div class="tour-grid">
            <%
                if (asiaTours != null && !asiaTours.isEmpty()) {
                    for (Tour tour : asiaTours) {
                        Tourimages image = (tourimagesDAO != null) ? tourimagesDAO.getMainImageByTourId(tour.getTourID()) : null;
                        List<TourExperience> experiences = (tourExperienceDAO != null) ? tourExperienceDAO.getExperiencesByTourId(tour.getTourID(), 4) : null;
                        Promotion promo = (promotionDAO != null) ? promotionDAO.getPromotionByTourId(tour.getTourID()) : null;

                        double oldPrice = tour.getAdultPrice();
                        double newPrice = (promo != null) ? promo.calculateNewPrice(oldPrice) : oldPrice;
                        // Sửa nhãn mặc định
                        String promoLabel = (promo != null) ? promo.getLabel() : "Miền Nam";
            %>
            <div class="tour-card" onclick="location.href='${pageContext.request.contextPath}/tour-detail?id=<%= tour.getTourID() %>'">
                <div class="label red"><%= promoLabel %></div>

                <% if (image != null && image.getImageURL() != null && !image.getImageURL().isEmpty()) { %>
                <img class="tour-img" src="${pageContext.request.contextPath}/<%= image.getImageURL() %>" alt="<%= tour.getTitle() %>">
                <% } else { %>
                <img class="tour-img" src="${pageContext.request.contextPath}/IMAGE/asset/images/Tour_4.jpg" alt="<%= tour.getTitle() %>">
                <% } %>

                <div class="tour-detail">
                    <div class="tour-content">
                        <h3><%= tour.getTitle() %></h3>
                    </div>
                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text"><%= tour.getDuration() %></span>
                    </div>
                    <div class="tour-info">
                        <ul class="tour-list">
                            <% if (experiences != null && !experiences.isEmpty()) {
                                for (TourExperience exp : experiences) { %>
                            <li><%= exp.getTourExperienceTitle() %></li>
                            <% } } else { %>
                            <li>Chợ nổi miền Tây</li>
                            <li>Biển đảo Phú Quốc</li>
                            <li>Văn hóa Nam Bộ</li>
                            <li>Trái cây miệt vườn</li>
                            <% } %>
                        </ul>
                    </div>
                    <div class="price">
                        <% if (promo != null) { %>
                        <span class="old"><%= formatter.format(oldPrice) %> <small class="textCurrency">đ</small></span>
                        <% } %>
                        <span class="new"><%= formatter.format(newPrice) %> <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>
            <% } } else { %>
            <p>Không có tour Miền Nam nào.</p>
            <% } %>
        </div>

        <div class="see-more">
            <a href="${pageContext.request.contextPath}/search-by-category?categoryId=2" class="btn-see-more">Xem thêm tours</a>
        </div>
    </div>
</section>
<!-- FOOTER -->
<footer class="footer">
    <div class="footer-top">
        <div class="ft_container">
            <div class="ft_col">
                <div class="list_col">
                    <h4>Về TravelNow</h4>
                    <a href="${pageContext.request.contextPath}/GioiThieu.jsp">Giới thiệu</a>
                    <a href="${pageContext.request.contextPath}/DieuKienDieuKhoan.jsp">Điều kiện & điều khoản</a>
                    <a href="${pageContext.request.contextPath}/QuyCheHoatDong.jsp">Quy chế hoạt động</a>
                </div>
                <div class="list_col">
                    <h4>Hỗ trợ khách hàng</h4>
                    <a href="${pageContext.request.contextPath}/Cau_hoi_thuong_gap.jsp">Câu hỏi thường gặp</a>
                    <a href="${pageContext.request.contextPath}/QuyCheHoatDong.jsp">Quy chế hoạt động</a>
                </div>
                <div class="list_col">
                    <h4>Dịch vụ</h4>
                    <a href="${pageContext.request.contextPath}/home">Tour trong nước</a>
                    <a href="${pageContext.request.contextPath}/home">Tour ngoài nước</a>
                    <a href="${pageContext.request.contextPath}/Khuyen_Mai.jsp">Khuyến mãi</a>
                </div>
                <div class="list_col">
                    <h4>Liên hệ</h4>
                    <p>Trường Đại Học Nông Lâm TPHCM</p>
                    <p>Phường Linh Xuân, TP.HCM</p>
                    <p><i class="fa-solid fa-phone"></i> Hotline: 1900 1870</p>
                    <p><i class="fa-solid fa-envelope"></i> support@travelnow.com</p>
                </div>
            </div>
            <div class="icon_social">
                <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                <a href="#"><i class="fa-brands fa-instagram"></i></a>
                <a href="#"><i class="fa-brands fa-tiktok"></i></a>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="ft_container">
            <span>@2025 TravelNow. All Rights Reserved.</span>
        </div>
    </div>
</footer>

</body>
</html>