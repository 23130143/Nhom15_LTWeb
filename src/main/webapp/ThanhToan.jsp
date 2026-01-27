<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.Cart" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.User" %>

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
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
          integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/ThanhToan.css">
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


<section class="main-container">
    <div class="payment-section">
        <i class="fa-solid fa-shield"></i>
        <h3>Chọn hình thức thanh toán</h3>

        <div class="payment-option">
            <input type="radio" id="qr" name="payment">
            <div class="icon">
                <img src="${pageContext.request.contextPath}/IMAGE/asset/images/QR.png" alt="QR Code"/>
            </div>

            <div class="info">
                <h3 class="title">Chuyển khoản QR</h3>
                <p class="desc">Quét mã QR để chuyển khoản • Miễn phí</p>
            </div>
        </div>

        <div class="payment-option">
            <input type="radio" id="direct" name="payment">
            <div class="icon">
                <img src="${pageContext.request.contextPath}/IMAGE/asset/images/office.png" alt="office"/>
            </div>

            <div class="info">
                <h3 class="title">Tại văn phòng</h3>
                <p class="desc">Thanh toán trực tiếp • Miễn phí</p>
            </div>
        </div>

        <p class="note">
            Bằng việc thanh toán, Quý khách đồng ý rằng dữ liệu cá nhân sẽ được xử lý theo
            <a href="${pageContext.request.contextPath}/DieuKienDieuKhoan.jsp">Điều khoản sử dụng</a>.
        </p>
        <button class="confirm-btn">Xác nhận thanh toán</button>
    </div>

    <div class="summary-section">
        <div class="tour-card">
            <div class="tour-info">
                <div class="tour-header">
                    <i class="fa-solid fa-map"></i>
                    <h3> Thông tin tour </h3>
                </div>

                <div class="tour-name">
                    <h3>Tour Singapore - Malaysia 4N3Đ: HCM - Sentosa - Genting - Động Batu - Tháp Đôi Petronas</h3>
                    <div class="tour-meta">Mã Tour: TO2385 • Khởi hành từ Hồ Chí Minh</div>
                </div>

                <div class="tour-dates">
                    <div>
                        <span>Khởi hành</span>
                        <h3>06 tháng 12, 2025</h3>
                    </div>
                    <div>
                        <span>Kết thúc</span>
                        <h3>09 tháng 12, 2025</h3>
                    </div>
                    <div class="tour-summary">
                        <span>4 ngày 3 đêm</span>
                        <span>2 khách</span>
                    </div>
                </div>
            </div>

            <div class="tour-section-title">
                <h4>Tour trọn gói bao gồm</h4>
                <div class="tag-list">
                    <div class="tag">Hàng không 5\*</div>
                    <div class="tag">Vé máy bay</div>
                    <div class="tag">Visa</div>
                    <div class="tag">Khách sạn 3\*</div>
                    <div class="tag">Hướng dẫn viên</div>
                    <div class="tag">Bảo hiểm du lịch</div>
                </div>
            </div>
        </div>

        <div class="tour-payment">
            <div class="tour-payment-header">
                <i class="fa-solid fa-money-bill"></i>
                <h4>Chi tiết giá</h4>
            </div>

            <div class="tour-payment-price">
                <div class="price-row">
                    <div class="label">Giá vé (2 khách)</div>
                    <div class="price">2 x 9.490.000 <small class="textCurrency">đ</small></div>
                </div>
                <div class="total-line">
                    <div class="label">Tổng cộng</div>
                    <div class="total-price">18.980.000 <small class="textCurrency">đ</small></div>
                </div>
            </div>
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

<script src="${pageContext.request.contextPath}/Javascript/ThanhToan.js"></script>
</body>
</html>
