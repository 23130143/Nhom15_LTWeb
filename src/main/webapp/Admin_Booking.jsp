<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.Booking" %>
<%@ page import="java.util.List" %><%--
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
<!-- Sidebar -->
<aside class="sidebar">
    <div class="brand">
        <div class="logo">✈️</div>
        <div>
            <h1>Travel Admin</h1>
            <p>Quản trị web du lịch</p>
        </div>
    </div>

    <nav class="menu">
        <a class="menu-item"
           href="<%= request.getContextPath() %>/admin/dashboard">
            DashBoard
        </a>

        <a class="menu-item"
           href="<%= request.getContextPath() %>/admin/tours">
            Tour
        </a>

        <a class="menu-item"
           href="<%= request.getContextPath() %>/admin/users">
            Người dùng
        </a>

        <a class="menu-item"
           href="<%= request.getContextPath() %>/admin/promotions">
            Khuyến mãi
        </a>

        <a class="menu-item"
           href="<%= request.getContextPath() %>/admin/banners">
            Banner
        </a>

        <a class="menu-item active"
           href="<%= request.getContextPath() %>/admin/bookings">
            Booking
        </a>

        <a class="menu-item logout"
           href="<%= request.getContextPath() %>/logout">
            Đăng xuất
        </a>
    </nav>

</aside>

<!-- Main -->
<div class="main">
    <header class="topbar">
        <div class="welcome">
            Xin chào, <strong>Admin</strong>
        </div>
    </header>

    <section class="content">
        <h2 class="section-title">Danh sách Booking</h2>

        <!-- Search -->
        <div class="search-box">
            <form class="search-form"
                  action="<%= request.getContextPath() %>/admin/bookings"
                  method="get">
                <input class="search"
                       type="text"
                       name="keyword"
                       placeholder="Tìm theo mã booking / khách hàng / tour"
                       value="<%= request.getParameter("keyword") != null
                               ? request.getParameter("keyword") : "" %>">
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
                    <th>Tour</th>
                    <th>Ngày đi</th>
                    <th>Người lớn</th>
                    <th>Trẻ em</th>
                    <th>Tổng tiền</th>
                    <th>Trạng thái</th>
                    <th>Hành động</th>
                </tr>
                </thead>

                <tbody>
                <%
                    List<Booking> bookings =
                            (List<Booking>) request.getAttribute("bookings");

                    if (bookings != null && !bookings.isEmpty()) {
                        for (Booking b : bookings) {
                %>
                <tr>
                    <td><%= b.getBookingID() %>
                    </td>
                    <td><%= b.getUserName() %>
                    </td>
                    <td><%= b.getTourName() %>
                    </td>
                    <td><%= b.getStartDate() %>
                    </td>
                    <td><%= b.getAdultCount() %>
                    </td>
                    <td><%= b.getChildCount() %>
                    </td>
                    <td><%= String.format("%,.0f VND", b.getTotalPrice()) %>
                    </td>

                    <td>
                        <span class="status <%= b.getStatus().toLowerCase() %>">
                            <%= b.getStatus() %>
                        </span>
                    </td>

                    <td>
                        <a class="btn-edit"
                           href="<%= request.getContextPath() %>/admin/bookingdetail?id=<%= b.getBookingID() %>">
                            Xem
                        </a>
                    </td>
                </tr>
                <%
                    }
                } else {
                %>
                <tr>
                    <td colspan="9" style="text-align:center; padding:20px">
                        Không có booking
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
