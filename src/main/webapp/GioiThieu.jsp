<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/GioiThieu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
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

<section class="main-container">
    <div class="main-content">
        <h3>GIỚI THIỆU VỀ TRAVELNOW</h3>
        <p>Thành lập năm 2010, <strong>TravelNow</strong> là thành viên của Tập đoàn <strong>TMG Việt Nam</strong> với hơn 20 năm kinh nghiệm trong lĩnh vực Du lịch – Tour. TravelNow tiên phong trong việc sáng tạo các sản phẩm du lịch tiện ích dành cho khách hàng nội địa. Liên tục tăng trưởng mạnh qua nhiều năm, TravelNow hiện là OTA hàng đầu Việt Nam trong phân khúc cao cấp với hệ thống khoảng 2,500 Tour tại Việt Nam &amp; hơn 3,000 Tour quốc tế.</p>
        <p>Với mục tiêu mang đến cho khách hàng “<em>Trải nghiệm kỳ nghỉ tuyệt vời</em>”, TravelNow kỳ vọng trở thành nền tảng du lịch nghỉ dưỡng số 1 cho khách hàng Đông Nam Á trong 5 năm tới.</p>
        <p>Dòng sản phẩm chính của TravelNow <strong>Combo du lịch</strong> – sản phẩm cung cấp đầy đủ cho một kỳ nghỉ bao gồm phòng khách sạn, vé máy bay, đưa đón, ăn uống, khám phá,… chỉ trong 1 lần đặt. Với combo du lịch, khách hàng không cần băn khoăn chọn lựa hoặc mất thời gian đặt từng dịch vụ riêng lẻ, lại còn hưởng được mức giá vô cùng tốt với những dòng combo TravelNow mang lại: khuyến mãi, giảm giá ...</p>
        <p>Để đảm bảo cho khách hàng một “Trải nghiệm kỳ nghỉ tuyệt vời”, chúng tôi áp dụng công nghệ vào việc đọc hiểu nhu cầu của thị trường, nghiên cứu phát triển sản phẩm và gợi ý những sản phẩm và dịch vụ tốt nhất, phù hợp với từng khách hàng.</p>
        <p>Khách hàng chọn đặt dịch vụ với TravelNow có thể đặt qua rất nhiều kênh: đặt trực tiếp tại website, gọi điện thoại Hotline, đặt qua chat bot, app, Facebook và các mạng xã hội khác. Với iVIVU.com mỗi kỳ nghỉ là một trải nghiệm tuyệt vời!</p>
    </div>
</section>

<footer class="footer">
    <div class="footer-top">
        <div class="ft_container">
            <div class="ft_col">
                <div class="list_col">
                    <h4>Về TravelNow</h4>
                    <a href="<%= request.getContextPath() %>/GioiThieu.jsp">Giới thiệu</a>
                    <a href="<%= request.getContextPath() %>/DieuKienDieuKhoan.jsp">Điều kiện &amp; điều khoản</a>
                    <a href="<%= request.getContextPath() %>/QuyCheHoatDong.jsp">Quy chế hoạt động </a>
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
