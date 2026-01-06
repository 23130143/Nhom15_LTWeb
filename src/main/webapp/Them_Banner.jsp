<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/Them_Banner.css">
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
        <a class="menu-item" href="${pageContext.request.contextPath}/Admin_DashBoard.jsp">DashBoard</a>
        <a class="menu-item" href="${pageContext.request.contextPath}/AdSanPham.jsp">Tour</a>
        <a class="menu-item" href="${pageContext.request.contextPath}/Admin_NguoiDung.jsp">Người dùng</a>
        <a class="menu-item" href="${pageContext.request.contextPath}/Admin_KhuyenMai.jsp">Khuyến mãi</a>
        <a class="menu-item active" href="${pageContext.request.contextPath}/Admin_Banner.jsp">Banner</a>
        <a class="menu-item logout" href="${pageContext.request.contextPath}/Logout">Đăng xuất</a>
    </nav>
</aside>

<!-- Main Content -->
<div class="main">
    <header class="topbar">
        <div class="controls">
            <div class="welcome">Xin chào, <strong>Admin</strong></div>
        </div>
    </header>

    <section class="content">
        <h2 class="section-title">Thêm Banner</h2>

        <div class="form-container">
            <form action="#" method="post" enctype="multipart/form-data">
                <label>Tiêu đề Banner</label>
                <input type="text" name="title" placeholder="Nhập tiêu đề banner" required>

                <label>Hình ảnh Banner</label>
                <input type="file" name="image" accept="image/*" required>

                <label>Mô tả</label>
                <textarea name="description" placeholder="Nhập mô tả ngắn..."></textarea>

                <div class="button-group">
                    <button type="submit" class="btn-save">Lưu</button>
                    <a href="${pageContext.request.contextPath}/Admin_Banner.jsp" class="btn-cancel">Hủy</a>
                </div>
            </form>
        </div>
    </section>
</div>
</body>
</html>