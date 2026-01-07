<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/QuyCheHoatDong.css">
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
                            <a href="${pageContext.request.contextPath}/index.jsp" aria-label="TravelNow" class="Travel-logo">
                                <img src="${pageContext.request.contextPath}/IMAGE/asset/images/LOGO.png" alt="Travel ">
                            </a>
                        </div>
                    </div>

                    <div class="header-center">
                        <nav>
                            <div class="menu">
                                <a href="${pageContext.request.contextPath}/index.jsp" class="item active">Tour trong nước</a>
                                <a href="${pageContext.request.contextPath}/index.jsp" class="item">Tour nước ngoài</a>
                                <a href="${pageContext.request.contextPath}/Khuyen_Mai.jsp" class="item">Khuyến mãi</a>
                                <a href="${pageContext.request.contextPath}/GioiThieu.jsp" class="item">Giới thiệu</a>

                                <div class="item">
                                    <div class="sub">
                                        <span></span><span></span><span></span>
                                    </div>
                                    <div class="sub-item">
                                        <a href="${pageContext.request.contextPath}/Tin tức.jsp">Tin Tức</a>
                                        <a href="${pageContext.request.contextPath}/Cau_hoi_thuong_gap.jsp">Câu hỏi thường gặp</a>
                                        <a href="${pageContext.request.contextPath}/NhatKyDuLich.jsp">Nhật ký khách hàng</a>
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
                                <button onclick="location.href='${pageContext.request.contextPath}/Sign-in.jsp'" class="register-btn">Đăng ký</button>
                                <p>Quý khách đã có tài khoản?<br>
                                    <a href="${pageContext.request.contextPath}/Log-in.jsp">Đăng nhập ngay</a>
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
        <h3>QUY CHẾ HOẠT ĐỘNG CỦA TRAVELNOW</h3>
        <p>Quy chế này quy định quyền và nghĩa vụ của các bên khi tham gia giao dịch qua nền tảng TravelNow.</p>

        <div class="rule-section">
            <h4>1. Nguyên tắc chung:</h4>
            <p>TravelNow là sàn giao dịch thương mại điện tử cung cấp dịch vụ đặt tour, combo du lịch.</p>
            <p>Mọi tổ chức, cá nhân khi tham gia giao dịch tại TravelNow phải tuân thủ quy định của pháp luật Việt Nam.</p>
        </div>

        <div class="rule-section">
            <h4>2. Quy trình giao dịch:</h4>
            <p>\- Người dùng có thể tìm kiếm, so sánh và chọn dịch vụ mong muốn.</p>
            <p>\- Sau khi xác nhận thông tin, khách hàng tiến hành thanh toán qua các hình thức hỗ trợ.</p>
            <p>\- Xác nhận đặt dịch vụ được gửi qua tài khoản.</p>
        </div>

        <div class="rule-section">
            <h4>3. Quyền và nghĩa vụ của khách hàng:</h4>
            <p>\- Cung cấp thông tin chính xác khi đăng ký và đặt dịch vụ.</p>
            <p>\- Thanh toán đầy đủ, đúng hạn theo quy định.</p>
            <p>\- Có quyền phản hồi hoặc khiếu nại nếu dịch vụ không đúng như cam kết.</p>
        </div>

        <div class="rule-section">
            <h4>4. Quyền và nghĩa vụ của TravelNow</h4>
            <p>\- Đảm bảo hoạt động ổn định, bảo mật thông tin người dùng.</p>
            <p>\- Cung cấp thông tin trung thực, minh bạch về sản phẩm, dịch vụ.</p>
            <p>\- Hỗ trợ khách hàng trong quá trình đặt dịch vụ và xử lý khiếu nại.</p>
        </div>

        <div class="rule-section">
            <h4>5. Cơ chế giải quyết tranh chấp:</h4>
            <p>\- Khi phát sinh mâu thuẫn, khách hàng có thể liên hệ qua email: <b>support@travelnow.com</b>.</p>
            <p>\- TravelNow sẽ phối hợp với các bên liên quan để xử lý nhanh chóng, công bằng.</p>
            <p>\- Trường hợp không đạt được thỏa thuận, vụ việc sẽ được chuyển cơ quan có thẩm quyền giải quyết.</p>
        </div>

        <div class="rule-section">
            <h4>6. Hiệu lực thi hành:</h4>
            <p>Quy chế này có hiệu lực kể từ ngày được đăng tải và có thể thay đổi khi cần thiết mà không cần báo trước.</p>
        </div>
    </div>
</section>

<footer class="footer">
    <div class="footer-top">
        <div class="ft_container">
            <div class="ft_col">
                <div class="list_col">
                    <h4>Về TravelNow</h4>
                    <a href="${pageContext.request.contextPath}/GioiThieu.jsp">Giới thiệu</a>
                    <a href="${pageContext.request.contextPath}/DieuKienDieuKhoan.jsp">Điều kiện \&amp; điều khoản</a>
                    <a href="${pageContext.request.contextPath}/QuyCheHoatDong.jsp">Quy chế hoạt động</a>
                </div>

                <div class="list_col">
                    <h4>Hỗ trợ khách hàng</h4>
                    <a href="${pageContext.request.contextPath}/Cau_hoi_thuong_gap.jsp">Câu hỏi thường gặp</a>
                    <a href="${pageContext.request.contextPath}/QuyCheHoatDong.jsp">Quy chế hoạt động</a>
                </div>

                <div class="list_col">
                    <h4>Dịch vụ</h4>
                    <a href="${pageContext.request.contextPath}/index.jsp">Tour trong nước</a>
                    <a href="${pageContext.request.contextPath}/index.jsp">Tour ngoài nước</a>
                    <a href="${pageContext.request.contextPath}/Khuyen_Mai.jsp">Khuyến mãi</a>
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