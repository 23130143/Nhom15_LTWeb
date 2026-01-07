<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Chọn thời điểm đi Nhật Bản ngắm lá vàng, lá đỏ đẹp</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/Chi_tiet_tin_tuc.css">
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

<main>
    <div class="article">
        <div class="article-container">
            <div class="news-article">
                <h2 class="article-title">Chọn thời điểm đi Nhật Bản ngắm lá vàng, lá đỏ đẹp</h2>
                <p class="article-meta">Đăng ngày: 09/11/2025 | Nguồn: JNTO Japan</p>

                <p><em>Nhật Bản cung cấp thời gian lá chuyển mùa tại khoảng 700 địa điểm trên toàn quốc,
                    giúp du khách dễ dàng lựa chọn thời điểm lý tưởng để ngắm lá vàng – lá đỏ.</em></p>

                <div class="article-img">
                    <img src="<%= request.getContextPath() %>/IMAGE/asset/images/Chi_tiet_tin_tuc_1.jpg" alt="Mùa thu ở Fukushima Nhật Bản">
                    <p class="img-caption">Mùa thu ở Fukushima, một tỉnh ở miền Trung Nhật Bản. Ảnh: Ngô Trần Hải An</p>
                </div>

                <p>Cùng với hoa anh đào, mùa lá vàng lá đỏ cũng là thời điểm Nhật Bản thu hút khách du lịch từ khắp nơi trên thế giới.
                    Từ khoảng cuối tháng 10 đến giữa tháng 12, cây cối ở khắp các tỉnh thành lần lượt đổi màu, tạo nên bức tranh mùa thu lãng mạn.</p>

                <p>Cơ quan Xúc tiến Du lịch Nhật Bản (JNTO) cập nhật dự báo từ Cơ quan Khí tượng Nhật Bản (JMC)
                    về thời điểm bắt đầu mùa ngắm lá đỏ (cây phong) và lá vàng (cây bạch quả)
                    tại khoảng 700 địa điểm trên toàn quốc, từ Hokkaido đến Kagoshima.
                    Ngoài ra, thông tin về mùa lá tại gần 2.900 ngọn núi cũng được cung cấp theo từng độ cao.</p>

                <div class="article-img">
                    <img src="<%= request.getContextPath() %>/IMAGE/asset/images/Chi_tiet_tin_tuc_2.jpg" alt="Lịch lá vàng mùa thu Nhật Bản 2025">
                    <p class="img-caption">Lịch lá vàng mùa thu 2025. Ảnh: JMC</p>
                </div>

                <p>Mùa lá vàng thường sớm hơn lá đỏ khoảng 10 ngày đến hai tuần.
                    Tại Hokkaido, lá vàng bắt đầu từ 31/10 và lá đỏ từ 5/11 (cao điểm 7/11) — sớm nhất so với các vùng khác.
                    Tokyo dự kiến lá vàng từ 27/11 và lá đỏ từ 1/12; Kyoto từ 28/11 và 9/12.</p>

                <h3 class="section-title">Các điểm đến tiêu biểu</h3>
                <ul>
                    <li><strong>Tokyo:</strong> Công viên Shinjuku Gyoen, Đại lộ Icho Namiki – hàng cây ngân hạnh vàng rực rỡ.</li>
                    <li><strong>Kyoto:</strong> Các chùa Kiyomizu-dera, Eikando, khu Arashiyama với cầu Togetsukyo bên sông Hozu.</li>
                    <li><strong>Osaka:</strong> Lâu đài Osaka được bao quanh bởi hàng trăm cây phong và cây ngân hạnh.</li>
                    <li><strong>Hokkaido:</strong> Công viên Moerenuma và núi Moiwa – rực rỡ trong sắc vàng đỏ giữa khí lạnh đầu đông.</li>
                    <li><strong>Fukuoka:</strong> Đền Dazaifu Tenmangu và công viên Ohori – điểm đến yêu thích của du khách Việt.</li>
                </ul>

                <p>Đầu tháng 11, bản tin mới nhất về tình hình lá vàng – lá đỏ sẽ được cập nhật.
                    Du khách có thể theo dõi trên trang thời tiết Otenki Navigator (phiên bản tiếng Anh).</p>

                <div class="article-img">
                    <img src="<%= request.getContextPath() %>/IMAGE/asset/images/Chi_tiet_tin_tuc_3.jpg" alt="Lịch lá đỏ mùa thu 2025 Nhật Bản">
                    <p class="img-caption">Lịch lá đỏ mùa thu 2025. Ảnh: JMC</p>
                </div>

                <p>Theo JNTO, lượng khách Việt đến Nhật Bản trong 8 tháng đầu năm đạt 479.300 lượt,
                    tăng 10,4% so với cùng kỳ năm trước. Mùa lá vàng, lá đỏ hứa hẹn sẽ tiếp tục là thời điểm du lịch hấp dẫn nhất năm.</p>
            </div>
        </div>
    </div>
</main>

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
