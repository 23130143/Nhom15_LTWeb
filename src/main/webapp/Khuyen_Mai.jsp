<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/Khuyen_Mai.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
          integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>

<body>
<section id="header">
    <div class="header-content">
        <header class="header-wrapper">
            <div class="container">
                <div class="header-box">
                    <div class="logo">
                        <div class="header-logo">
                            <a href="<%= request.getContextPath() %>/index.jsp" aria-label="TravelNow" class="Travel-logo">
                                <img src="<%= request.getContextPath() %>/IMAGE/asset/images/LOGO.png" alt="Travel ">
                            </a>
                        </div>
                    </div>

                    <div class="header-center">
                        <nav>
                            <div class="menu">
                                <a href="<%= request.getContextPath() %>/index.jsp" class="item active">Tour trong nước</a>
                                <a href="<%= request.getContextPath() %>/index.jsp" class="item">Tour nước ngoài</a>
                                <a href="<%= request.getContextPath() %>/Khuyen_Mai.jsp" class="item">Khuyến mãi</a>
                                <a href="<%= request.getContextPath() %>/GioiThieu.jsp" class="item">Giới thiệu</a>

                                <div class="item">
                                    <div class="sub">
                                        <span></span><span></span><span></span>
                                    </div>
                                    <div class="sub-item">
                                        <a href="<%= request.getContextPath() %>/Tin tức.jsp">Tin Tức</a>
                                        <a href="<%= request.getContextPath() %>/Cau_hoi_thuong_gap.jsp">Câu hỏi thường gặp</a>
                                        <a href="<%= request.getContextPath() %>/NhatKyDuLich.jsp">Nhật ký khách hàng</a>
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
                                <button onclick="location.href='<%= request.getContextPath() %>/Sign-in.jsp'" class="register-btn">Đăng ký</button>
                                <p>Quý khách đã có tài khoản?<br>
                                    <a href="<%= request.getContextPath() %>/Log-in.jsp">Đăng nhập ngay</a>
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

