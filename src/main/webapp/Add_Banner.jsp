<%--
  Created by IntelliJ IDEA.
  User: QUANG MINH
  Date: 1/27/2026
  Time: 9:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
          integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/Add_Banner.css">
</head>
<body>
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

<div class="main">
    <h2>Thêm Banner</h2>

    <form action="<%= request.getContextPath() %>/admin/banner/add"
          method="post" enctype="multipart/form-data"
          class="form-box">

        <label>Tiêu đề</label>
        <input type="text" name="title" required>

        <label>Hình ảnh</label>
        <input type="file" name="imgBanner" accept="image/*" required>

        <button type="submit" class="btn-add">Lưu</button>
        <a href="<%= request.getContextPath() %>/admin/banner" class="btn-cancel">Hủy</a>
    </form>
</div>
</body>
</html>
