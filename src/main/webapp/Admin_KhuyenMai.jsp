<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
          integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/Admin_KhuyenMai.css">
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
        <a class="menu-item" href="<%= request.getContextPath() %>/AdSanPham.jsp">Tour</a>
        <a class="menu-item" href="<%= request.getContextPath() %>/Admin_NguoiDung.jsp">Người dùng</a>
        <a class="menu-item active" href="<%= request.getContextPath() %>/Admin_KhuyenMai.jsp">Khuyến mãi</a>
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
        <h2 class="section-title">Khuyến mãi</h2>

        <div class="search-box">
            <input class="search" type="text" placeholder="Tìm tên khuyến mãi...">

            <div class="btn-group">
                <a href="<%= request.getContextPath() %>/add_tour.jsp" class="btn-add">
                    + Thêm khuyến mãi
                </a>

                <button class="btn-link" onclick="openLinkModal()">
                    🔗 Gắn tour
                </button>
            </div>
        </div>


        <!-- Danh sách Tour -->
        <div class="panel">
            <table class="activity-table">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Tên chương trình</th>
                    <th>Loại khuyến mãi</th>
                    <th>Giá giảm</th>
                    <th>Trạng thái</th>
                    <th>Ngày bắt đầu</th>
                    <th>Ngày kết thúc</th>
                    <th>Tour áp dụng</th>
                    <th>Hành động</th>
                </tr>
                </thead>

                <tbody>

                <tr>
                    <td>1</td>
                    <td>Tour Singapore - Malaysia</td>
                    <td>Giảm giá sản phẩm</td>
                    <td>2.000.000 VND</td>
                    <td>Sắp tới</td>
                    <td>01/12/2025</td>
                    <td>31/12/2025</td>
                    <td>
                        Tour Malaysia 4N3D <br>
                        Tour Singapore 5N4D <br>
                        Tour Malaysia - Singapore 6N5Đ
                    </td>
                    <td class="action-cell">
                        <a href="#" class="btn-edit">Sửa</a>
                        <a href="#" class="btn-delete">Xóa</a>
                    </td>
                </tr>

                <tr>
                    <td>2</td>
                    <td>Tour Hàn Quốc</td>
                    <td>Giảm giá sản phẩm</td>
                    <td>3.000.000 VND</td>
                    <td>Đang khuyến mãi</td>
                    <td>16/11/2025</td>
                    <td>30/11/2025</td>
                    <td>
                        Tour Seoul - Nami - Everland 5N4Đ <br>
                        Tour Busan - Jeju 6N5Đ <br>
                        Tour Hàn Quốc ngắm tuyết 4N3Đ
                    </td>
                    <td class="action-cell">
                        <a href="#" class="btn-edit">Sửa</a>
                        <a href="#" class="btn-delete">Xóa</a>
                    </td>
                </tr>

                <tr>
                    <td>3</td>
                    <td>Tour Nhật Bản</td>
                    <td>Giảm giá sản phẩm</td>
                    <td>3.500.000 VND</td>
                    <td>Kết thúc</td>
                    <td>01/11/2025</td>
                    <td>15/11/2025</td>
                    <td>
                        Tour Tokyo - Fuji - Disneyland 6N5Đ <br>
                        Tour Kyoto - Osaka 5N4Đ <br>
                        Tour Nhật Bản mùa hoa anh đào 7N6Đ
                    </td>
                    <td class="action-cell">
                        <a href="#" class="btn-edit">Sửa</a>
                        <a href="#" class="btn-delete">Xóa</a>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </section>
</div>
<!-- Modal liên kết tour -->
<div id="linkModal" class="modal">
    <div class="modal-content">
        <h3>Liên kết khuyến mãi với tour</h3>

        <label>Chọn khuyến mãi</label>
        <select>
            <option>Tour Singapore - Malaysia</option>
            <option>Tour Hàn Quốc</option>
            <option>Tour Nhật Bản</option>
        </select>

        <label>Chọn tour áp dụng</label>
        <div class="tour-list">
            <label><input type="checkbox"> Tour Singapore 5N4Đ</label>
            <label><input type="checkbox"> Tour Malaysia 4N3Đ</label>
            <label><input type="checkbox"> Tour Tokyo - Fuji 6N5Đ</label>
        </div>

        <div class="modal-actions">
            <button class="btn-save">Lưu</button>
            <button class="btn-cancel" onclick="closeLinkModal()">Hủy</button>
        </div>
    </div>
</div>
<script>
    function openLinkModal() {
        document.getElementById("linkModal").style.display = "flex";
    }

    function closeLinkModal() {
        document.getElementById("linkModal").style.display = "none";
    }
</script>
</body>
</html>