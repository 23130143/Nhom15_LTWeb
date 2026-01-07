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
        <a class="menu-item" href="<%= request.getContextPath() %>/Admin_DashBoard.jsp">DashBoard</a>
        <a class="menu-item" href="<%= request.getContextPath() %>/AdSanPham.jsp">Tour</a>
        <a class="menu-item" href="<%= request.getContextPath() %>/Admin_NguoiDung.jsp">Người dùng</a>
        <a class="menu-item" href="<%= request.getContextPath() %>/Admin_KhuyenMai.jsp">Khuyến mãi</a>
        <a class="menu-item active" href="<%= request.getContextPath() %>/Admin_Banner.jsp">Banner</a>
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
        <h2 class="section-title">Quản lý Banner</h2>

        <!-- Search + Add -->
        <div class="search-box">
            <input class="search" type="text" placeholder="Tìm Banner...">
            <a href="<%= request.getContextPath() %>/Them_Banner.jsp" class="btn-add">+ Thêm Banner</a>
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
                <tr>
                    <td>1</td>
                    <td>Summer Sale 2025</td>
                    <td><img src="<%= request.getContextPath() %>/IMAGE/asset/images/search.gif" width="120" class="banner-img" alt="Banner Summer Sale"></td>
                    <td>10/11/2025</td>
                    <td>
                        <a href="#" class="btn-edit">Sửa</a>
                        <a href="#" class="btn-delete">Xóa</a>
                    </td>
                </tr>

                <tr>
                    <td>2</td>
                    <td>Khuyến mãi Tết</td>
                    <td><img src="<%= request.getContextPath() %>/IMAGE/asset/images/search.gif" width="120" class="banner-img" alt="Banner Tết"></td>
                    <td>25/10/2025</td>
                    <td>
                        <a href="#" class="btn-edit">Sửa</a>
                        <a href="#" class="btn-delete">Xóa</a>
                    </td>
                </tr>

                <tr>
                    <td>3</td>
                    <td>Tour Cao Cấp</td>
                    <td><img src="<%= request.getContextPath() %>/IMAGE/asset/images/search.gif" width="120" class="banner-img" alt="Banner Tour Cao Cấp"></td>
                    <td>01/08/2025</td>
                    <td>
                        <a href="#" class="btn-edit">Sửa</a>
                        <a href="#" class="btn-delete">Xóa</a>
                    </td>
                </tr>
                </tbody>

            </table>
        </div>

    </section>
</div>

</body>
</html>
