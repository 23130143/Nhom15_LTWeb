
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
          integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/Tour.css">
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
                        <div class="cart">
                            <a href="<%= request.getContextPath() %>/Cart.jsp">
                                <i class="fa-solid fa-cart-shopping"></i>
                                <span class="cart-count">0</span>
                            </a>
                        </div>
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

<section class="section-search">
    <img src="IMAGE/asset/images/search.gif" alt="ảnh nền"/> <!--ảnh nền-->

    <div class="search-container">
        <div class="home-title"> <!--tiêu đề-->
            <h1>Hơn 100+ Tour, Khám Phá Ngay</h1>
        </div>
        <div class="home-info">
            <h2>Giá tốt - hỗ trợ 24/7 - khắp nơi</h2>
        </div>

        <div class="home-button">
            <div class="search-item1"> <!--thanh địa điểm-->
                <i class="fa-solid fa-location-dot"></i>
                <div class="search-content">
                    <label for="001"> ĐỊA ĐIỂM </label>
                    <input id="001" type="text" placeholder="Bạn muốn đi đâu?">
                </div>
            </div>

            <div class="search-item2"> <!--thanh khởi hành-->
                <i class="fa-solid fa-plane-departure"></i>
                <div class="search-content">
                    <label for="002"> KHỞI HÀNH TỪ </label>
                    <select id="002">
                        <option value="">Vui lòng chọn</option>
                        <option>Hồ Chí Minh</option>
                        <option>Hà Nội</option>
                        <option>Đà Nẵng</option>
                        <option>Phú Quốc</option>
                        <option>Hải Phòng</option>
                    </select>
                </div>
            </div>

            <button class="search-button"
                    onclick="window.location.href='<%= request.getContextPath() %>/Danh_muc_san_pham.jsp'">Tìm</button> <!--nút tìm ngay-->
        </div>
    </div>
</section>

