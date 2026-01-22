<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.User" %>
<%@ page import="java.util.List" %>
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
                <%
                    List<User> users = (List<User>) request.getAttribute("users");
                    if (users != null && !users.isEmpty()) {
                        for (User u : users) {
                %>
                <tr>
                    <td><%= u.getUserID() %>
                    </td>
                    <td><%= u.getFullName() %>
                    </td>
                    <td>******</td>
                    <%-- KHÔNG nên hiển thị password --%>
                    <td><%= u.getEmail() %>
                    </td>
                    <td><%= u.getPhone() %>
                    </td>
                    <td><%= u.getCreatedAt() %>
                    </td>
                    <td>
                        <a href="EditUser?id=<%= u.getUserID() %>" class="btn-edit">Sửa</a>
                        <a href="DeleteUser?id=<%= u.getUserID() %>"
                           class="btn-delete"
                           onclick="return confirm('Bạn có chắc muốn xóa user này?')">
                            Xóa
                        </a>
                    </td>
                </tr>
                <%
                    }
                } else {
                %>
                <tr>
                    <td colspan="7" style="text-align:center">Không có người dùng</td>
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