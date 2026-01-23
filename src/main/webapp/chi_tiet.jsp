<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.Category" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tourimages" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.TourExperience" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.TourIncluded" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.Promotion" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>

<%
    Tour tour = (Tour) request.getAttribute("tour");
    Category category = (Category) request.getAttribute("category");
    List<Tourimages> images = (List<Tourimages>) request.getAttribute("images");
    Tourimages mainImage = (Tourimages) request.getAttribute("mainImage");
    List<TourExperience> experiences = (List<TourExperience>) request.getAttribute("experiences");
    List<TourIncluded> includedList = (List<TourIncluded>) request.getAttribute("includedList");
    Promotion promo = (Promotion) request.getAttribute("promo");

    NumberFormat formatter = NumberFormat.getInstance(new Locale("vi", "VN"));

    // Tính giá
    double adultPrice = tour.getAdultPrice();
    double childPrice = tour.getChildPrice();
    double discountedAdultPrice = (promo != null) ? promo.calculateNewPrice(adultPrice) : adultPrice;
    double discountedChildPrice = (promo != null) ? promo.calculateNewPrice(childPrice) : childPrice;
    String promoLabel = (promo != null) ? promo.getLabel() : "";
%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title><%= tour.getTitle() %> - TravelNow</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/CTStyles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">
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
                                <a href="${pageContext.request.contextPath}/home" class="item">Tour trong nước</a>
                                <a href="${pageContext.request.contextPath}/home" class="item">Tour nước ngoài</a>
                                <a href="${pageContext.request.contextPath}/Khuyen_Mai.jsp" class="item">Khuyến mãi</a>
                                <a href="${pageContext.request.contextPath}/GioiThieu.jsp" class="item">Giới thiệu</a>

                                <div class="item">
                                    <div class="sub">
                                        <span></span><span></span><span></span>
                                    </div>
                                    <div class="sub-item">
                                        <a href="${pageContext.request.contextPath}/Tin tức.jsp">Tin Tức</a>
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
                                <span class="cart-count">0</span>
                            </a>
                        </div>
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

