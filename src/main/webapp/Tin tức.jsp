<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
          integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/Tin%20t%E1%BB%A9c.css">
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

<main>
    <div class="main-new">
        <div class="new-container">
            <div class="new-bar">
                <div class="new-title">
                    <h3>Danh mục tin tức</h3>
                </div>

                <ul>
                    <li>Tin mới nhất</li>
                    <li>Tin trong nước</li>
                    <li>Tin quốc tế</li>
                    <li>Kinh nghiệm du lịch</li>
                    <li>Khám phá văn hoá</li>
                    <li>Sự kiện du lịch</li>
                </ul>
            </div>

            <div class="new-content">
                <div class="new-title">
                    <h1>Tin tức mới nhất</h1>
                </div>

                <a href="${pageContext.request.contextPath}/Chi_tiet_tin_tuc.jsp" class="new-card">
                    <div class="new-img">
                        <img src="${pageContext.request.contextPath}/IMAGE/asset/images/New_1.jpg" alt="Du lịch màu thu Nhật Bản">
                    </div>
                    <div class="new-info">
                        <h3>Trải nghiệm mùa lá đỏ tuyệt đẹp tại Nhật Bản</h3>
                        <p>Mùa thu tại Nhật Bản thu hút hàng triệu du khách bởi khung cảnh lá đỏ rực rỡ,
                            đặc biệt là ở Kyoto, Nara và Hokkaido. Cùng khám phá những địa điểm ngắm lá đỏ đẹp nhất
                            trong dịp này !</p>
                    </div>
                </a>

                <div class="new-card">
                    <div class="new-img">
                        <img src="${pageContext.request.contextPath}/IMAGE/asset/images/New_2.jpg" alt="Ẩm thực đường phố Thái Lan">
                    </div>
                    <div class="new-info">
                        <h3>Khám phá ẩm thực đường phố Thái Lan – Thiên đường vị giác</h3>
                        <p>Ẩm thực Thái Lan luôn khiến du khách say mê với hương vị cay nồng, chua ngọt hòa quyện hoàn hảo.
                            Từ Pad Thai, Tom Yum đến xoài nếp cốt dừa, mỗi món ăn đều phản ánh sự phong phú và tinh tế của văn hóa Thái.
                            Hãy thử thưởng thức tại các khu chợ đêm Bangkok để cảm nhận trọn vẹn không khí nhộn nhịp nơi đây!</p>
                    </div>
                </div>

                <div class="new-card">
                    <div class="new-img">
                        <img src="${pageContext.request.contextPath}/IMAGE/asset/images/New_3.jpg" alt="Khám phá hang động Phong Nha - Kẻ Bàng">
                    </div>
                    <div class="new-info">
                        <h3>Chuyến phiêu lưu kỳ thú trong lòng hang động Phong Nha – Kẻ Bàng</h3>
                        <p>Vườn quốc gia Phong Nha – Kẻ Bàng là một trong những điểm đến nổi tiếng nhất Việt Nam
                            với hệ thống hang động kỳ vĩ, trong đó có Sơn Đoòng – hang lớn nhất thế giới.
                            Du khách có thể chèo thuyền trên sông Son, khám phá hang nước ngầm và chiêm ngưỡng những khối thạch nhũ tuyệt đẹp.</p>
                    </div>
                </div>

                <div class="new-card">
                    <div class="new-img">
                        <img src="${pageContext.request.contextPath}/IMAGE/asset/images/New_4.jpg" alt="Top điểm đến du lịch châu Âu">
                    </div>
                    <div class="new-info">
                        <h3>Top 5 điểm đến châu Âu không thể bỏ qua mùa lễ hội</h3>
                        <p>Từ Paris hoa lệ, Venice lãng mạn đến Prague cổ kính – mỗi thành phố châu Âu đều mang vẻ đẹp riêng.
                            Mùa lễ hội cuối năm là thời điểm lý tưởng để chiêm ngưỡng những con phố ngập tràn ánh đèn,
                            thưởng thức rượu vang nóng và đắm chìm trong không khí Giáng sinh rộn ràng.</p>
                    </div>
                </div>

                <div class="new-card">
                    <div class="new-img">
                        <img src="${pageContext.request.contextPath}/IMAGE/asset/images/New_5.jpg" alt="Trải nghiệm Bali Indonesia">
                    </div>
                    <div class="new-info">
                        <h3>Bali – Thiên đường nghỉ dưỡng và trải nghiệm văn hóa Indonesia</h3>
                        <p>Bali không chỉ nổi tiếng với những bãi biển trong xanh, mà còn là nơi du khách có thể hòa mình vào văn hóa bản địa.
                            Từ những ngôi đền cổ linh thiêng, lễ hội truyền thống đầy sắc màu đến những khu nghỉ dưỡng sang trọng,
                            tất cả tạo nên một hành trình khó quên cho mọi du khách khi đặt chân đến hòn đảo xinh đẹp này.</p>
                    </div>
                </div>

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
                    <a href="${pageContext.request.contextPath}/GioiThieu.jsp">Giới thiệu</a>
                    <a href="${pageContext.request.contextPath}/DieuKienDieuKhoan.jsp">Điều kiện &amp; điều khoản</a>
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