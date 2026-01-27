<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.User" %>
<%
    User user = (User) request.getAttribute("user");
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
                            <a href="<%= request.getContextPath() %>/index.jsp" aria-label="TravelNow" class="Travel-logo">
                                <img src="<%= request.getContextPath() %>/IMAGE/asset/images/LOGO.png" alt="Travel ">
                            </a>
                        </div>
                    </div>

                    <div class="header-center">
                        <nav>
                            <div class="menu">
                                <a href="<%= request.getContextPath() %>/index.jsp" class="item">Tour trong nước</a>
                                <a href="#" class="item">Tour nước ngoài</a>
                                <a href="<%= request.getContextPath() %>/Khuyen_Mai.jsp" class="item">Khuyến mãi</a>
                                <a href="<%= request.getContextPath() %>/GioiThieu.jsp" class="item">Giới thiệu</a>

                                <div class="item">
                                    <div class="sub">
                                        <span></span><span></span><span></span>
                                    </div>
                                    <div class="sub-item">
                                        <a href="<%= request.getContextPath() %>/Tin tức.jsp">Tin Tức</a>
                                        <a href="<%= request.getContextPath() %>/Cau_hoi_thuong_gap.jsp">Câu hỏi thường gặp</a>
                                        <a href="<%= request.getContextPath() %>/NhatKyDuLich.jsp">Nhật ký khách hàng</a>
                                    </div>
                                </div>
                            </div>
                        </nav>
                    </div>

                    <div class="header-right">
                        <div class="account">
                            <i class="fa-solid fa-circle-user"></i>
                            <span>Tài khoản ▾</span>
                            <div class="dropdown">
                                <button onclick="location.href='<%= request.getContextPath() %>/Sign-in.jsp'" class="register-btn">
                                    Đăng ký
                                </button>
                                <p>Quý khách đã có tài khoản?<br>
                                    <a href="<%= request.getContextPath() %>/Log-in.jsp">Đăng nhập ngay</a>
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