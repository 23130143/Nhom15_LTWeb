<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/Admin_NguoiDung.css">
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
        <a class="menu-item active" href="<%= request.getContextPath() %>/Admin_NguoiDung.jsp">Người dùng</a>
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
        <h2 class="section-title">Quản lý người dùng</h2>

        <div class="search-box">
            <input class="search" type="text" placeholder="Tìm người dùng...">
        </div>

        <!-- Danh sách User -->
        <div class="panel">
            <table class="activity-table">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Tên</th>
                    <th>Password</th>
                    <th>Email</th>
                    <th>SĐT</th>
                    <th>Ngày tạo</th>
                    <th>Hành động</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td>1</td>
                    <td>Nguyễn Văn A</td>
                    <td>ABC123</td>
                    <td>vana@example.com</td>
                    <td>0909123456</td>
                    <td>12/12/2025</td>
                    <td>
                        <a href="#" class="btn-edit">Sửa</a>
                        <a href="#" class="btn-delete">Xóa</a>
                    </td>
                </tr>

                <tr>
                    <td>2</td>
                    <td>Trần Thị B</td>
                    <td>ABC123</td>
                    <td>tranb@example.com</td>
                    <td>0912345678</td>
                    <td>05/01/2026</td>
                    <td>
                        <a href="#" class="btn-edit">Sửa</a>
                        <a href="#" class="btn-delete">Xóa</a>
                    </td>
                </tr>

                <tr>
                    <td>3</td>
                    <td>Phạm Hoàng C</td>
                    <td>ABC123</td>
                    <td>hoangc@example.com</td>
                    <td>0988123456</td>
                    <td>20/02/2026</td>
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