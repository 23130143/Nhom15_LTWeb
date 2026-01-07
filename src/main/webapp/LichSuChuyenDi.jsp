<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/LichSuChuyenDiStyle.css">
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

<main id="main">
    <section class="hitory">
        <h1 class="hitory-header">Lịch sử chuyến đi</h1>
        <div class="hitory-content">
            <div class="table">
                <div class="hitory-item">
                    <span class="id">Mã chuyến đi</span>
                    <span class="tour name">Tên chuyến đi</span>
                    <span class="start date">Ngày bắt đầu</span>
                    <span class="end date">Ngày kết thúc</span>
                    <span class="total price after">Giá</span>
                    <span class="status-h">Trạng thái</span>
                </div>

                <div class="history-item">
                    <span class="id">#BK2025-001</span>
                    <span class="tour-name">Tour Singapore - Malaysia 4N3Đ</span>
                    <span class="start-date">2025-04-20</span>
                    <span class="end-date">2025-04-22</span>
                    <span class="total-price-after">250.000.000 VNĐ</span>
                    <span class="status completed">Đã hoàn thành</span>
                </div>

                <div class="history-item">
                    <span class="id">#BK2025-002</span>
                    <span class="tour-name">Tour Nha Trang 4N3Đ</span>
                    <span class="start-date">2025-06-12</span>
                    <span class="end-date">2025-06-15</span>
                    <span class="total-price-after">200.000.000 VNĐ</span>
                    <span class="status ongoing">Đang đi</span>
                </div>

                <div class="history-item">
                    <span class="id">#BK2025-003</span>
                    <span class="tour-name">Tour Phú Quốc 3N2Đ</span>
                    <span class="start-date">2025-07-05</span>
                    <span class="end-date">2025-07-07</span>
                    <span class="total-price-after">100.000.000 VNĐ</span>
                    <span class="status upcoming">Chưa đi</span>
                </div>

                <div class="history-item">
                    <span class="id">#BK2025-004</span>
                    <span class="tour-name">Tour Hạ Long 2N1Đ</span>
                    <span class="start-date">2025-08-10</span>
                    <span class="end-date">2025-08-11</span>
                    <span class="total-price-after">80.000.000 VNĐ</span>
                    <span class="status canceled">Đã hủy</span>
                </div>
            </div>
        </div>
    </section>
</main>
</body>
</html>