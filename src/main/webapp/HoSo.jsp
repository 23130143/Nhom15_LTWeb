<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.Cart" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.User" %>
<%
    User user = (User) request.getAttribute("user");
%>
<%
    // Lấy Giỏ hàng từ Session để đếm số lượng
    Cart cartHeader = (Cart) session.getAttribute("cart");

    // Lấy thông tin người dùng (để hiển thị tên/đăng nhập)
    User userHeader = (User) session.getAttribute("user");
    boolean isUserLoggedIn = (userHeader != null);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/HoSoStyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">
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


<main id="main">
    <section class="profile">
        <h1 class="profile-header">Thông tin cá nhân</h1>
        <div class="profile-item">
            <span class="label">Họ tên</span>
            <span class="value"><%= user != null ? user.getFullName() : "Chưa có" %></span>
        </div>
        <div class="profile-item">
            <span class="label">Địa chỉ email</span>
            <span class="value"><%= user != null ? user.getEmail() : "Chưa có" %></span>
        </div>
        <div class="profile-item">
            <span class="label">Số điện thoại</span>
            <span class="value"><%= user != null && user.getPhone() != null ? user.getPhone() : "Chưa có" %></span>
        </div>
        <div class="profile-item">
            <span class="label">Ngày sinh</span>
            <span class="value"><%= user != null && user.getBirthDate() != null ? new java.text.SimpleDateFormat("dd/MM/yyyy").format(user.getBirthDate()) : "Chưa có" %></span>
        </div>
        <div class="profile-item">
            <span class="label">Giới tính</span>
            <span class="value"><%= user != null && user.getGender() != null ? user.getGender() : "Chưa có" %></span>
        </div>
        <div class="profile-item">
            <span class="label">Địa chỉ</span>
            <span class="value"><%= user != null && user.getAddress() != null ? user.getAddress() : "Chưa có" %></span>
        </div>
        <div class="profile-item">
            <span class="label">Passport</span>
            <span class="value"><%= user != null && user.getPassport() != null ? user.getPassport() : "Chưa có" %></span>
        </div>
    </section>

    <section class="profile-btn">
        <div class="edit">
            <a href="<%= request.getContextPath() %>/UpdateHoSo.jsp" class="edit-btn">
                Chỉnh sửa thông tin
            </a>
        </div>
        <div class="change-password">
            <a href="<%= request.getContextPath() %>/DoiMK.jsp" class="change-btn">
                Đổi mật khẩu
            </a>
        </div>
    </section>
</main>
</body>
</html>