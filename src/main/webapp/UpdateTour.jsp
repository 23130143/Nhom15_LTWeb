<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
          integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/UpdateStyle.css">
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
        <a class="menu-item active" href="${pageContext.request.contextPath}/AdSanPham.jsp">Tour</a>
        <a class="menu-item" href="${pageContext.request.contextPath}/Admin_NguoiDung.jsp">Người dùng</a>
        <a class="menu-item" href="${pageContext.request.contextPath}/Admin_KhuyenMai.jsp">Khuyến mãi</a>
        <a class="menu-item" href="${pageContext.request.contextPath}/Admin_Banner.jsp">Banner</a>
        <a class="menu-item logout" href="${pageContext.request.contextPath}/Logout">Đăng xuất</a>
    </nav>
</aside>

<!-- Main content -->
<div class="main">
    <header class="topbar">
        <div class="controls">
            <div class="welcome">Xin chào, <strong>Admin</strong></div>
        </div>
    </header>

    <div class="form-container">
        <h2>Thay Đổi Tour</h2>

        <div class="content">
            <div class="form-group">
                <label for="id_tour">ID Tour</label>
                <input type="text" id="id_tour" name="ID_Tour" maxlength="5">
            </div>

            <div class="form-group">
                <label for="id_category">ID Category</label>
                <input type="text" id="id_category" name="ID_Category">
            </div>

            <div class="form-group">
                <label for="id_km">ID Khuyến Mãi</label>
                <input type="text" id="id_km" name="ID_KhuyenMai" maxlength="5">
            </div>

            <div class="form-group">
                <label for="title">Tên Tour</label>
                <input type="text" id="title" name="TourTitle" maxlength="50">
            </div>

            <div class="form-group">
                <label for="desc">Mô tả</label>
                <textarea id="desc" name="Decripstion" rows="5"></textarea>
            </div>

            <div class="form-group">
                <label for="price">Giá (VND)</label>
                <input type="number" id="price" name="Normal_Price" step="1000">
            </div>

            <div class="form-group">
                <label for="duration">Thời gian (ngày)</label>
                <input type="number" id="duration" name="Duration" step="0.5">
            </div>

            <div class="form-group">
                <label for="start">Ngày khởi hành</label>
                <input type="date" id="start" name="StartDate">
            </div>

            <div class="form-group">
                <label for="end">Ngày kết thúc</label>
                <input type="date" id="end" name="End_Date">
            </div>

            <div class="form-group">
                <label for="destination">Điểm đến</label>
                <input type="text" id="destination" name="Destinnation">
            </div>

            <div class="form-group">
                <label for="departure">Nơi khởi hành</label>
                <input type="text" id="departure" name="Departure">
            </div>

            <div class="form-group">
                <label for="succhua">Sức chứa khả dụng</label>
                <input type="number" id="succhua" name="SucChuaKhaDung">
            </div>

            <div class="form-group">
                <label for="sltour">Số lượng tour</label>
                <input type="number" id="sltour" name="SlTour">
            </div>

            <div class="form-group">
                <label for="image">Ảnh Tour</label>
                <input type="file" id="image" name="Image">
            </div>

            <div class="form-actions">
                <a href="${pageContext.request.contextPath}/AdSanPham.jsp" class="btn-submit">Lưu Tour</a>
                <a href="${pageContext.request.contextPath}/AdSanPham.jsp" class="btn-cancel">Hủy</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>