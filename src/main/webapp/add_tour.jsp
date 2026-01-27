<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
          integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/add_tour.css">
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

        <a class="menu-item active"
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

    <div class="form-container">
        <h2>Thêm Tour Mới</h2>
        <form action="<%= request.getContextPath() %>/admin/add-tour" method="post" enctype="multipart/form-data"
              class="content">
            <%--            <div class="form-group">--%>
            <%--                <label for="id_tour">ID Tour</label>--%>
            <%--                <input type="text" id="id_tour" name="ID_Tour" maxlength="5">--%>
            <%--            </div>--%>

            <div class="form-group">
                <label for="id_category">ID Category</label>
                <input type="text" id="id_category" name="ID_Category">
            </div>

            <%--            <div class="form-group">--%>
            <%--                <label for="id_km">ID Khuyến Mãi</label>--%>
            <%--                <input type="text" id="id_km" name="ID_KhuyenMai" maxlength="5">--%>
            <%--            </div>--%>

            <div class="form-group">
                <label for="title">Tên Tour</label>
                <input type="text" id="title" name="TourTitle" maxlength="50">
            </div>

            <div class="form-group">
                <label for="desc">Mô tả</label>
                <textarea id="desc" name="Decripstion" rows="5"></textarea>
            </div>

            <div class="form-group">
                <label for="A_price">Giá người lớn (VND)</label>
                <input type="number" id="A_price" name="A_Price" step="1000">
            </div>

            <div class="form-group">
                <label for="C_price">Giá trẻ em (VND)</label>
                <input type="number" id="C_price" name="C_Price" step="1000">
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
                <label for="images">Ảnh Tour</label>
                <input type="file" id="images" name="Image[]" multiple accept="image/*">
            </div>

            <div class="form-actions">
                <%--                <a href="<%= request.getContextPath() %>/AdSanPham.jsp" class="btn-submit">Lưu Tour</a>--%>
                <button type="submit" class="btn-submit">Lưu Tour</button>
                <a href="<%= request.getContextPath() %>/AdSanPham.jsp" class="btn-cancel">Hủy</a>
            </div>
        </form>
    </div>
</div>
</body>
</html>
