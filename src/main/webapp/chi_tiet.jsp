<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/CTStyles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">
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
                                <a href="<%= request.getContextPath() %>/index.jsp" class="item">Tour trong nước</a>
                                <a href="#" class="item">Tour nước ngoài</a>
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

<main class="content">
    <section class="hearder-page">
        <h1 class="page-title">
            Tour Singapore - Malaysia 4N3Đ: HCM - Sentosa - Genting - Động Batu - Tháp Đôi Petronas
        </h1>
    </section>

    <section class="container-tour">
        <div class="tour-section">
            <div class="tour-img">
                <img id="main-img" src="<%= request.getContextPath() %>/IMAGE/asset/images/gardens-by-the-bay-sing.gif" alt="Gardens by the Bay">
                <i id="left-img" class="fa-solid fa-arrow-left"></i>
                <i id="right-img" class="fa-solid fa-arrow-right"></i>
            </div>

            <div class="thumb-list">
                <img src="<%= request.getContextPath() %>/IMAGE/asset/images/singapore-thuy-cung-ivvuu-930x520.gif" alt="SEA Aquarium">
                <img src="<%= request.getContextPath() %>/IMAGE/asset/images/CT_tour1.gif" alt="Cung điện Hoàng gia">
                <img src="<%= request.getContextPath() %>/IMAGE/asset/images/gardens-by-the-bay-sing.gif" alt="Gardens by the Bay">
                <img src="<%= request.getContextPath() %>/IMAGE/asset/images/ivivu-cao-nguyen-genting-1-930x520.gif" alt="Cao nguyên Genting">
                <img src="<%= request.getContextPath() %>/IMAGE/asset/images/ivivu-dong-batu-930x520.gif" alt="Động Batu">
                <img src="<%= request.getContextPath() %>/IMAGE/asset/images/ivivu-malaysia-930x520.jpg" alt="Tháp đôi Petronas">
            </div>

            <div class="tourDetails">
                <h4>Chi Tiết Chuyến Du Lịch</h4>
                <div class="departure">
                    <i class="fa-solid fa-location-dot"></i>
                    <span>Khởi hành từ:</span>
                    <span>Hồ Chí Minh</span>
                </div>

                <div class="details-row">
                    <div class="d-item">
                        <i class="fa-solid fa-check"></i>
                        <span>Vé máy bay</span>
                    </div>
                    <div class="d-item">
                        <i class="fa-solid fa-check"></i>
                        <span>Khách sạn 3-4*</span>
                    </div>
                    <div class="d-item">
                        <i class="fa-solid fa-check"></i>
                        <span>Bữa ăn</span>
                    </div>
                    <div class="d-item">
                        <i class="fa-solid fa-check"></i>
                        <span>Xe tham quan</span>
                    </div>
                    <div class="d-item">
                        <i class="fa-solid fa-check"></i>
                        <span>Hướng dẫn viên</span>
                    </div>
                    <div class="d-item">
                        <i class="fa-solid fa-check"></i>
                        <span>Bảo hiểm du lịch</span>
                    </div>
                </div>
            </div>

            <div class="experience-section">
                <h2>Trải Nghiệm Thú Vị</h2>
                <div class="experience-row">
                    <span>- Tháp Đôi Petronas: Chiêm ngưỡng biểu tượng hiện đại của Kuala Lumpur.</span>
                    <span>- Động Batu: Chinh phục 272 bậc thang dẫn lên ngôi đền Hindu linh thiêng.</span>
                    <span>- Khám phá phố Jalan Alor: Thưởng thức ẩm thực đường phố đặc sắc Malaysia.</span>
                    <span>- Đảo Sentosa: Tham gia các hoạt động giải trí tại khu nghỉ dưỡng hàng đầu của Singapore.</span>
                    <span>- Cao nguyên Genting: Khám phá khu nghỉ dưỡng trên núi với sòng bạc và công viên giải trí.</span>
                </div>
            </div>
        </div>

        <div class="tour-info">
            <h2>Lịch Trình và Giá Tour</h2>
            <div class="tour-date">
                <label>Chọn Lịch Trình:</label>
                <input type="date" id="date" name="date">
            </div>

            <div class="tour-pricing">
                <div class="row">
                    <span>Người lớn &gt; 9 tuổi</span>
                    <span id="price" class="price">x 9.490.000</span>
                    <input id="number-a" type="number" value="2" min="1">
                </div>
                <div class="row">
                    <span>Trẻ em (&lt; 9 tuổi)</span>
                    <span id="child-price" class="child-price">x 8.500.000</span>
                    <input id="number-c" type="number" value="0" min="0">
                </div>
            </div>

            <div class="total">
                <div class="row">
                    <span class="basic-price">Giá gốc:</span>
                    <span id="basic-price">18.980.000</span>
                </div>
                <div class="row">
                    <span class="dis-price">Giá giảm:</span>
                    <span id="dis-price">0</span>
                </div>
                <div class="row">
                    <span class="total-price">Tổng giá:</span>
                    <span id="total-price">18.980.000</span>
                </div>
            </div>

            <div class="tour-button">
                <button class="tour-btn" onclick="window.location.href='<%= request.getContextPath() %>/KhachDatTour.jsp'">Yêu cầu đặt</button>
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

<script src="<%= request.getContextPath() %>/Javascript/CT_script.js"></script>
</body>
</html>