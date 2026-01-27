<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.Cart" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.User" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.dao.OrderDAO" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.Booking" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.DecimalFormat" %>

<%
    // Lấy Giỏ hàng và User cho Header
    Cart cartHeader = (Cart) session.getAttribute("cart");
    User userHeader = (User) session.getAttribute("user");
    boolean isUserLoggedIn = (userHeader != null);

    // --- PHẦN CODE JAVA MỚI THÊM ---
    OrderDAO orderDAO = new OrderDAO();
    List<Booking> bookingList = null;

    // Nếu đã đăng nhập thì gọi DAO lấy danh sách đơn hàng
    if(isUserLoggedIn) {
        bookingList = orderDAO.getBookingByUser(userHeader.getUserID());
    }

    DecimalFormat formatter = new DecimalFormat("###,###,###");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lịch sử chuyến đi - TravelNow</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/LichSuChuyenDiStyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
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
                                    <div class="sub"><span></span><span></span><span></span></div>
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

<main id="main">
    <section class="hitory">
        <h1 class="hitory-header">Lịch sử chuyến đi</h1>
        <div class="hitory-content">
            <div class="table">
                <div class="hitory-item" style="font-weight: bold; background: #f0f0f0;">
                    <span class="id">Mã đơn</span>
                    <span class="tour name">Mã Tour</span>
                    <span class="start date">Ngày đặt</span>
                    <span class="end date">Ngày đi</span>
                    <span class="total price after">Tổng tiền</span>
                    <span class="status-h">Trạng thái</span>
                </div>

                <%
                    // Kiểm tra danh sách và hiển thị
                    if (bookingList != null && !bookingList.isEmpty()) {
                        for (Booking b : bookingList) {
                %>
                <div class="history-item">
                    <span class="id">#DL<%= b.getBookingID() %></span>

                    <span class="tour-name">Tour ID: <%= b.getTourID() %></span>

                    <span class="start-date"><%= b.getBookingDate() %></span>
                    <span class="end-date"><%= b.getStartDate() %></span>

                    <span class="total-price-after"><%= formatter.format(b.getTotalPrice()) %> đ</span>

                    <%
                        String statusClass = "ongoing";
                        String statusText = b.getStatus();

                        if("PENDING".equalsIgnoreCase(statusText)) {
                            statusClass = "upcoming"; // Màu vàng
                            statusText = "Chờ thanh toán";
                        } else if("PAID".equalsIgnoreCase(statusText) || "SUCCESS".equalsIgnoreCase(statusText)) {
                            statusClass = "completed"; // Màu xanh lá
                            statusText = "Đã thanh toán";
                        } else if("CANCELLED".equalsIgnoreCase(statusText)) {
                            statusClass = "canceled"; // Màu đỏ
                            statusText = "Đã hủy";
                        }
                    %>
                    <span class="status <%= statusClass %>"><%= statusText %></span>
                </div>
                <%
                    }
                } else {
                %>
                <div class="history-item" style="justify-content: center; padding: 20px;">
                    <p>Bạn chưa có chuyến đi nào.</p>
                </div>
                <% } %>
            </div>
        </div>
    </section>
</main>
</body>
</html>