<section class="tour-section" id="1">
    <div class="container">
        <h2>Tour ưu đãi hôm nay</h2>
        <span class="title-group">Chơi Tết Thả Ga, Không Lo Về Giá</span>

        <div class="tour-grid">
            <div class="tour-card">
                <div class="label red">Giảm 2 Triệu Nhóm 4</div>
                <img class="tour-img" src="IMAGE/asset/images/Tour_1.jpg" alt="Tour Thụy Sĩ">

                <div class="tour-detail">
                    <div class="tour-content">
                        <h3>Tour Thụy Sĩ 5N4Đ: Zürich - Basel - Schwyz - St. Gallen</h3>
                    </div>

                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text">10 Ngày 9 Đêm</span>
                    </div>
                    <div class="tour-info">
                        <ul class="tour-list">
                            <li>Phố cổ Altstadt</li>
                            <li>Du thuyền trên Hồ Zürich</li>
                            <li>Bảo tàng Kunsthaus Zürich</li>
                            <li>Shopping Bahnhofstrasse</li>
                        </ul>
                    </div>
                    <div class="price">
                        <span class="old">14.990.000 <small class="textCurrency">đ</small></span>
                        <span class="new">13.390.000 <small class="textCurrency">đ</small></span>
                    </div>
                </div>
               
            </div>
            <div class="tour-card">
                <div class="label red">Giảm 1.5 Triệu Nhóm 3</div>
                <img class="tour-img" src="IMAGE/asset/images/Tour_2.jpg" alt="Tour Pháp">
                <div class="tour-detail">
                    <div class="tour-content">
                        <h3>Tour Pháp 6N5Đ: Paris - Lyon - Nice - Monaco</h3>
                    </div>

                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text">6 Ngày 5 Đêm</span>
                    </div>

                    <div class="tour-info">
                        <ul class="tour-list">
                            <li>Tháp Eiffel</li>
                            <li>Bảo tàng Louvren</li>
                            <li>Nhà thờ Đức Bà Paris</li>
                            <li>Đường phố Montmartre</li>
                        </ul>
                    </div>

                    <div class="price">
                        <span class="old">12.500.000 <small class="textCurrency">đ</small></span>
                        <span class="new">10.990.000 <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>

            <div class="tour-card">
                <div class="label red">Khuyến Mãi Đặc Biệt</div>
                <img class="tour-img" src="IMAGE/asset/images/Tour_3.jpg" alt="Tour Ý">
                <div class="tour-detail">
                    <div class="tour-content">
                        <h3>Tour Ý 7N6Đ: Rome - Florence - Venice</h3>
                    </div>

                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text">7 Ngày 6 Đêm</span>
                    </div>

                    <div class="tour-info">
                        <ul class="tour-list">
                            <li>Đấu trường Colosseum</li>
                            <li>Quảng trường Saint Peter</li>
                            <li>Venice Grand Canal</li>
                            <li>Bảo tàng Uffizi</li>
                        </ul>
                    </div>

                    <div class="price">
                        <span class="old">15.800.000 <small class="textCurrency">đ</small></span>
                        <span class="new">14.200.000 <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>

            <div class="tour-card">
                <div class="label red">Hot Deal</div>
                <img class="tour-img" src="IMAGE/asset/images/Tour_4.jpg" alt="Tour Nhật Bản">
                <div class="tour-detail">
                    <div class="tour-content">
                        <h3>Tour Nhật Bản 10N9Đ: Tokyo - Kyoto - Osaka</h3>
                    </div>

                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text">10 Ngày 9 Đêm</span>
                    </div>

                    <div class="tour-info">
                        <ul class="tour-list">
                            <li>Đền Senso-ji</li>
                            <li>Công viên Ueno</li>
                            <li>Lâu đài Osaka</li>
                            <li>Phố Gion</li>
                        </ul>
                    </div>

                    <div class="price">
                        <span class="old">40.990.000 <small class="textCurrency">đ</small></span>
                        <span class="new">35.390.000 <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>

            <div class="tour-card">
                <div class="label red">Ưu Đãi Cuối Năm</div>
                <img class="tour-img" src="IMAGE/asset/images/Tour_5.jpg" alt="Tour Đài Loan">
                <div class="tour-detail">
                    <div class="tour-content">
                        <h3>Tour Đài Loan 5N4Đ: HCM - Đài Trung - Cao Hùng - Đài Bắc</h3>
                    </div>

                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text">5 Ngày 4 Đêm</span>
                    </div>

                    <div class="tour-info">
                        <ul class="tour-list">
                            <li>Bảo tàng kỳ mỹ</li>
                            <li>Chiêm Bái Phật Quang Sơn Tự</li>
                            <li>Phổ cổ thập phần</li>
                            <li>Bảo tàng quốc gia Đài Loan</li>
                        </ul>
                    </div>

                    <div class="price">
                        <span class="old">18.990.000 <small class="textCurrency">đ</small></span>
                        <span class="new">16.390.000 <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>

            <div class="tour-card">
                <div class="label red">Giảm 3 Triệu Nhóm 4</div>
                <img class="tour-img" src="IMAGE/asset/images/Tour_6.jpg" alt="Tour Hàn Quốc">
                <div class="tour-detail">
                    <div class="tour-content">
                        <h3>Tour Hàn Quốc 5N4Đ: Seoul - Nami - Everland</h3>
                    </div>

                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text">5 Ngày 4 Đêm</span>
                    </div>

                    <div class="tour-info">
                        <ul class="tour-list">
                            <li>Khám phá Seoul</li>
                            <li>Tháp N Seoul</li>
                            <li>Ngắm cảnh đảo Nami</li>
                            <li>Vui chơi tại công viên Everland</li>
                        </ul>
                    </div>

                    <div class="price">
                        <span class="old">14.990.000 <small class="textCurrency">đ</small></span>
                        <span class="new">13.390.000 <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="see-more">
            <a href="<%= request.getContextPath() %>/Danh_muc_san_pham.jsp" class="btn-see-more">Xem thêm tours</a>
        </div>
    </div>
