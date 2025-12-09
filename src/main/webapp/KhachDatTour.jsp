<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thông tin khách đặt Tour</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="Css/KhachDatTour.css">
</head>
<body>
<section id="header">
    <div class="header-content">
        <header class="header-wrapper">
            <div class="container">
                <div class="header-box">
                    <div class="logo">
                        <div class="header-logo">
                            <a href="http://localhost:63342/Nhom15_LTWeb/Tour.html?_ijt=5vsd5k6ge3rent6bs7uo0esfn7&_ij_reload=RELOAD_ON_SAVE" aria-label="TravelNow" class="Travel-logo">
                                <img src="IMAGE/asset/images/LOGO.png" alt="Travel ">

                            </a>
                        </div>

                    </div>
                    <div class="header-center">
                        <nav>
                            <div class=" menu">
                                <a href="http://localhost:63342/Nhom15_LTWeb/Tour.html?_ijt=5vsd5k6ge3rent6bs7uo0esfn7&_ij_reload=RELOAD_ON_SAVE" class="item active">Tour trong nước</a>
                                <a href="http://localhost:63342/Nhom15_LTWeb/Tour.html?_ijt=5vsd5k6ge3rent6bs7uo0esfn7&_ij_reload=RELOAD_ON_SAVE" class="item">Tour nước ngoài</a>
                                <a href="http://localhost:63342/Nhom15_LTWeb/Khuyen_Mai.html?_ijt=pu4dpgeu34blvj8j68iaaha89i&_ij_reload=RELOAD_ON_SAVE" class="item">Khuyến mãi</a>
                                <a href="http://localhost:63342/Nhom15_LTWeb/GioiThieu.html?_ijt=pu4dpgeu34blvj8j68iaaha89i&_ij_reload=RELOAD_ON_SAVE" class="item">Giới thiệu</a>

                                <div class="item ">
                                    <div class="sub">
                                        <span></span><span></span><span></span>
                                    </div>
                                    <div class="sub-item">
                                        <a href="http://localhost:63342/Nhom15_LTWeb/Tin%20t%E1%BB%A9c.html?_ijt=pu4dpgeu34blvj8j68iaaha89i&_ij_reload=RELOAD_ON_SAVE">Tin Tức</a>
                                        <a href="http://localhost:63342/Nhom15_LTWeb/Cau_hoi_thuong_gap.html?_ijt=pu4dpgeu34blvj8j68iaaha89i&_ij_reload=RELOAD_ON_SAVE">Câu hỏi thường gặp</a>
                                        <a href="http://localhost:63342/Nhom15_LTWeb/NhatKyDuLich.html?_ijt=pu4dpgeu34blvj8j68iaaha89i&_ij_reload=RELOAD_ON_SAVE">Nhật ký khách hàng</a>

                                    </div>
                                </div>

                            </div>
                        </nav>
                    </div>
                    <div class="header-right">
                        <div class="account">
                            <i class="fa-solid fa-circle-user"></i>
                            <span>Tài khoản ▾</span>
                            <div class="dropdown">
                                <button onclick="location.href='Sign-in.jsp'" class="register-btn">Đăng ký</button>
                                <p>Quý khách đã có tài khoản?<br>
                                    <a href="http://localhost:63342/Nhom15_LTWeb/Log-in.html?_ijt=pu4dpgeu34blvj8j68iaaha89i&_ij_reload=RELOAD_ON_SAVE">Đăng nhập ngay</a>
                                </p>
                            </div>
                        </div>
                        <div class="phone_number">
                            <i class="fa-solid fa-phone"></i>
                            <span class="phonenum">1900 2490</span>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </div>
</section>