<main class="content">
    <!-- TIÊU ĐỀ TOUR -->
    <section class="hearder-page">
        <h1 class="page-title"><%= tour.getTitle() %></h1>
    </section>

    <section class="container-tour">
        <div class="tour-section">
            <!-- ẢNH TOUR -->
            <div class="tour-img">
                <% if (mainImage != null && mainImage.getImageURL() != null) { %>
                <img id="main-img" src="${pageContext.request.contextPath}/<%= mainImage.getImageURL() %>" alt="<%= tour.getTitle() %>">
                <% } else { %>
                <img id="main-img" src="${pageContext.request.contextPath}/IMAGE/asset/images/Tour_1.jpg" alt="<%= tour.getTitle() %>">
                <% } %>
                <i id="left-img" class="fa-solid fa-arrow-left"></i>
                <i id="right-img" class="fa-solid fa-arrow-right"></i>
            </div>

            <!-- THUMBNAIL LIST -->
            <div class="thumb-list">
                <% if (images != null && !images.isEmpty()) {
                    for (Tourimages img : images) { %>
                <img src="${pageContext.request.contextPath}/<%= img.getImageURL() %>" alt="<%= tour.getTitle() %>"
                     onclick="document.getElementById('main-img').src=this.src">
                <% } } %>
            </div>

            <!-- CHI TIẾT CHUYẾN DU LỊCH -->
            <div class="tourDetails">
                <h4>Chi Tiết Chuyến Du Lịch</h4>
                <div class="departure">
                    <i class="fa-solid fa-location-dot"></i>
                    <span>Khởi hành từ:</span>
                    <span><%= tour.getDeparture() %></span>
                </div>

                <div class="tour-duration">
                    <i class="fa-solid fa-clock"></i>
                    <span>Thời gian:</span>
                    <span><%= tour.getDuration() %></span>
                </div>

                <!-- DỊCH VỤ BAO GỒM -->
                <div class="details-row">
                    <% if (includedList != null && !includedList.isEmpty()) {
                        for (TourIncluded item : includedList) { %>
                    <div class="d-item">
                        <i class="fa-solid fa-check"></i>
                        <span><%= item.getTourIncludedTitle() %></span>
                    </div>
                    <% } } else { %>
                    <div class="d-item"><i class="fa-solid fa-check"></i><span>Vé máy bay</span></div>
                    <div class="d-item"><i class="fa-solid fa-check"></i><span>Khách sạn</span></div>
                    <div class="d-item"><i class="fa-solid fa-check"></i><span>Bữa ăn</span></div>
                    <div class="d-item"><i class="fa-solid fa-check"></i><span>Xe tham quan</span></div>
                    <div class="d-item"><i class="fa-solid fa-check"></i><span>Hướng dẫn viên</span></div>
                    <div class="d-item"><i class="fa-solid fa-check"></i><span>Bảo hiểm du lịch</span></div>
                    <% } %>
                </div>
            </div>

            <!-- TRẢI NGHIỆM THÚ VỊ -->
            <div class="experience-section">
                <h2>Trải Nghiệm Thú Vị</h2>
                <div class="experience-row">
                    <% if (experiences != null && !experiences.isEmpty()) {
                        for (TourExperience exp : experiences) { %>
                    <span>- <%= exp.getTourExperienceTitle() %>: <%= exp.getTourExperienceInfo() %></span>
                    <% } } else { %>
                    <span>- Khám phá các địa điểm du lịch nổi tiếng</span>
                    <span>- Trải nghiệm văn hóa địa phương</span>
                    <span>- Thưởng thức ẩm thực đặc sắc</span>
                    <% } %>
                </div>
            </div>

            <!-- MÔ TẢ TOUR -->
            <div class="tour-description">
                <h2>Mô tả Tour</h2>
                <p><%= tour.getDescription() %></p>
            </div>

            <!-- LỊCH TRÌNH -->
            <div class="tour-schedule">
                <h2>Lịch Trình</h2>
                <p><%= tour.getSchedule() %></p>
            </div>
        </div>

        <!-- THÔNG TIN GIÁ -->
        <div class="tour-info">
            <h2>Lịch Trình và Giá Tour</h2>

            <% if (promo != null) { %>
            <div class="promo-badge">
                <i class="fa-solid fa-tag"></i> <%= promoLabel %>
            </div>
            <% } %>

            <div class="tour-date">
                <label>Chọn Lịch Trình:</label>
                <input type="date" id="date" name="date">
            </div>

            <div class="tour-pricing">
                <div class="row">
                    <span>Người lớn > 9 tuổi</span>
                    <span id="price" class="price">x <%= formatter.format(discountedAdultPrice) %></span>
                    <input id="number-a" type="number" value="2" min="1" max="<%= tour.getAvailableCapacity() %>">
                </div>
                <div class="row">
                    <span>Trẻ em (< 9 tuổi)</span>
                    <span id="child-price" class="child-price">x <%= formatter.format(discountedChildPrice) %></span>
                    <input id="number-c" type="number" value="0" min="0">
                </div>
            </div>

            <div class="total">
                <% if (promo != null) { %>
                <div class="row">
                    <span class="basic-price">Giá gốc:</span>
                    <span id="basic-price"><%= formatter.format(adultPrice * 2) %></span>
                </div>
                <div class="row">
                    <span class="dis-price">Giảm giá:</span>
                    <span id="dis-price"><%= formatter.format((adultPrice - discountedAdultPrice) * 2) %></span>
                </div>
                <% } %>
                <div class="row">
                    <span class="total-price">Tổng giá:</span>
                    <span id="total-price"><%= formatter.format(discountedAdultPrice * 2) %></span>
                </div>
            </div>

            <form action="${pageContext.request.contextPath}/add-cart" method="post">
                <input type="hidden" name="tourID" value="<%= tour.getTourID() %>">
                <input type="hidden" id="adultPrice" value="<%= discountedAdultPrice %>">
                <input type="hidden" id="childPrice" value="<%= discountedChildPrice %>">

                <div class="tour-button">
                    <button type="submit" class="tour-btn">Thêm vào giỏ hàng</button>
                </div>
            </form>
        </div>
    </section>
</main>

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

<script src="${pageContext.request.contextPath}/Javascript/CT_script.js"></script>
</body>
</html>