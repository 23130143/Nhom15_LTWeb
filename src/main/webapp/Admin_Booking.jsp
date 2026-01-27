<%--
  Created by IntelliJ IDEA.
  User: QUANG MINH
  Date: 1/27/2026
  Time: 11:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/Css/Admin_Booking.css">
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
        <h2 class="section-title">Quản lý Booking</h2>

        <!-- Search -->
        <div class="search-box">
            <form class="search-form"
                  action="<%=request.getContextPath()%>/admin/bookings"
                  method="get">
                <input class="search"
                       type="text"
                       name="keyword"
                       placeholder="Tìm theo mã booking hoặc tên khách...">
                <button class="btn-search">🔍</button>
            </form>
        </div>

        <!-- Table -->
        <div class="panel">
            <table class="activity-table">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Khách hàng</th>
                    <th>Email</th>
                    <th>Tour</th>
                    <th>Ngày đặt</th>
                    <th>Trạng thái</th>
                    <th>Hành động</th>
                </tr>
                </thead>

                <tbody>
                <%--                <%--%>
                <%--                    List<Booking> bookings =--%>
                <%--                            (List<Booking>) request.getAttribute("bookings");--%>

                <%--                    if (bookings != null && !bookings.isEmpty()) {--%>
                <%--                        for (Booking b : bookings) {--%>
                <%--                %>--%>
                <%--                <tr>--%>
                <%--                    <td><%= b.getBookingID() %>--%>
                <%--                    </td>--%>
                <%--                    <td><%= b.getCustomerName() %>--%>
                <%--                    </td>--%>
                <%--                    <td><%= b.getEmail() %>--%>
                <%--                    </td>--%>
                <%--                    <td><%= b.getTourName() %>--%>
                <%--                    </td>--%>
                <%--                    <td><%= b.getCreatedDate() %>--%>
                <%--                    </td>--%>
                <td>
                    <span style="color:#00ff99;">Đã thanh toán</span>
                </td>
                <td>
                    <a class="btn-edit"
                       href="<%=request.getContextPath()%>/admin/booking/detail?id=<%= b.getBookingID() %>">
                        Xem chi tiết
                    </a>
                </td>
                </tr>
                <%
                    }
                    }
                    else
                    {
                %>
                <tr>
                    <td colspan="7" style="text-align:center;padding:20px">
                        Chưa có booking
                    </td>
                </tr>
                <% } %>
                </tbody>
            </table>
        </div>
    </section>
</div>
</body>
</html>
