<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.TourWithImage" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
          integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/AdSanPham.css">
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
        <a class="menu-item" href="<%= request.getContextPath() %>/Admin_DashBoard.jsp">Dashboard</a>
        <a class="menu-item active" href="<%= request.getContextPath() %>/AdSanPham.jsp">Tour</a>
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
        <h2 class="section-title">Quản lý tour</h2>

        <div class="search-box">
            <input class="search" type="text" placeholder="Tìm tour...">
            <a href="<%= request.getContextPath() %>/add_tour.jsp" class="btn-add">+ Thêm Tour</a>
        </div>

        <!-- Danh sách Tour -->
        <div class="panel">
            <table class="activity-table">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Tên tour</th>
                    <th>Giá</th>
                    <th>Nơi khởi hành</th>
                    <th>Ngày khởi hành</th>
                    <th>Thời gian</th>
                    <th>Số lượng khách</th>
                    <th>Số lượng tour</th>
                    <th>Số lượng đã bán</th>
                    <th>Hành động</th>
                </tr>
                </thead>
                <%
                    int i = 1;
                    List<TourWithImage> tours = (List<TourWithImage>) request.getAttribute("tours");

                    if (tours != null) {
                        for (TourWithImage t : tours) {
                %>
                <tr>
                    <td><%= i++ %>
                    </td>
                    <td><%= t.getTour().getTourID() %>
                    </td>
                    <td class="price-cell">
                        <div class="price-adult">
                            👤 NL:
                            <strong><%= String.format("%,.0f", t.getTour().getAdultPrice()) %>
                            </strong> VND
                        </div>
                        <div class="price-child">
                            🧒 TE:
                            <%= String.format("%,.0f", t.getTour().getChildPrice()) %> VND
                        </div>
                    </td>
                    <td><%= t.getTour().getDeparture() %>
                    </td>
                    <td><%= t.getTour().getDeparture() %>
                    </td>
                    <td><%= t.getTour().getDuration() %>
                    </td>
                    <td><%= t.getTour().getAvailableCapacity() %>
                    </td>
                    <td><%= t.getTour().getSlTour() %>
                    </td>
                    <td><%= t.getTour().getSoldQuantity() %>
                    </td>
                    <td>
                        <a href="edit-tour?id=<%= t.getTour().getTourID() %>" class="btn btn-warning">Sửa</a>
                        <a href="delete-tour?id=<%= t.getTour().getTourID() %>"
                           onclick="return confirm('Xóa tour này?')"
                           class="btn btn-danger">Xóa</a>
                    </td>
                </tr>
                <%
                    }
                } else {
                %>
                <tr>
                    <td colspan="10" style="text-align:center; padding:20px;">
                        Không có dữ liệu tour
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