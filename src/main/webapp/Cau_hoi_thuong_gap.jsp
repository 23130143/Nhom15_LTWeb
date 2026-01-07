<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
          integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/Cau_hoi_thuong_gap.css">
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

<main>
    <section class="faq">
        <div class="faq-container">
            <h2>Câu hỏi thường gặp</h2>

            <div class="faq-item">
                <h3>1. Làm thế nào để đặt combo du lịch?</h3>
                <p>Bạn chỉ cần chọn combo du lịch mong muốn, nhấn “Đặt ngay”, sau đó điền thông tin liên hệ và phương thức thanh toán. Sau khi thanh toán thành công, hệ thống sẽ gửi xác nhận qua email hoặc SMS.</p>
            </div>

            <div class="faq-item">
                <h3>2. Combo du lịch đã bao gồm những gì?</h3>
                <p>Mỗi combo thường bao gồm vé máy bay khứ hồi, khách sạn và một số dịch vụ kèm theo như ăn sáng hoặc đưa đón sân bay (tùy gói). Bạn có thể xem chi tiết trong phần “Thông tin combo”.</p>
            </div>

            <div class="faq-item">
                <h3>3. Tôi có thể hủy hoặc đổi lịch combo không?</h3>
                <p>Bạn có thể hủy hoặc đổi lịch trước ngày khởi hành theo chính sách của từng combo. Một số combo có thể tính phí hủy, vì vậy hãy đọc kỹ thông tin trước khi đặt.</p>
            </div>

            <div class="faq-item">
                <h3>4. Có những hình thức thanh toán nào?</h3>
                <p>Chúng tôi hỗ trợ nhiều hình thức thanh toán như chuyển khoản ngân hàng, thẻ tín dụng/ghi nợ, ví điện tử và quét mã QR. Tất cả giao dịch đều được bảo mật an toàn.</p>
            </div>

            <div class="faq-item">
                <h3>5. Tôi cần liên hệ với ai khi gặp sự cố?</h3>
                <p>Bạn có thể liên hệ với bộ phận hỗ trợ qua hotline hoặc email được ghi trong phần “Liên hệ”. Đội ngũ chăm sóc khách hàng hoạt động từ 8:00 – 22:00 mỗi ngày, kể cả cuối tuần.</p>
            </div>
        </div>
    </section>
</main>

<footer class="footer">
    <div class="footer-top">
        <div class="ft_container">
            <div class="ft_col">
                <div class="list_col">
                    <h4>Về TravelNow</h4>
                    <a href="<%= request.getContextPath() %>/GioiThieu.jsp">Giới thiệu</a>
                    <a href="<%= request.getContextPath() %>/DieuKienDieuKhoan.jsp">Điều kiện &amp; điều khoản</a>
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