<section class="promotion">
    <div class="promotion-container">
        <div class="promotion-content">
            <div class="promotion-attention">
                <img src="<%= request.getContextPath() %>/IMAGE/asset/images/Khuyen_Mai_2.jpg" alt="Khuyen_Mai_image">
            </div>

            <div class="promotion-info">
                <div class="promotion-title">
                    <h1>Khuyến mãi du lịch Malaysia-Singapore</h1>
                </div>

                <div class="promotion-text">
                    <p>Nhằm tri ân các khách hàng đã và đang ủng hộ Chúng tôi trong thời gian qua, nhân dịp cuối năm chúng tôi có chương trình khuyến mãi như sau</p>
                    <p>Giảm 2 triệu đồng khi mua vé máy bay dành cho khách đặt tour đi Malaysia-Singapore</p>
                    <p>Áp dụng từ <b>1/12 - 30/12/2025</b></p>
                </div>

                <div class="promotion-links">
                    <h2>Các tour áp dụng khuyến mãi</h2>
                    <ul>
                        <li><a href="<%= request.getContextPath() %>/chi_tiet.jsp"><i class="fa-solid fa-plane"></i> Tour Malaysia 4N3Đ</a></li>
                        <li><a href="<%= request.getContextPath() %>/ChiTiet_Tour_Singapore.jsp"><i class="fa-solid fa-plane"></i> Tour Singapore 5N4Đ</a></li>
                        <li><a href="<%= request.getContextPath() %>/ChiTiet_Tour_Malay_Sing.jsp"><i class="fa-solid fa-plane"></i> Tour Malaysia - Singapore 6N5Đ</a></li>
                    </ul>
                </div>

            </div>
        </div>

        <div class="promotion-content">
            <div class="promotion-attention">
                <img src="<%= request.getContextPath() %>/IMAGE/asset/images/Khuyen_Mai_3.jpg" alt="Khuyen_Mai_image">
            </div>
            <div class="promotion-info">
                <div class="promotion-title">
                    <h1>Khuyến mãi du lịch Hàn Quốc</h1>
                </div>

                <div class="promotion-text">
                    <p>Khám phá xứ sở kim chi mùa đông này cùng ưu đãi hấp dẫn dành riêng cho bạn!</p>
                    <p>Giảm ngay <b>3.000.000đ</b> cho khách đặt tour Hàn Quốc trong tháng 12.</p>
                    <p>Tặng vé máy bay cho các cặp đôi đặt tour</p>
                    <p>Áp dụng từ <b>1/12 - 31/12/2025</b>.</p>
                </div>

                <div class="promotion-links">
                    <h2>Các tour áp dụng khuyến mãi</h2>
                    <ul>
                        <li><a href="<%= request.getContextPath() %>/ChiTiet_Tour_Han_Seoul.jsp"><i class="fa-solid fa-plane"></i> Tour Seoul - Nami - Everland 5N4Đ</a></li>
                        <li><a href="<%= request.getContextPath() %>/ChiTiet_Tour_Han_Busan.jsp"><i class="fa-solid fa-plane"></i> Tour Busan - Jeju 6N5Đ</a></li>
                        <li><a href="<%= request.getContextPath() %>/ChiTiet_Tour_Han_MuaDong.jsp"><i class="fa-solid fa-plane"></i> Tour Hàn Quốc ngắm tuyết 4N3Đ</a></li>
                    </ul>
                </div>

            </div>
        </div>

        <div class="promotion-content">
            <div class="promotion-attention">
                <img src="<%= request.getContextPath() %>/IMAGE/asset/images/Khuyen_Mai_4.jpg" alt="Khuyen_Mai_image">
            </div>
            <div class="promotion-info">
                <div class="promotion-title">
                    <h1>Khuyến mãi du lịch Nhật Bản</h1>
                </div>

                <div class="promotion-text">
                    <p>Đón năm mới tại xứ sở hoa anh đào với chương trình ưu đãi cực sốc!</p>
                    <p>Giảm ngay <b>3.500.000đ</b> cho tour Nhật Bản khởi hành trong tháng 12.</p>
                    <p>Tặng vali du lịch cho khách đặt tour</p>
                    <p>Áp dụng từ <b>1/12 - 31/12/2025</b>.</p>
                </div>

                <div class="promotion-links">
                    <h2>Các tour áp dụng khuyến mãi</h2>
                    <ul>
                        <li><a href="<%= request.getContextPath() %>/ChiTiet_Tour_Nhat_Tokyo.jsp"><i class="fa-solid fa-plane"></i> Tour Tokyo - Fuji - Disneyland 6N5Đ</a></li>
                        <li><a href="<%= request.getContextPath() %>/ChiTiet_Tour_Nhat_Kyoto.jsp"><i class="fa-solid fa-plane"></i> Tour Kyoto - Osaka 5N4Đ</a></li>
                        <li><a href="<%= request.getContextPath() %>/ChiTiet_Tour_Nhat_Sakura.jsp"><i class="fa-solid fa-plane"></i> Tour Nhật Bản mùa hoa anh đào 7N6Đ</a></li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
</section>

<footer class="footer">
    <div class="footer-top">
        <div class="ft_container">
            <div class="ft_col">
                <div class="list_col">
                    <h4>Về TravelNow</h4>
                    <a href="<%= request.getContextPath() %>/GioiThieu.jsp">Giới thiệu</a>
                    <a href="<%= request.getContextPath() %>/DieuKienDieuKhoan.jsp">Điều kiện \&amp; điều khoản</a>
                    <a href="<%= request.getContextPath() %>/QuyCheHoatDong.jsp">Quy chế hoạt động</a>
                </div>

                <div class="list_col">
                    <h4>Hỗ trợ khách hàng</h4>
                    <a href="<%= request.getContextPath() %>/Cau_hoi_thuong_gap.jsp">Câu hỏi thường gặp</a>
                    <a href="<%= request.getContextPath() %>/QuyCheHoatDong.jsp">Quy chế hoạt động</a>
                </div>

                <div class="list_col">
                    <h4>Dịch vụ</h4>
                    <a href="<%= request.getContextPath() %>/index.jsp">Tour trong nước</a>
                    <a href="<%= request.getContextPath() %>/index.jsp">Tour ngoài nước</a>
                    <a href="<%= request.getContextPath() %>/Khuyen_Mai.jsp">Khuyến mãi</a>
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
</body>
</html>