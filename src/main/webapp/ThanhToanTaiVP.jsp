<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/ThanhToanTaiVP.css">
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
                            <a href="${pageContext.request.contextPath}/index.jsp" aria-label="TravelNow" class="Travel-logo">
                                <img src="${pageContext.request.contextPath}/IMAGE/asset/images/LOGO.png" alt="Travel ">
                            </a>
                        </div>
                    </div>

                    <div class="header-center">
                        <nav>
                            <div class="menu">
                                <a href="${pageContext.request.contextPath}/index.jsp" class="item active">Tour trong nước</a>
                                <a href="${pageContext.request.contextPath}/index.jsp" class="item">Tour nước ngoài</a>
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

<section class="main-container">
    <div class="main-header">
        <h3>Thanh toán tại văn phòng</h3>
        <p>Quý khách vui lòng ghé một trong các văn phòng để thanh toán</p>
    </div>

    <div class="main-content">
        <div class="office">
            <div class="office-wrapper">
                <label class="office-item-label" for="officeHCM">
                    <input
                            type="radio"
                            name="office"
                            value="HCM"
                            class="office-radio"
                            id="officeHCM"
                            data-url="${pageContext.request.contextPath}/PaymentOffice.jsp">
                </label>

                <div class="office-details">
                    <span class="office-name">Văn phòng TP.HCM</span>
                    <p>Tầng 2 thư viện, Giảng đường Rạng Đông, Khu phố 33, Phường Linh Xuân, TP.Hồ Chí Minh.</p>
                </div>
            </div>

            <div class="office-wrapper">
                <label class="office-item-label" for="officeHCM2">
                    <input
                            type="radio"
                            name="office"
                            value="HCM"
                            class="office-radio"
                            id="officeHCM2"
                            data-url="${pageContext.request.contextPath}/PaymentOffice2.jsp">
                </label>

                <div class="office-details">
                    <span class="office-name">Văn phòng TP.HCM</span>
                    <p>Giảng đường Phượng Vỹ, Khu phố 33, Phường Linh Xuân, TP.Hồ Chí Minh.</p>
                </div>
            </div>

            <div class="working-hours">
                <h3>Thời gian làm việc:</h3>
                <p> - 07:00 đến 17:00 (Thứ 2 đến Thứ 6). </p>
                <p> - Chủ nhật nghỉ. </p>
            </div>
        </div>
    </div>

    <div class="success">
        <button class="btn-confirm">Gửi địa chỉ qua điện thoại</button>
        <div class="link-change">
            <i class="fa-solid fa-repeat"></i>
            <a href="${pageContext.request.contextPath}/ThanhToan.jsp">Đổi hình thức thanh toán khác</a>
        </div>
    </div>
</section>

<footer class="footer">
    <div class="footer-top">
        <div class="ft_container">
            <div class="ft_col">
                <div class="list_col">
                    <h4>Về TravelNow</h4>
                    <a href="${pageContext.request.contextPath}/GioiThieu.jsp">Giới thiệu</a>
                    <a href="${pageContext.request.contextPath}/DieuKienDieuKhoan.jsp">Điều kiện \&amp; điều khoản</a>
                    <a href="${pageContext.request.contextPath}/QuyCheHoatDong.jsp">Quy chế hoạt động</a>
                </div>

                <div class="list_col">
                    <h4>Hỗ trợ khách hàng</h4>
                    <a href="${pageContext.request.contextPath}/Cau_hoi_thuong_gap.jsp">Câu hỏi thường gặp</a>
                    <a href="${pageContext.request.contextPath}/QuyCheHoatDong.jsp">Quy chế hoạt động</a>
                </div>

                <div class="list_col">
                    <h4>Dịch vụ</h4>
                    <a href="${pageContext.request.contextPath}/index.jsp">Tour trong nước</a>
                    <a href="${pageContext.request.contextPath}/index.jsp">Tour ngoài nước</a>
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

<script src="${pageContext.request.contextPath}/Javascript/button.js"></script>
</body>
</html>