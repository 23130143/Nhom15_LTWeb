<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%
    // Lấy dữ liệu từ Controller
    String orderCode = (String) request.getAttribute("orderCode");
    Double totalAmount = (Double) request.getAttribute("totalAmount");

    if (orderCode == null) orderCode = "DLxxxxxx"; // Giá trị mặc định nếu lỗi
    if (totalAmount == null) totalAmount = 0.0;

    NumberFormat formatter = NumberFormat.getInstance(new Locale("vi", "VN"));
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
    <div class="header-content"><div class="container"><div class="logo"><img src="${pageContext.request.contextPath}/IMAGE/asset/images/LOGO.png" alt="Travel" style="height:80px;"></div></div></div>
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