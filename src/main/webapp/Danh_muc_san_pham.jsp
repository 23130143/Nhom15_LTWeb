<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.Category" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Danh mục sản phẩm</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css" integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/Danh_muc_san_pham.css" />
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
                                <img src="<%= request.getContextPath() %>/IMAGE/asset/images/LOGO.png" alt="Travel">
                            </a>
                        </div>
                    </div>
                    <div class="header-center">
                        <nav>
                            <div class=" menu">
                                <a href="<%= request.getContextPath() %>/index.jsp" class="item active">Tour trong nước</a>
                                <a href="<%= request.getContextPath() %>/index.jsp" class="item">Tour nước ngoài</a>
                                <a href="<%= request.getContextPath() %>/Khuyen_Mai.jsp" class="item">Khuyến mãi</a>
                                <a href="<%= request.getContextPath() %>/GioiThieu.jsp" class="item">Giới thiệu</a>

                                <div class="item ">
                                    <div class="sub">
                                        <span></span><span></span><span></span>
                                    </div>
                                    <div class="sub-item">
                                        <a href="<%= request.getContextPath() %>/Tin%20t%E1%BB%A9c.jsp">Tin Tức</a>
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
    <div class="main-wrapper">
        <div class="main-container">
            <!-- SIDE BAR -->
            <div class="side-container">
                <div class="side-bar">
                    <%-- DANH MỤC TOUR ĐỘNG --%>
                    <div class="side-menu">
                        <div class="side-title">
                            <div class="arrow">
                                <h4>Danh mục Tour</h4>
                                <i class="fa-solid fa-angle-down"></i>
                            </div>
                        </div>
                        <div class="side-body">
                            <ul class="category-list">
                                <li>
                                    <a href="<%=request.getContextPath()%>/search-by-category" class="side-item">Tất cả tour</a>
                                </li>
                                <%
                                    List<Category> cates = (List<Category>)request.getAttribute("categories");
                                    if (cates != null) {
                                        for (Category cat : cates) {
                                %>
                                <li>
                                    <a href="<%=request.getContextPath()%>/search-by-category?categoryId=<%=cat.getCategoriesID()%>" class="side-item">
                                        <%=cat.getCategoriesName()%>
                                    </a>
                                </li>
                                <%
                                        }
                                    }
                                %>
                            </ul>
                        </div>
                    </div>
                    <div class="side-menu">
                        <div class="side-title">
                            <div class="arrow">
                                <h4>Tour HOT nước ngoài</h4>
                                <i class="fa-solid fa-angle-down"></i>
                            </div>
                        </div>
                        <div class="side-body">
                            <div class="side-item">Trung Quốc</div>
                            <div class="side-item">Hàn Quốc</div>
                            <div class="side-item">Đài Loan</div>
                            <div class="side-item">Thụy Sĩ</div>
                            <div class="side-item">Pháp</div>
                        </div>
                    </div>

                    <div class="side-menu">
                        <div class="side-title">
                            <div class="arrow">
                                <h4>Tour HOT trong nước</h4>
                                <i class="fa-solid fa-angle-down"></i>
                            </div>
                        </div>
                        <div class="side-body">
                            <div class="side-item">Đà Nẵng</div>
                            <div class="side-item">Hạ Long</div>
                            <div class="side-item">Hà Nội</div>
                            <div class="side-item">Lào Cai</div>
                            <div class="side-item">Phú Quốc</div>
                        </div>
                    </div>

                    <div class="side-menu">
                        <div class="side-title">
                            <div class="arrow">
                                <h4>Tour HOT cuối năm</h4>
                                <i class="fa-solid fa-angle-down"></i>
                            </div>
                        </div>
                        <div class="side-body">
                            <div class="side-item">Tour Đài Loan</div>
                            <div class="side-item">Tour Trung Quốc</div>
                            <div class="side-item">Tour Đức</div>
                        </div>
                    </div>
                    <div class="side-menu">
                        <div class="side-title">
                            <div class="arrow">
                                <h4>Loại tour</h4>
                                <i class="fa-solid fa-angle-down"></i>
                            </div>
                        </div>
                        <div class="side-body">
                            <div class="side-item">Tour Trọn gói</div>
                            <div class="side-item">Tour Ngắn hạn</div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- MAIN CONTENT -->
            <div class="main-content">
                <div id="title">
                    <h1>Tour ưu đãi hot nhất hôm nay</h1>
                </div>
                <div onclick="location.href='<%= request.getContextPath() %>/chi_tiet.jsp'" class="main-card">
                    <div class="main-header">Xách vali lên và đi, ưu đãi nhóm chờ bạn!</div>
                    <div class="main-body">
                        <div class="main-img">
                            <div class="main-label-red">Giảm 3 Triệu Nhóm 4</div>
                            <img src="<%= request.getContextPath() %>/IMAGE/asset/images/Tour_6.jpg" alt="Tour Hàn Quốc" />
                        </div>
                        <div class="main-info">
                            <div class="main-title">
                                <h3>Tour Hàn Quốc 5N4Đ: Seoul - Nami - Everland - Cung Điện Gyeongbokgung</h3>
                            </div>
                            <div class="tour-time">
                                <i class="fa-solid fa-clock"></i>
                                <span class="tour-time-text">5 Ngày 4 Đêm</span>
                            </div>
                            <div class="item-price">
                                <div class="main-price">
                                    <span class="price">13.390.000 <small class="textCurrency">đ</small></span>
                                </div>
                                <div class="main-detail">
                                    <button class="btn">Xem Tour</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="main-card">
                    <div class="main-header">Trải nghiệm nước Pháp lãng mạn cùng bạn bè!</div>
                    <div class="main-body">
                        <div class="main-img">
                            <div class="main-label-red">Giảm 1.5 Triệu Nhóm 3</div>
                            <img src="<%= request.getContextPath() %>/IMAGE/asset/images/Tour_2.jpg" alt="Tour Pháp" />
                        </div>
                        <div class="main-info">
                            <div class="main-title">
                                <h3>Tour Pháp 6N5Đ: Paris - Lyon - Nice - Monaco</h3>
                            </div>
                            <div class="tour-time">
                                <i class="fa-solid fa-clock"></i>
                                <span class="tour-time-text">6 Ngày 5 Đêm</span>
                            </div>
                            <div class="item-price">
                                <div class="main-price">
                                    <span class="price">10.990.000 <small class="textCurrency">đ</small></span>
                                </div>
                                <div class="main-detail">
                                    <button class="btn">Xem Tour</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="main-card">
                    <div class="main-header">Khuyến mãi đặc biệt cho hành trình nước Ý!</div>
                    <div class="main-body">
                        <div class="main-img">
                            <div class="main-label-red">Khuyến Mãi Đặc Biệt</div>
                            <img src="<%= request.getContextPath() %>/IMAGE/asset/images/Tour_3.jpg" alt="Tour Pháp" />
                        </div>
                        <div class="main-info">
                            <div class="main-title">
                                <h3>Tour Ý 7N6Đ: Rome - Florence - Venice</h3>
                            </div>
                            <div class="tour-time">
                                <i class="fa-solid fa-clock"></i>
                                <span class="tour-time-text">7 Ngày 6 Đêm</span>
                            </div>
                            <div class="item-price">
                                <div class="main-price">
                                    <span class="price">14.200.000 <small class="textCurrency">đ</small></span>
                                </div>
                                <div class="main-detail">
                                    <button class="btn">Xem Tour</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="main-card no-header">
                    <div class="main-body">
                        <div class="main-img">
                            <img src="<%= request.getContextPath() %>/IMAGE/asset/images/Tour_8.jpg" alt="Tour Thái Lan" />
                        </div>
                        <div class="main-info">
                            <div class="main-title">
                                <h3>Tour Đà Nẵng 3N2D: Biển Đà Nẵng - Bà nà Hill - Phố cổ Hội An - Vinpearland</h3>
                            </div>
                            <div class="tour-time">
                                <i class="fa-solid fa-clock"></i>
                                <span class="tour-time-text">3 Ngày 2 Đêm</span>
                            </div>
                            <div class="item-price">
                                <div class="main-price">
                                    <span class="price">5.100.000 <small class="textCurrency">đ</small></span>
                                </div>
                                <div class="main-detail">
                                    <button class="btn">Xem Tour</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="main-card no-header">
                    <div class="main-body">
                        <div class="main-img">
                            <img src="<%= request.getContextPath() %>/IMAGE/asset/images/Tour_7.jpg" alt="Tour Thái Lan" />
                        </div>
                        <div class="main-info">
                            <div class="main-title">
                                <h3>Tour Thái Lan 5N4Đ: HCM - Bangkok - Pattaya - Lâu Đài Tỉ Phú - Vườn Bách Thảo Nongnooch</h3>
                            </div>
                            <div class="tour-time">
                                <i class="fa-solid fa-clock"></i>
                                <span class="tour-time-text">5 Ngày 4 Đêm</span>
                            </div>
                            <div class="item-price">
                                <div class="main-price">
                                    <span class="price">6.490.000 <small class="textCurrency">đ</small></span>
                                </div>
                                <div class="main-detail">
                                    <button class="btn">Xem Tour</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</main>

<!-- Footer -->
<footer class="footer">
    <div class="footer-top">
        <div class="ft_container">
            <div class="ft_col">
                <div class="list_col">
                    <h4>Về TravelNow</h4>
                    <a href="<%= request.getContextPath() %>/GioiThieu.jsp">Giới thiệu</a>
                    <a href="<%= request.getContextPath() %>/DieuKienDieuKhoan.jsp">Điều kiện & điều khoản</a>
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
<script src="<%= request.getContextPath() %>/Javascript/Danh_muc_san_pham.js" defer></script>
</body>
</html>