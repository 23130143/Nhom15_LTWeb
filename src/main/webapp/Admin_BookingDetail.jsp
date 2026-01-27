<%--
  Created by IntelliJ IDEA.
  User: QUANG MINH
  Date: 1/27/2026
  Time: 11:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/Admin_BookingDetail.css">
</head>
<body>
<!-- ===== Sidebar ===== -->
<aside class="sidebar">
    <div class="brand">
        <div class="logo">✈️</div>
        <div>
            <h1>Travel Admin</h1>
            <p>Quản trị web du lịch</p>
        </div>
    </div>

    <nav class="menu">
        <a class="menu-item" href="#">Dashboard</a>
        <a class="menu-item active" href="#">Booking</a>
        <a class="menu-item" href="#">Tour</a>
        <a class="menu-item" href="#">Người dùng</a>
        <a class="menu-item logout" href="#">Đăng xuất</a>
    </nav>
</aside>

<!-- ===== Main ===== -->
<div class="main">
    <header class="topbar">
        <div class="welcome">
            Xin chào, <strong>Admin</strong>
        </div>
    </header>

    <section class="content">
        <h2 class="section-title">Chi tiết Booking #${booking.bookingID}</h2>

        <!-- ===== Thông tin booking ===== -->
        <div class="panel">
            <h3>Thông tin khách hàng</h3>
            <p>👤 Khách: ${booking.customerName}</p>
            <p>📧 Email: ${booking.email}</p>
            <p>🧳 Tour: ${booking.tourName}</p>
            <p>📅 Ngày đi: ${booking.departDate}</p>
        </div>

        <!-- ===== Vé máy bay ===== -->
        <div class="panel">
            <h3>✈️ Vé máy bay</h3>
            <form method="post" action="<%=request.getContextPath()%>/admin/booking/flight">
                <input type="hidden" name="bookingID" value="${booking.bookingID}">

                <div class="form-row">
                    <input name="airline" placeholder="Hãng bay">
                    <input name="flightCode" placeholder="Mã chuyến bay">
                </div>

                <div class="form-row">
                    <input type="datetime-local" name="departDate">
                    <input type="datetime-local" name="arrivalDate">
                </div>

                <div class="form-row">
                    <input name="numberSeat" placeholder="Số ghế">
                    <input name="qrCode" placeholder="QR Code">
                </div>

                <button class="btn-add">Lưu vé máy bay</button>
            </form>
        </div>

        <!-- ===== Khách sạn ===== -->
        <div class="panel">
            <h3>🏨 Khách sạn</h3>
            <form method="post" action="<%=request.getContextPath()%>/admin/booking/hotel">
                <input type="hidden" name="bookingID" value="${booking.bookingID}">

                <div class="form-row">
                    <input name="hotelName" placeholder="Tên khách sạn">
                    <input name="roomType" placeholder="Loại phòng">
                </div>

                <div class="form-row">
                    <input type="date" name="checkIn">
                    <input type="date" name="checkOut">
                </div>

                <button class="btn-add">Lưu khách sạn</button>
            </form>
        </div>

        <!-- ===== Xe đưa đón ===== -->
        <div class="panel">
            <h3>🚌 Xe đưa đón</h3>
            <form method="post" action="<%=request.getContextPath()%>/admin/booking/coach">
                <input type="hidden" name="bookingID" value="${booking.bookingID}">

                <div class="form-row">
                    <input name="coachType" placeholder="Loại xe">
                    <input name="seatNumber" placeholder="Số ghế">
                </div>

                <div class="form-row">
                    <input name="pickupLocation" placeholder="Điểm đón">
                    <input name="dropoffLocation" placeholder="Điểm trả">
                </div>

                <button class="btn-add">Lưu xe</button>
            </form>
        </div>

        <!-- ===== Gửi mail ===== -->
        <div style="text-align:right;margin-top:20px;">
            <a href="<%=request.getContextPath()%>/admin/booking/send-mail?id=${booking.bookingID}"
               class="btn-add">
                📧 Gửi mail cho khách
            </a>
        </div>
    </section>
</div>
</body>
</html>
