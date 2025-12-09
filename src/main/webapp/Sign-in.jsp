<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">
    <script src="Javascript/EyesScript.js"></script>
    <link rel="stylesheet" href="Css/Sign-in Style.css">
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
                                <button onclick="location.href='Sign-in.html'" class="register-btn">Đăng ký</button>
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

<main class="container">
    <div class="sign_in_form">
        <div class="sign-in_frame">
            <header class="sign-in_header">
                <a href="http://localhost:63342/Nhom15_LTWeb/Log-in.html?_ijt=i1qu2vani4itjddujf743tl6dv&_ij_reload=RELOAD_ON_SAVE"
                   class="back">
                    <i class="fa-solid fa-arrow-left"></i>
                </a>
                <span class="header_text">Đăng ký</span>
            </header>
            <div class="Full_Name">
                <label for="FN">Họ và tên</label>
                <input id="FN" class="sign_in_input" type="text" placeholder="">
            </div>
            <div class="acc">
                <label for="email">Gmail</label>
                <input id="email" class="sign_in_input" type="email" placeholder="">
            </div>
            <div class="psw">
                <label for="psw">Mật khẩu</label>
                <input id="psw" class="sign_in_input" type="password" placeholder="">
                <i class="fa-solid fa-eye-slash toggle-eye"></i>
            </div>
            <div class="confirm psw">
                <label for="confirm_psw">Nhập lại mật khẩu</label>
                <input id="confirm_psw" class="sign_in_input" type="password" placeholder="">
                <i class="fa-solid fa-eye-slash toggle-eye"></i>
            </div>
            <div class="btn">
                <a href="http://localhost:63342/Nhom15_LTWeb/Log-in.html?_ijt=i1qu2vani4itjddujf743tl6dv&_ij_reload=RELOAD_ON_SAVE"
                   class="sign-in_btn">Đăng ký</a>
            </div>
        </div>
    </div>
</main>

</body>
</html>