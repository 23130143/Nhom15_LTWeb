<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.Cart" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.User" %>
<%@ page import="java.text.DecimalFormat" %>

<%
    // 1. Lấy Giỏ hàng và User (để hiển thị Header)
    Cart cartHeader = (Cart) session.getAttribute("cart");
    User userHeader = (User) session.getAttribute("user");
    boolean isUserLoggedIn = (userHeader != null);

    // 2. NHẬN DỮ LIỆU TỪ CONTROLLER GỬI SANG (Sửa lỗi ở đây)
    // Lấy mã đơn hàng và số tiền
    String orderCode = (String) request.getAttribute("orderCode");
    Double totalAmount = (Double) request.getAttribute("totalAmount");

    // Kiểm tra null (để tránh lỗi nếu chạy trực tiếp file này mà không qua Checkout)
    if(orderCode == null) orderCode = "Chưa có mã";
    if(totalAmount == null) totalAmount = 0.0;

    // 3. Khởi tạo formatter để định dạng tiền tệ (ví dụ: 1.000.000 đ)
    DecimalFormat formatter = new DecimalFormat("###,###,###");
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thanh Toán QR - TravelNow</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/ThanhToanMaQR.css">
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
    <div class="main-header">
        <h3>Thông tin chuyển khoản</h3>
        <p>Vui lòng chuyển khoản đúng nội dung bên dưới để hệ thống tự động xác nhận.</p>
    </div>

    <div class="main-content">
        <div class="QR">
            <p>Quét mã QR để thanh toán nhanh</p>
            <img src="${pageContext.request.contextPath}/IMAGE/asset/images/QR-Bank.png" alt="QR-Bank"/>
        </div>

        <div class="main-info">
            <div class="bank">
                <p>Ngân hàng</p>
                <div class="nd1">MB Bank - Ngân hàng TMCP Quân đội</div>
            </div>

            <div class="account-number">
                <p>Số tài khoản</p>
                <div class="info-row">
                    <h4>098 1420 151</h4>
                    <span class="copy">Sao chép</span>
                </div>
            </div>

            <div class="beneficiary">
                <p>Người thụ hưởng</p>
                <div class="nd2">Công ty Cổ Phần TravelNow</div>
            </div>

            <div class="money">
                <p>Số tiền</p>
                <div class="info-row">
                    <span class="price"><%= formatter.format(totalAmount) %> đ</span>
                    <span class="copy">Sao chép</span>
                </div>
            </div>

            <div class="import">
                <p>Nội dung chuyển khoản</p>
                <div class="info-row">
                    <h4 style="color: red;"><%= orderCode %></h4>
                    <span class="copy">Sao chép</span>
                </div>
            </div>

            <div class="note">* Giao dịch sẽ tự động xác nhận trong vòng 5 phút.</div>
        </div>
    </div>

    <div class="success">
        <button class="btn-confirm" onclick="window.location.href='${pageContext.request.contextPath}/PaymentOnline.jsp'">Tôi đã chuyển khoản</button>
        <div class="link-change">
            <i class="fa-solid fa-repeat"></i>
            <a href="${pageContext.request.contextPath}/home">Về trang chủ</a>
        </div>
    </div>
</section>

<script src="${pageContext.request.contextPath}/Javascript/NutCopy.js"></script>
</body>
</html>