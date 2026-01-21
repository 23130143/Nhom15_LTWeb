<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/21/2026
  Time: 4:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
          integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/Cart.css">
</head>
<body>
<section id="header">
    <div class="header-content">
        <header class="header-wrapper">
            <div class="container">
                <div class="header-box">
                    <div class="logo">
                        <div class="header-logo">
                            <a href="<%= request.getContextPath() %>/Cart.jsp" aria-label="TravelNow" class="Travel-logo">
                                <img src="<%= request.getContextPath() %>/IMAGE/asset/images/LOGO.png" alt="Travel">
                            </a>
                        </div>
                    </div>
                    <div class="header-center">
                        <nav>
                            <div class=" menu">
                                <a href="<%= request.getContextPath() %>/Cart.jsp" class="item active">Tour trong nước</a>
                                <a href="<%= request.getContextPath() %>/Cart.jsp" class="item">Tour nước ngoài</a>
                                <a href="<%= request.getContextPath() %>/Cart.jsp" class="item">Khuyến mãi</a>
                                <a href="<%= request.getContextPath() %>/Cart.jsp" class="item">Giới thiệu</a>

                                <div class="item ">
                                    <div class="sub">
                                        <span></span><span></span><span></span>
                                    </div>
                                    <div class="sub-item">
                                        <a href="<%= request.getContextPath() %>/Tin%20tức.jsp">Tin Tức</a>
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
                                <button onclick="location.href='Sign-in.jsp'" class="register-btn">Đăng ký</button>
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



<section class="cart-container">
    <div class="container">
        <h2 class="cart-title">Giỏ hàng của bạn</h2>

        <table class="cart-table">
            <thead>
            <tr>
                <th>STT</th>
                <th>Tên Sản Phẩm</th>
                <th>Số Lượng</th>
                <th>Giá Tạm Tính</th>
                <th>Thao Tác</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td class="product-info">
                    <img src="IMAGE/asset/images/New_1.jpg" alt="Tour">
                    <div>
                        <strong>Tour Đà Nẵng - Hội An - Bà Nà Hills</strong>
                    </div>
                </td>
                <td>
                    <div class="quantity-group">
                        <div class="q-item">
                            <span>Người lớn:</span>
                            <input type="number" value="1" min="1">
                        </div>
                        <div class="q-item">
                            <span>Trẻ em:</span>
                            <input type="number" value="0" min="0">
                        </div>
                    </div>
                </td>
                <td class="price-cell">
                    <span class="price-amount">5.500.000</span> <span class="currency">đ</span>
                </td>
                <td>
                    <button class="btn-delete" title="Xóa tour này">
                        <i class="fa-solid fa-trash-can"></i> Xóa
                    </button>
                </td>
            </tr>
            </tbody>
        </table>

        <div class="cart-summary">
            <div class="total-box">
                <p>Tổng tiền: <strong>5.500.000 đ</strong></p>
                <div class="action-btns">
                    <button class="btn-continue">Tiếp tục chọn tour</button>
                    <button class="btn-checkout">Thanh toán ngay</button>
                </div>
            </div>
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

