<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.Cart" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.CartItem" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.User" %>

<%
    // 1. Lấy thông tin người dùng
    User userHeader = (User) session.getAttribute("user");
    boolean isUserLoggedIn = (userHeader != null);

    // 2. Lấy giỏ hàng từ Session
    Cart cart = (Cart) session.getAttribute("cart");

    // Nếu giỏ hàng null thì tạo mới
    if (cart == null) {
        cart = new Cart();
    }

    // --- DÒNG QUAN TRỌNG ĐỂ SỬA LỖI ---
    // Gán biến cart vào cartHeader để dòng 73 và các phần Header cũ hiểu được
    Cart cartHeader = cart;
    // ----------------------------------

    // 3. Khởi tạo formatter
    DecimalFormat formatter = new DecimalFormat("###,###,###");
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thanh Toán - TravelNow</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">
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
    <form action="${pageContext.request.contextPath}/checkout" method="post" class="payment-section">
        <i class="fa-solid fa-shield"></i>
        <h3>Chọn hình thức thanh toán</h3>

        <div class="payment-option">
            <input type="radio" id="qr" name="payment" value="qr" checked>
            <label for="qr" style="cursor: pointer; display: flex; align-items: center; width: 100%;">
                <div class="icon">
                    <img src="${pageContext.request.contextPath}/IMAGE/asset/images/QR.png" alt="QR Code"/>
                </div>
                <div class="info">
                    <h3 class="title">Chuyển khoản QR</h3>
                    <p class="desc">Quét mã QR để chuyển khoản • Miễn phí</p>
                </div>
            </label>
        </div>

        <div class="payment-option">
            <input type="radio" id="direct" name="payment" value="office">
            <label for="direct" style="cursor: pointer; display: flex; align-items: center; width: 100%;">
                <div class="icon">
                    <img src="${pageContext.request.contextPath}/IMAGE/asset/images/office.png" alt="office"/>
                </div>
                <div class="info">
                    <h3 class="title">Tại văn phòng</h3>
                    <p class="desc">Thanh toán trực tiếp • Miễn phí</p>
                </div>
            </label>
        </div>

        <p class="note">Bằng việc thanh toán, Quý khách đồng ý với <a href="#">Điều khoản sử dụng</a>.</p>
        <button type="submit" class="confirm-btn">Xác nhận thanh toán</button>
    </form>

    <div class="summary-section">
        <% for(CartItem item : cart.getItems()) { %>
        <div class="tour-card" style="margin-bottom: 20px;">
            <div class="tour-info">
                <div class="tour-header">
                    <i class="fa-solid fa-map"></i>
                    <h3> Thông tin tour </h3>
                </div>

                <div class="tour-name">
                    <h3><%= item.getTour().getTitle() %></h3>
                    <div class="tour-meta">Mã Tour: <%= item.getTour().getTourID() %></div>
                </div>

                <div class="tour-dates">
                    <div class="tour-summary">
                        <span>Thời gian: <%= item.getTour().getDuration() %></span>
                        <br>
                        <span>Số lượng: <%= item.getAdultQty() %> Người lớn
                        <% if(item.getChildQty() > 0) { %>
                            , <%= item.getChildQty() %> Trẻ em
                        <% } %>
                        </span>
                    </div>
                </div>
            </div>

            <div class="tour-payment" style="border-top: 1px dashed #ccc; padding-top: 10px; margin-top: 10px;">
                <div class="tour-payment-price">
                    <div class="price-row">
                        <div class="label">Thành tiền:</div>
                        <div class="price"><%= formatter.format(item.getFinalPrice()) %> <small class="textCurrency">đ</small></div>
                    </div>
                </div>
            </div>
        </div>
        <% } %>

        <div class="tour-payment" style="background: #fff; padding: 20px; border-radius: 10px; margin-top: 20px;">
            <div class="tour-payment-header">
                <i class="fa-solid fa-money-bill"></i>
                <h4>Tổng thanh toán</h4>
            </div>

            <div class="tour-payment-price">
                <div class="total-line">
                    <div class="label">Tổng cộng</div>
                    <div class="total-price" style="font-size: 24px; color: red;">
                        <%= formatter.format(cart.getTotal()) %> <small class="textCurrency">đ</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<footer class="footer">
    <div class="footer-bottom">
        <div class="ft_container">
            <span>@2025 TravelNow. All Rights Reserved.</span>
        </div>
    </div>
</footer>

</body>
</html>