<section class="main">
    <div class="info-card">
        <h2>Thông tin khách đặt Tour</h2>
        <form>
            <div class="gender">
                <label> Giới tính <span>*</span> </label>
                <div class="gender-options">
                    <label> <input type="radio" name="gender" required> Quý ông </label>
                    <label> <input type="radio" name="gender" required> Quý bà </label>
                </div>
            </div>

            <div class="name">
                <label for="001"> Họ và Tên <span>*</span> </label>
                <input id="001" type="text" placeholder="VD: Nguyễn Văn A" required>
            </div>

            <div class="phoneNumber">
                <label for="002"> Số điện thoại <span>*</span> </label>
                <input id="002" type="text" placeholder="Nhận số điện thoại liên lạc" required>
            </div>

            <div class="email">
                <label for="003"> Email <span>*</span> </label>
                <input id="003" type="text" placeholder="Nhập Email nhận thông tin" required>
            </div>

            <div class="note">
                <label for="note"> Ghi chú đặc biệt(Nếu có) </label>
                <textarea id="note" name="text" rows="3"
                          placeholder="VD: Cần hỗ trợ làm Visa, ăn chay, cần xe nôi cho bé ..."></textarea>
            </div>

            <div class="buttons">
                <button type="button" id="payBtn" class="btn-primary">Thanh toán ngay</button>
                <!--disabled là để lock nút, ko điền thông tin vẫn bấm qua trang dc-->
            </div>
        </form>
    </div>
    <div class="summary-section">
        <h3>Tour Singapore - Malaysia 4N3Đ: HCM - Sentosa - Genting - Động Batu - Tháp Đôi Petronas</h3>
        <img src="IMAGE/asset/images/gardens-by-the-bay-sing.gif" alt="ảnh du lịch"/>

        <div class="dates">
            <div class="tour-detail"><span><i class="fa-solid fa-calendar"></i> 06-12-2025</span> <span>Thứ 7</span>
            </div>
            <div class="tour-detail"><span><i class="fa-solid fa-calendar"></i> 09-12-2025</span> <span>Thứ 3</span>
            </div>
            <div class="tour-detail"><span><i class="fa-solid fa-tag"></i> Mã tour</span> <span>TO3078</span></div>
        </div>

        <div class="main-price">
            <p>Người lớn <span>2 x 9.490.000</span></p>
            <p>Trẻ em <span>0</span></p>
            <p class="total">Tổng tiền <span class="price">18.980.000 <small class="textCurrency">đ</small></span></p>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="footer">
    <div class="footer-top">
        <div class="ft_container">
            <div class="ft_col">
                <div class="list_col">
                    <h4>Về TravelNow</h4>
                    <a href="http://localhost:63342/Nhom15_LTWeb/GioiThieu.html?_ijt=pu4dpgeu34blvj8j68iaaha89i&_ij_reload=RELOAD_ON_SAVE">Giới thiệu</a>
                    <a href="http://localhost:63342/Nhom15_LTWeb/DieuKienDieuKhoan.html?_ijt=u298ddfhl2r9h36eqvt6h38aqp&_ij_reload=RELOAD_ON_SAVE">Điều kiện & điều khoản</a>
                    <a href="http://localhost:63342/Nhom15_LTWeb/QuyCheHoatDong.html?_ijt=lplai2mbkir68tldqbjl9eup0t&_ij_reload=RELOAD_ON_SAVE">Quy chế hoạt động </a>
                </div>

                <div class="list_col">
                    <h4>Hỗ trợ khách hàng</h4>
                    <a href="http://localhost:63342/Nhom15_LTWeb/Cau_hoi_thuong_gap.html?_ijt=pu4dpgeu34blvj8j68iaaha89i&_ij_reload=RELOAD_ON_SAVE">Câu hỏi thường gặp</a>
                    <a href="http://localhost:63342/Nhom15_LTWeb/QuyCheHoatDong.html?_ijt=lplai2mbkir68tldqbjl9eup0t&_ij_reload=RELOAD_ON_SAVE">Quy chế hoạt động</a>


                </div>

                <div class="list_col">
                    <h4>Dịch vụ</h4>
                    <a href="http://localhost:63342/Nhom15_LTWeb/Tour.html?_ijt=5vsd5k6ge3rent6bs7uo0esfn7&_ij_reload=RELOAD_ON_SAVE">Tour trong nước</a>
                    <a href="http://localhost:63342/Nhom15_LTWeb/Tour.html?_ijt=5vsd5k6ge3rent6bs7uo0esfn7&_ij_reload=RELOAD_ON_SAVE">Tour ngoài nước</a>
                    <a href="http://localhost:63342/Nhom15_LTWeb/Khuyen_Mai.html?_ijt=pu4dpgeu34blvj8j68iaaha89i&_ij_reload=RELOAD_ON_SAVE">Khuyến mãi</a>

                </div>

                <div class="list_col">
                    <h4>Liên hệ</h4>
                    <p>Trường Đại Học Nông Lâm TPHCM</p>
                    <p>Phường Linh Xuân, TP.HCM</p>
                    <p><i class="fa-solid fa-phone"></i> Hotline: 1900 1870</p>
                    <p><i class="fa-solid fa-envelope"></i> support@travelnow.com</p>
                </div>
            </div>

            <div class="icon_social">
                <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                <a href="#"><i class="fa-brands fa-instagram"></i></a>
                <a href="#"><i class="fa-brands fa-tiktok"></i></a>
            </div>
        </div>
    </div>

    <div class="footer-bottom">
        <div class="ft_container">
            <span>@2025 TravelNow. All Rights Reserved.</span>
        </div>
    </div>
</footer>
<script src="Javascript/KhachDatTour.js"></script>
</body>
</html>