</section>
<section class="tour-section" id="2">
    <div class="container">
        <h2>Tour Châu Âu</h2>
        <span class="title-group">Chơi Tết Thả Ga, Không Lo Về Giá</span>

        <div class="tour-grid">
            <div class="tour-card">
                <div class="label red">Giảm 2 Triệu Nhóm 4</div>
                <img class="tour-img" src="IMAGE/asset/images/Tour_1.jpg" alt="Tour Thụy Sĩ">
                <div class="tour-detail">
                    <div class="tour-content">
                        <h3>Tour Thụy Sĩ 5N4Đ: Zürich - Basel - Schwyz - St. Gallen</h3>
                    </div>

                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text">10 Ngày 9 Đêm</span>
                    </div>
                    <div class="tour-info">
                        <ul class="tour-list">
                            <li>Phố cổ Altstadt</li>
                            <li>Du thuyền trên Hồ Zürich</li>
                            <li>Bảo tàng Kunsthaus Zürich</li>
                            <li>Shopping Bahnhofstrasse</li>
                        </ul>
                    </div>
                    <div class="price">
                        <span class="old">14.990.000 <small class="textCurrency">đ</small></span>
                        <span class="new">13.390.000 <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>
            <div class="tour-card">
                <div class="label red">Giảm 1.5 Triệu Nhóm 3</div>
                <img class="tour-img" src="IMAGE/asset/images/Tour_2.jpg" alt="Tour Pháp">
                <div class="tour-detail">
                    <div class="tour-content">
                        <h3>Tour Pháp 6N5Đ: Paris - Lyon - Nice - Monaco</h3>
                    </div>

                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text">6 Ngày 5 Đêm</span>
                    </div>

                    <div class="tour-info">
                        <ul class="tour-list">
                            <li>Tháp Eiffel</li>
                            <li>Bảo tàng Louvren</li>
                            <li>Nhà thờ Đức Bà Paris</li>
                            <li>Đường phố Montmartre</li>
                        </ul>
                    </div>

                    <div class="price">
                        <span class="old">12.500.000 <small class="textCurrency">đ</small></span>
                        <span class="new">10.990.000 <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>

            <div class="tour-card">
                <div class="label red">Khuyến Mãi Đặc Biệt</div>
                <img class="tour-img" src="IMAGE/asset/images/Tour_3.jpg" alt="Tour Ý">
                <div class="tour-detail">
                    <div class="tour-content">
                        <h3>Tour Ý 7N6Đ: Rome - Florence - Venice</h3>
                    </div>

                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text">7 Ngày 6 Đêm</span>
                    </div>

                    <div class="tour-info">
                        <ul class="tour-list">
                            <li>Đấu trường Colosseum</li>
                            <li>Quảng trường Saint Peter</li>
                            <li>Venice Grand Canal</li>
                            <li>Bảo tàng Uffizi</li>
                        </ul>
                    </div>

                    <div class="price">
                        <span class="old">15.800.000 <small class="textCurrency">đ</small></span>
                        <span class="new">14.200.000 <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>

            <div class="tour-card">
                <div class="label red">Hot Deal</div>
                <img class="tour-img" src="IMAGE/asset/images/Tour_4.jpg" alt="Tour Nhật Bản">
                <div class="tour-detail">
                    <div class="tour-content">
                        <h3>Tour Nhật Bản 10N9Đ: Tokyo - Kyoto - Osaka</h3>
                    </div>

                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text">10 Ngày 9 Đêm</span>
                    </div>

                    <div class="tour-info">
                        <ul class="tour-list">
                            <li>Đền Senso-ji</li>
                            <li>Công viên Ueno</li>
                            <li>Lâu đài Osaka</li>
                            <li>Phố Gion</li>
                        </ul>
                    </div>

                    <div class="price">
                        <span class="old">40.990.000 <small class="textCurrency">đ</small></span>
                        <span class="new">35.390.000 <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>

            <div class="tour-card">
                <div class="label red">Ưu Đãi Cuối Năm</div>
                <img class="tour-img" src="IMAGE/asset/images/Tour_5.jpg" alt="Tour Đài Loan">
                <div class="tour-detail">
                    <div class="tour-content">
                        <h3>Tour Đài Loan 5N4Đ: HCM - Đài Trung - Cao Hùng - Đài Bắc</h3>
                    </div>

                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text">5 Ngày 4 Đêm</span>
                    </div>

                    <div class="tour-info">
                        <ul class="tour-list">
                            <li>Bảo tàng kỳ mỹ</li>
                            <li>Chiêm Bái Phật Quang Sơn Tự</li>
                            <li>Phổ cổ thập phần</li>
                            <li>Bảo tàng quốc gia Đài Loan</li>
                        </ul>
                    </div>

                    <div class="price">
                        <span class="old">18.990.000 <small class="textCurrency">đ</small></span>
                        <span class="new">16.390.000 <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>

            <div class="tour-card">
                <div class="label red">Giảm 3 Triệu Nhóm 4</div>
                <img class="tour-img" src="IMAGE/asset/images/Tour_6.jpg" alt="Tour Hàn Quốc">
                <div class="tour-detail">
                    <div class="tour-content">
                        <h3>Tour Hàn Quốc 5N4Đ: Seoul - Nami - Everland</h3>
                    </div>

                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text">5 Ngày 4 Đêm</span>
                    </div>

                    <div class="tour-info">
                        <ul class="tour-list">
                            <li>Khám phá Seoul</li>
                            <li>Tháp N Seoul</li>
                            <li>Ngắm cảnh đảo Nami</li>
                            <li>Vui chơi tại công viên Everland</li>
                        </ul>
                    </div>

                    <div class="price">
                        <span class="old">14.990.000 <small class="textCurrency">đ</small></span>
                        <span class="new">13.390.000 <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="see-more">
            <a href="<%= request.getContextPath() %>/Danh_muc_san_pham.jsp" class="btn-see-more">Xem thêm tours</a>
        </div>
    </div>
