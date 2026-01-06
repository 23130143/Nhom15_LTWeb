<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/DieuKienDieuKhoan.css">
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
        <h3>ĐIỀU KIỆN &amp; ĐIỀU KHOẢN DÀNH CHO KHÁCH HÀNG</h3>
        <p>Khi sử dụng hoặc đặt dịch vụ trên TravelNow, Quý Khách xác nhận
            đã đọc, hiểu và đồng ý với các Điều kiện &amp; Điều khoản dưới đây:</p>

        <div class="main-content1">
            <h4>1. Định nghĩa:</h4>
            <p>\- TravelNow / Chúng tôi: Là đơn vị trung gian cung cấp dịch vụ đặt tour du lịch, combo nghỉ dưỡng thông
                qua nền tảng của mình.</p>
            <p>\- Nhà cung cấp: Bao gồm tour cung cấp dịch vụ du lịch.</p>
            <p>\- Khách hàng / Quý Khách: Là người sử dụng nền tảng TravelX để đặt và/hoặc thanh toán dịch vụ.</p>
            <p>\- Phí dịch vụ: Là khoản phí TravelNow thu nhằm bù đắp chi phí vận hành, tư vấn và hỗ trợ khách hàng.
                Khoản phí này không hoàn lại trong mọi trường hợp</p>
            <p>\- Phí tiện ích: Là khoản phí bổ sung khi khách hàng sử dụng dịch vụ trực tuyến của TravelNow (website).
                Mức phí có thể thay đổi mà không cần thông báo trước.</p>
        </div>

        <div class="main-content2">
            <h4>2. Độ tuổi sử dụng:</h4>
            <p>Người dùng phải từ 18 tuổi trở lên để được phép đặt dịch vụ qua TravelNow. Người dưới 18 tuổi chỉ được
                phép sử dụng khi có sự đồng ý của người giám hộ hợp pháp.</p>
        </div>

        <div class="main-content3">
            <h4>3. Phương thức thanh toán:</h4>
            <p>TravelNow hỗ trợ nhiều hình thức thanh toán linh hoạt:</p>
            <p>\- Thanh toán qua QR Code</p>
            <p>\- Thanh toán tại văn phòng</p>
        </div>

        <div class="main-content4">
            <h4>4. Xác nhận đơn đặt dịch vụ:</h4>
            <p>Xác nhận đặt dịch vụ được gửi đến tài khoản TravelNow của Quý Khách.</p>
            <p>Đơn đặt chỉ có hiệu lực khi Quý Khách đã thanh toán trong thời hạn quy định.</p>
            <p>Nếu thanh toán trễ, đơn hàng sẽ tự động hủy mà không cần thông báo.</p>
        </div>

        <div class="main-content5">
            <h4>5. Thực hiện thay đổi cho thông tin đặt dịch vụ:</h4>
            <p>Quý Khách có thể yêu cầu thay đổi hoặc hủy đặt dịch vụ qua email 23130143@st.hcmuaf.edu.vn.</p>
            <p>Mọi yêu cầu thay đổi/hủy sẽ phụ thuộc vào chính sách của nhà cung cấp tại thời điểm đó.</p>
            <p>TravelNow có quyền thu phí quản lý hoặc phí xử lý bổ sung cho các yêu cầu thay đổi/hủy.</p>
            <p>Nếu nhà cung cấp hoặc yếu tố bất khả kháng (thiên tai, dịch bệnh, chiến tranh, v.v) khiến dịch vụ không
                thể thực hiện, TravelNow sẽ thông báo phương án hỗ trợ phù hợp (đổi, bảo lưu, hoặc hoàn tiền sau khi trừ
                phí dịch vụ).</p>
        </div>

        <div class="main-content6">
            <h4>6. Cung cấp và xác minh thông tin:</h4>
            <p>Nhà cung cấp có thể yêu cầu Quý Khách xuất trình CMND/Hộ chiếu và thẻ thanh toán (nếu cần) khi nhận dịch
                vụ.</p>
            <p>TravelNow không chia sẻ thông tin thẻ của khách hàng cho nhà cung cấp, trừ trường hợp được yêu cầu hợp
                pháp.</p>
        </div>

        <div class="main-content7">
            <h4>7. Thông tin trang web:</h4>
            <p>TravelNow luôn nỗ lực đảm bảo thông tin chính xác nhất, tuy nhiên:</p>
            <p>\- Một số thông tin được cung cấp trực tiếp bởi đối tác và có thể thay đổi theo thời gian.</p>
            <p>\- TravelNow không chịu trách nhiệm với các sai lệch, lỗi kỹ thuật, hình ảnh minh họa, hoặc thay đổi từ nhà
                cung cấp.</p>
            <p>\- Chúng tôi bảo lưu quyền chỉnh sửa thông tin, giá cả, điều khoản mà không cần báo trước.</p>
        </div>

        <div class="main-content8">
            <h4>8. Trách nhiệm:</h4>
            <p>TravelNow chỉ đóng vai trò trung gian kết nối giữa khách hàng và nhà cung cấp. Chúng tôi không chịu trách
                nhiệm cho các thiệt hại, mất mát hoặc phát sinh do lỗi từ nhà cung cấp. Nếu dịch vụ bị hủy hoặc không
                được cung cấp, TravelNow sẽ:</p>
            <p>\- Đặt lại dịch vụ tương đương, hoặc</p>
            <p>\- Hoàn tiền phần dịch vụ chưa sử dụng sau khi trừ phí dịch vụ.</p>
            <p>Trong trường hợp bất khả kháng (thiên tai, chiến tranh, lệnh cấm di chuyển, v.v), TravelNow được miễn trừ
                trách nhiệm bồi thường.</p>
        </div>

        <div class="main-content9">
            <h4>9. Mức độ công bằng:</h4>
            <p>Chúng tôi luôn mong muốn giải quyết những đề xuất hoặc thắc mắc một cách nhanh chóng và công bằng nhất.
                Mọi ý kiến đóng góp xin gửi về Bộ Phận Chăm Sóc Khách Hàng:</p>
            <p>\- Văn phòng tại Hồ Chí Minh: Tầng 2 thư viện, Tòa nhà Rạng Đông, khu phố 33, Phường Linh Xuân, TP.Hồ Chí
                Minh</p>
        </div>

        <div class="main-content10">
            <h4>10. Bản quyền:</h4>
            <p>Toàn bộ nội dung, hình ảnh, logo và dữ liệu trên nền tảng TravelNow thuộc quyền sở hữu của TravelNow.
                Nghiêm cấm sao chép, trích dẫn, tái bản hoặc sử dụng cho mục đích thương mại khi chưa có sự đồng ý bằng
                văn bản.</p>
        </div>

        <div class="main-content11">
            <h4>11. Chung:</h4>
            <p>Các Điều kiện &amp; Điều khoản này được điều chỉnh theo pháp luật Việt Nam. Chúng tôi nhận những thanh toán
                từ tour thành viên từ việc cung cấp dịch vụ phòng đặt phòng của chúng tôi. Mọi thắc mắc liên hệ Công ty
                TravelNow để xác nhận đặt phòng. Thông tin chi tiết của chúng tôi về cách thức xử lý thông tin cá nhân
                xin Quý Khách tham khảo Chính sách quyền cá nhân.</p>
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