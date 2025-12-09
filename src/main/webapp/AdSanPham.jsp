<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
          integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="Css/AdSanPham.css">
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
        <a class="menu-item active"
           href="http://localhost:63342/Nhom15_LTWeb/AdSanPham.html?_ijt=a97fumsa6ro5mrcmlfhf1bc4ms&_ij_reload=RELOAD_ON_SAVE">Tour</a>
        <a class="menu-item" href="http://localhost:63342/Nhom15_LTWeb/Admin_NguoiDung.html?_ijt=fkn84i6cmi2u38cpn5r7c503fh&_ij_reload=RELOAD_ON_SAVE">Người dùng</a>
        <a class="menu-item" href="http://localhost:63342/Nhom15_LTWeb/Admin_KhuyenMai.html?_ijt=8p96ove48vsv29jj2q1a0esr4b&_ij_reload=RELOAD_ON_SAVE">Khuyến mãi</a>
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
        <h2 class="section-title">Quản lý tour</h2>

        <div class="search-box">
            <input class="search" type="text" placeholder="Tìm tour...">
            <a href="http://localhost:63342/Nhom15_LTWeb/add_tour.html?_ijt=83r07csp0tu82eib3gve1sjtol&_ij_reload=RELOAD_ON_SAVE#"
               class="btn-add">+ Thêm Tour</a>
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
                    <th>Số lợng đã bán</th>
                    <th>Hành động</th>
                </tr>
                </thead>

                <tbody>

                <tr>
                    <td>1</td>
                    <td>Tour Singapore - Malaysia</td>
                    <td>2.500.000 VND</td>
                    <td>TP.HCM</td>
                    <td>12/12/2025</td>
                    <td>5 ngày 4 đêm</td>
                    <td>25</td>
                    <td>5</td>
                    <td>2</td>
                    <td>
                        <a href="#" class="btn-edit">Sửa</a>
                        <a href="#" class="btn-delete">Xóa</a>
                    </td>
                </tr>

                <tr>
                    <td>2</td>
                    <td>Tour Đà Lạt 3N2Đ</td>
                    <td>3.400.000 VND</td>
                    <td>Đà Lạt</td>
                    <td>20/12/2025</td>
                    <td>5 ngày 4 đêm</td>
                    <td>25</td>
                    <td>5</td>
                    <td>0</td>
                    <td>
                        <a href="#" class="btn-edit">Sửa</a>
                        <a href="#" class="btn-delete">Xóa</a>
                    </td>
                </tr>

                <tr>
                    <td>3</td>
                    <td>Tour Phú Quốc</td>
                    <td>4.900.000 VND</td>
                    <td>Phú Quốc</td>
                    <td>05/01/2026</td>
                    <td>5 ngày 4 đêm</td>
                    <td>25</td>
                    <td>5</td>
                    <td>1</td>
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