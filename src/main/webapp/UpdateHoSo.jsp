<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.User" %>
<%
    User user = (User) request.getAttribute("user");
%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/updateHoSoStyle.css">
</head>
<body>
<section id="header">
    <div class="header-content">
        <header class="header-wrapper">
            <div class="container">
                <div class="header-box">
                    <div class="logo">
                        <div class="header-logo">
                            <a href="${pageContext.request.contextPath}/index.jsp" aria-label="TravelNow" class="Travel-logo">
                                <img src="${pageContext.request.contextPath}/IMAGE/asset/images/LOGO.png" alt="Travel ">
                            </a>
                        </div>
                    </div>

                    <div class="header-center">
                        <nav>
                            <div class="menu">
                                <a href="${pageContext.request.contextPath}/index.jsp" class="item">Tour trong nước</a>
                                <a href="${pageContext.request.contextPath}/index.jsp" class="item">Tour nước ngoài</a>
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
                        <div class="account">
                            <i class="fa-solid fa-circle-user"></i>
                            <span>Tài khoản ▾</span>
                            <div class="dropdown">
                                <button onclick="location.href='${pageContext.request.contextPath}/Sign-in.jsp'" class="register-btn">Đăng ký</button>
                                <p>Quý khách đã có tài khoản?<br>
                                    <a href="${pageContext.request.contextPath}/Log-in.jsp">Đăng nhập ngay</a>
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

        <form action="${pageContext.request.contextPath}/edit-profile" method="post" autocomplete="off">
            <div class="profile-item">
                <label for="name" class="label">Họ tên</label>
                <input id="name" name="fullName" class="input" type="text" placeholder="Nhập họ tên của bạn" required
                       value="<%= request.getAttribute("fullName") != null ? request.getAttribute("fullName") : "" %>">
            </div>

            <div class="profile-item">
                <label for="email" class="label">Địa chỉ email</label>
                <input id="email" name="email" class="input" type="email"
                       value="<%= user != null && user.getEmail() != null ? user.getEmail() : "" %>"
                       placeholder="Ví dụ: abcxyz@gmail.com">
            </div>

            <div class="profile-item">
                <label for="phone" class="label">Số điện thoại</label>
                <input id="phone" name="phone" class="input" type="tel" placeholder="Thêm số điện thoại của bạn"
                       value="<%= request.getAttribute("phone") != null ? request.getAttribute("phone") : "" %>">
            </div>

            <div class="profile-item">
                <label for="dob" class="label">Ngày sinh</label>
                <input id="dob" name="birthDate" class="input" type="date" placeholder="Nhập ngày sinh của bạn"
                       value="<%= request.getAttribute("birthDate") != null ? request.getAttribute("birthDate") : "" %>">
            </div>

            <div class="profile-item">
                <label for="gender" class="label">Giới tính</label>
                <select id="gender" name="gender" class="input">
                    <option value="">Chọn giới tính</option>
                    <option value="Nam" <%= "Nam".equals(request.getAttribute("gender")) ? "selected" : "" %> >Nam</option>
                    <option value="Nữ" <%= "Nữ".equals(request.getAttribute("gender")) ? "selected" : "" %> >Nữ</option>
                    <option value="Khác" <%= "Khác".equals(request.getAttribute("gender")) ? "selected" : "" %> >Khác</option>
                </select>
            </div>

            <div class="profile-item">
                <label for="address" class="label">Địa chỉ</label>
                <input id="address" name="address" class="input" type="text" placeholder="Nhập địa chỉ"
                       value="<%= request.getAttribute("address") != null ? request.getAttribute("address") : "" %>">
            </div>
            <div class="profile-item">
                <label for="passport" class="label">Passport</label>
                <input id="passport" name="passport" class="input" type="text" placeholder="Nhập passport của bạn"
                       value="<%= user != null && user.getPassport() != null ? user.getPassport() : "" %>">
            </div>
            <div class="profile-btn">
                <div class="update">
                    <button type="submit" class="update-btn">Lưu thay đổi</button>
                </div>
            </div>
        </form>
    </section>
</main>

</body>
</html>