</section>
<section class="tour-section" id="3">
    <div class="container">
        <h2>Tour Châu Á</h2>
        <span class="title-group">Chơi Tết Thả Ga, Không Lo Về Giá</span>

        <div class="tour-grid">
            <div class="tour-card">
                <div class="label red">Giảm 2 Triệu Nhóm 4</div>
                <img class="tour-img" src="IMAGE/asset/images/Tour_1.jpg" alt="Tour Thụy Sĩ">
                <div class="tour-detail">
                    <div class="tour-content">
                        <h3>Tour Thụy Sĩ 5N4Đ: Zürich - Basel - Schwyz - St. Gallen</h3>
                    </div>

                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text">10 Ngày 9 Đêm</span>
                    </div>
                    <div class="tour-info">
                        <ul class="tour-list">
                            <li>Phố cổ Altstadt</li>
                            <li>Du thuyền trên Hồ Zürich</li>
                            <li>Bảo tàng Kunsthaus Zürich</li>
                            <li>Shopping Bahnhofstrasse</li>
                        </ul>
                    </div>
                    <div class="price">
                        <span class="old">14.990.000 <small class="textCurrency">đ</small></span>
                        <span class="new">13.390.000 <small class="textCurrency">đ</small></span>
                    </div>

                </div>

            </div>
            <div class="tour-card">
                <div class="label red">Giảm 1.5 Triệu Nhóm 3</div>
                <img class="tour-img" src="IMAGE/asset/images/Tour_2.jpg" alt="Tour Pháp">
                <div class="tour-detail">
                    <div class="tour-content">
                        <h3>Tour Pháp 6N5Đ: Paris - Lyon - Nice - Monaco</h3>
                    </div>

                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text">6 Ngày 5 Đêm</span>
                    </div>

                    <div class="tour-info">
                        <ul class="tour-list">
                            <li>Tháp Eiffel</li>
                            <li>Bảo tàng Louvren</li>
                            <li>Nhà thờ Đức Bà Paris</li>
                            <li>Đường phố Montmartre</li>
                        </ul>
                    </div>

                    <div class="price">
                        <span class="old">12.500.000 <small class="textCurrency">đ</small></span>
                        <span class="new">10.990.000 <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>

            <div class="tour-card">
                <div class="label red">Khuyến Mãi Đặc Biệt</div>
                <img class="tour-img" src="IMAGE/asset/images/Tour_3.jpg" alt="Tour Ý">
                <div class="tour-detail">
                    <div class="tour-content">
                        <h3>Tour Ý 7N6Đ: Rome - Florence - Venice</h3>
                    </div>

                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text">7 Ngày 6 Đêm</span>
                    </div>

                    <div class="tour-info">
                        <ul class="tour-list">
                            <li>Đấu trường Colosseum</li>
                            <li>Quảng trường Saint Peter</li>
                            <li>Venice Grand Canal</li>
                            <li>Bảo tàng Uffizi</li>
                        </ul>
                    </div>

                    <div class="price">
                        <span class="old">15.800.000 <small class="textCurrency">đ</small></span>
                        <span class="new">14.200.000 <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>

            <div class="tour-card">
                <div class="label red">Hot Deal</div>
                <img class="tour-img" src="IMAGE/asset/images/Tour_4.jpg" alt="Tour Nhật Bản">
                <div class="tour-detail">
                    <div class="tour-content">
                        <h3>Tour Nhật Bản 10N9Đ: Tokyo - Kyoto - Osaka</h3>
                    </div>

                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text">10 Ngày 9 Đêm</span>
                    </div>

                    <div class="tour-info">
                        <ul class="tour-list">
                            <li>Đền Senso-ji</li>
                            <li>Công viên Ueno</li>
                            <li>Lâu đài Osaka</li>
                            <li>Phố Gion</li>
                        </ul>
                    </div>

                    <div class="price">
                        <span class="old">40.990.000 <small class="textCurrency">đ</small></span>
                        <span class="new">35.390.000 <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>

            <div class="tour-card">
                <div class="label red">Ưu Đãi Cuối Năm</div>
                <img class="tour-img" src="IMAGE/asset/images/Tour_5.jpg" alt="Tour Đài Loan">
                <div class="tour-detail">
                    <div class="tour-content">
                        <h3>Tour Đài Loan 5N4Đ: HCM - Đài Trung - Cao Hùng - Đài Bắc</h3>
                    </div>

                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text">5 Ngày 4 Đêm</span>
                    </div>

                    <div class="tour-info">
                        <ul class="tour-list">
                            <li>Bảo tàng kỳ mỹ</li>
                            <li>Chiêm Bái Phật Quang Sơn Tự</li>
                            <li>Phổ cổ thập phần</li>
                            <li>Bảo tàng quốc gia Đài Loan</li>
                        </ul>
                    </div>

                    <div class="price">
                        <span class="old">18.990.000 <small class="textCurrency">đ</small></span>
                        <span class="new">16.390.000 <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>

            <div class="tour-card">
                <div class="label red">Giảm 3 Triệu Nhóm 4</div>
                <img class="tour-img" src="IMAGE/asset/images/Tour_6.jpg" alt="Tour Hàn Quốc">
                <div class="tour-detail">
                    <div class="tour-content">
                        <h3>Tour Hàn Quốc 5N4Đ: Seoul - Nami - Everland</h3>
                    </div>

                    <div class="tour-time">
                        <i class="fa-solid fa-clock"></i>
                        <span class="tour-time-text">5 Ngày 4 Đêm</span>
                    </div>

                    <div class="tour-info">
                        <ul class="tour-list">
                            <li>Khám phá Seoul</li>
                            <li>Tháp N Seoul</li>
                            <li>Ngắm cảnh đảo Nami</li>
                            <li>Vui chơi tại công viên Everland</li>
                        </ul>
                    </div>

                    <div class="price">
                        <span class="old">14.990.000 <small class="textCurrency">đ</small></span>
                        <span class="new">13.390.000 <small class="textCurrency">đ</small></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="see-more">
            <a href="<%= request.getContextPath() %>/Danh_muc_san_pham.jsp" class="btn-see-more">Xem thêm tours</a>
        </div>
    </div>
</section>

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

</body>
</html>
