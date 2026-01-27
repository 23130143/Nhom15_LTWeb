<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.Banner" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/Admin_Banner.css">
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

        <a class="menu-item active"
           href="<%= request.getContextPath() %>/admin/banners">
            Banner
        </a>

        <a class="menu-item"
           href="<%= request.getContextPath() %>/admin/bookings">
            Booking
        </a>

        <a class="menu-item logout"
           href="<%= request.getContextPath() %>/logout">
            Đăng xuất
        </a>
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
        <h2 class="section-title">Quản lý Banner</h2>

        <!-- Search + Add -->
        <div class="search-box">
            <form class="search-form"
                  action="<%= request.getContextPath() %>/admin/banner"
                  method="get">
                <input class="search"
                       type="text"
                       name="keyword"
                       placeholder="Tìm Banner...">
                <button type="submit" class="btn-search">🔍</button>
            </form>

            <a href="<%= request.getContextPath() %>/Them_Banner.jsp"
               class="btn-add">
                + Thêm Banner
            </a>
        </div>

        <!-- Danh sách Banner -->
        <div class="panel">
            <table class="activity-table">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Tiêu đề</th>
                    <th>Hình ảnh</th>
                    <th>Ngày tạo</th>
                    <th>Hành động</th>
                </tr>
                </thead>

                <tbody>
                <%
                    List<Banner> banners = (List<Banner>) request.getAttribute("banners");
                    if (banners != null) {
                        for (Banner b : banners) {
                %>
                <tr>
                    <td><%= b.getBannerID() %>
                    </td>
                    <td><%= b.getTitle() %>
                    </td>
                    <td>
                        <img src="<%= request.getContextPath() + b.getImgBanner() %>"
                             width="120" class="banner-img">
                    </td>
                    <td><%= b.getCreatedDate() %>
                    </td>
                    <td>
                        <a href="#" class="btn-edit">Sửa</a>
                        <a href="#" class="btn-delete">Xóa</a>
                    </td>
                </tr>
                <%
                    }
                } else {
                %>
                <tr>
                    <td colspan="7" style="text-align:center">Chưa có banner</td>
                </tr>
                <%}%>
                </tbody>

            </table>
        </div>

    </section>
</div>

</body>
</html>
