<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.ActivityLog" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.DashboardSummary" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/Admin_DashBoard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
          integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>
<%
    DashboardSummary summary = (DashboardSummary) request.getAttribute("summary");
    Integer totalTours = (Integer) request.getAttribute("totalTours");
    Integer totalUsers = (Integer) request.getAttribute("totalUsers");
    Integer todayBookings = (Integer) request.getAttribute("todayBookings");
    Double monthlyRevenue = (Double) request.getAttribute("monthlyRevenue");

    List<vn.edu.hcmuaf.fit.nhom15_ltweb.model.ActivityLog> activities = (List<ActivityLog>) request.getAttribute("activities");
%>

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
        <a class="menu-item active" href="<%= request.getContextPath() %>/Admin_DashBoard.jsp">DashBoard</a>
        <a class="menu-item" href="<%= request.getContextPath() %>/AdSanPham.jsp">Tour</a>
        <a class="menu-item" href="<%= request.getContextPath() %>/Admin_NguoiDung.jsp">Người dùng</a>
        <a class="menu-item" href="<%= request.getContextPath() %>/Admin_KhuyenMai.jsp">Khuyến mãi</a>
        <a class="menu-item" href="<%= request.getContextPath() %>/Admin_Banner.jsp">Banner</a>
        <a class="menu-item logout" href="<%= request.getContextPath() %>/index.jsp">Đăng xuất</a>
    </nav>
</aside>

<!-- Main content -->
<div class="main">
    <header class="topbar">
        <div class="controls">
            <div class="welcome">Xin chào, <strong>Admin</strong></div>
        </div>
    </header>

    <section class="content">
        <h2 class="section-title">Bảng điều khiển</h2>

        <!-- KPI cards -->
        <div class="cards">
            <div class="card">
                <div class="card-title">Tổng số điểm đến</div>
                <div class="card-value"><%= summary.getTotalLocations() %>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-title">Người dùng</div>
            <div class="card-value"><%= summary.getTotalUsers() %>
            </div>
        </div>

        <div class="card">
            <div class="card-title">Đặt chỗ hôm nay</div>
            <div class="card-value"><%= summary.getBookingToday() %>
            </div>
        </div>


        <div class="card">
            <div class="card-title">Doanh thu tháng</div>
            <div class="card-value"><%= summary.getRevenueMonth() %>
            </div>
        </div>

        <!-- Recent activity / bookings -->
        <div class="panel">
            <h3>Hoạt động gần đây</h3>

            <table class="activity-table">
                <thead>
                <tr>
                    <th>Ngày</th>
                    <th>Người dùng</th>
                    <th>Hoạt động</th>
                    <th>Chi tiết</th>
                </tr>
                </thead>
                <tbody>
                <%
                    if (activities != null && !activities.isEmpty()) {
                        for (vn.edu.hcmuaf.fit.nhom15_ltweb.model.ActivityLog log : activities) {
                %>
                <tr>
                    <td><%= log.getCreatedAt() %>
                    </td>
                    <td><%= log.getUsername() %>
                    </td>
                    <td><%= log.getAction() %>
                    </td>
                    <td><%= log.getDetail() %>
                    </td>
                </tr>
                <%
                    }
                } else {
                %>
                <tr>
                    <td colspan="4" style="text-align:center;">
                        Chưa có hoạt động nào
                    </td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>
        </div>
    </section>
</div>
</body>
</html>
