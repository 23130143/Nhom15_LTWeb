<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
          integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="Css/Admin_KhuyenMai.css">
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
        <a class="menu-item" href="http://localhost:63342/Nhom15_LTWeb/Admin_DashBoard.html?_ijt=okkvfcm26k44tle360e1cht84o&_ij_reload=RELOAD_ON_SAVE">Dashboard</a>
        <a class="menu-item"
           href="http://localhost:63342/Nhom15_LTWeb/AdSanPham.html?_ijt=a97fumsa6ro5mrcmlfhf1bc4ms&_ij_reload=RELOAD_ON_SAVE">Tour</a>
        <a class="menu-item" href="http://localhost:63342/Nhom15_LTWeb/Admin_NguoiDung.html?_ijt=rguv5o1221di9ht7ujp26328gd&_ij_reload=RELOAD_ON_SAVE">Người dùng</a>
        <a class="menu-item active" href="http://localhost:63342/Nhom15_LTWeb/Admin_KhuyenMai.html?_ijt=8p96ove48vsv29jj2q1a0esr4b&_ij_reload=RELOAD_ON_SAVE">Khuyến mãi</a>
        <a class="menu-item" href="http://localhost:63342/Nhom15_LTWeb/Admin_Banner.html?_ijt=8qmn22mcuj4n09i6i8huafb60a&_ij_reload=RELOAD_ON_SAVE">Banner</a>
        <a class="menu-item logout" href="http://localhost:63342/Nhom15_LTWeb/Tour.html?_ijt=7tuf6q2bklajeet70tcj7hnv5h&_ij_reload=RELOAD_ON_SAVE">Đăng xuất</a>
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
            <a href="admin-khuyenmai-add.html" class="btn-add">+ Thêm khuyến mãi</a>
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
</body>
</html>
</body>
</html>