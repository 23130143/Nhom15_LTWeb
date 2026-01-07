<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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

        <div class="profile-item">
            <label for="name" class="label">Họ tên</label>
            <input id="name" class="input" type="text" placeholder="Huỳnh Thị Thu Diễm">
        </div>

        <div class="profile-item">
            <label for="email" class="label">Địa chỉ email</label>
            <input id="email" class="input" type="email" placeholder="abcxyz@gmail.com">
        </div>

        <div class="profile-item">
            <label for="phone" class="label">Số điện thoại</label>
            <input id="phone" class="input" type="tel" placeholder="Thêm số điện thoại của bạn">
        </div>

        <div class="profile-item">
            <label for="dob" class="label">Ngày sinh</label>
            <input id="dob" class="input" type="date" placeholder="Nhập ngày sinh của bạn">
        </div>

        <div class="profile-item">
            <label for="gender" class="label">Giới tính</label>
            <select id="gender" class="input">
                <option value="">Chọn giới tính</option>
                <option value="Nam">Nam</option>
                <option value="Nữ">Nữ</option>
                <option value="Khác">Khác</option>
            </select>
        </div>

        <div class="profile-item">
            <label for="address" class="label">Địa chỉ</label>
            <input id="address" class="input" type="text" placeholder="Nhập địa chỉ">
        </div>
    </section>

    <section class="profile-btn">
        <div class="update">
            <a href="${pageContext.request.contextPath}/HoSo.jsp" class="update-btn">
                Chỉnh sửa hồ sơ
            </a>
        </div>
    </section>
</main>

</body>
</html>