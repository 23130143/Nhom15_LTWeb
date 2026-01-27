<%--
  Created by IntelliJ IDEA.
  User: QUANG MINH
  Date: 1/27/2026
  Time: 6:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
          integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/Add_Promotion.css">
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
        <a class="menu-item" href="<%= request.getContextPath() %>/Admin_DashBoard.jsp">DashBoard</a>
        <a class="menu-item " href="<%= request.getContextPath() %>/AdSanPham.jsp">Tour</a>
        <a class="menu-item" href="<%= request.getContextPath() %>/Admin_NguoiDung.jsp">Người dùng</a>
        <a class="menu-item active" href="<%= request.getContextPath() %>/Admin_KhuyenMai.jsp">Khuyến mãi</a>
        <a class="menu-item" href="<%= request.getContextPath() %>/Admin_Banner.jsp">Banner</a>
        <a class="menu-item logout" href="<%= request.getContextPath() %>/index.jsp">Đăng xuất</a>
    </nav>
</aside>

<div class="main">
    <header class="topbar">
        <div class="controls">
            <div class="welcome">Xin chào, <strong>Admin</strong></div>
        </div>
    </header>

    <div class="form-container">
        <h2>Thêm Khuyến Mãi Mới</h2>
        <form action="<%= request.getContextPath() %>/admin/promotions" method="post" enctype="multipart/form-data"
              class="content">

            <div class="form-group">
                <label for="name">Tên khuyến mãi</label>
                <input type="text" id="name" name="promoName" maxlength="50">
            </div>

            <div class="form-group">
                <label for="type">Loại khuyến mãi</label>
                <select id="promoType" name="promoType" required>
                    <option value="">-- Chọn loại --</option>
                    <option value="PERCENT">Giảm theo %</option>
                    <option value="FIXED">Giảm tiền cố định</option>
                </select>
            </div>

            <div class="form-group">
                <label for="discount">Giá giảm</label>
                <input type="number" id="discount" name="discount" placeholder="10 hay 100000" min="0" required>
            </div>

            <div class="form-group">
                <label for="startDate">Ngày bắt đầu</label>
                <input type="date" id="startDate" name="startDate" required>
            </div>

            <div class="form-group">
                <label for="endDate">Ngày kết thúc</label>
                <input type="date" id="endDate" name="endDate" required>
            </div>

            <% if (request.getAttribute("error") != null) { %>
            <p style="color:red; margin-bottom:10px;">
                <%= request.getAttribute("error") %>
            </p>
            <% } %>


            <div class="form-actions">
                <%--                <a href="<%= request.getContextPath() %>/AdSanPham.jsp" class="btn-submit">Lưu Tour</a>--%>
                <button type="submit" class="btn-submit">Lưu khuyến mãi</button>
                <a href="<%= request.getContextPath() %>/admin/promotions" class="btn-cancel">Hủy</a>
            </div>
        </form>
    </div>
</div>
</body>
<script>
    const startDateInput = document.getElementById("startDate");
    const endDateInput = document.getElementById("endDate");

    startDateInput.addEventListener("change", function () {
        // không cho ngày kết thúc nhỏ hơn ngày bắt đầu
        endDateInput.min = this.value;

        // nếu endDate đang < startDate → reset
        if (endDateInput.value && endDateInput.value < this.value) {
            endDateInput.value = "";
        }
    });
</script>
</html>
