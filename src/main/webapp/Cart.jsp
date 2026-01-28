<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.Cart" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.CartItem" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%
    // Lấy giỏ hàng từ Session
    Cart cart = (Cart) session.getAttribute("cart");
    // Phòng hờ trường hợp chưa có giỏ hàng
    if (cart == null) {
        cart = new Cart();
        session.setAttribute("cart", cart);
    }
    List<CartItem> items = cart.getItems();
%>
<%
    Cart cartHeader = (Cart) session.getAttribute("cart");
    // Lấy thông tin người dùng (để hiển thị tên/đăng nhập)
    User userHeader = (User) session.getAttribute("user");
    boolean isUserLoggedIn = (userHeader != null);
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <title>Giỏ hàng - TravelNow</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
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
                            <a href="${pageContext.request.contextPath}/home" aria-label="TravelNow" class="Travel-logo">
                                <img src="${pageContext.request.contextPath}/IMAGE/asset/images/LOGO.png" alt="Travel">
                            </a>
                        </div>
                    </div>

                    <div class="header-center">
                        <nav>
                            <div class="menu">
                                <a href="${pageContext.request.contextPath}/home" class="item active">Tour trong nước</a>
                                <a href="${pageContext.request.contextPath}/home" class="item">Tour nước ngoài</a>
                                <a href="${pageContext.request.contextPath}/Khuyen_Mai.jsp" class="item">Khuyến mãi</a>
                                <a href="${pageContext.request.contextPath}/GioiThieu.jsp" class="item">Giới thiệu</a>
                                <div class="item">
                                    <div class="sub">
                                        <span></span><span></span><span></span>
                                    </div>
                                    <div class="sub-item">
                                        <a href="${pageContext.request.contextPath}/Tin%20t%E1%BB%A9c.jsp">Tin Tức</a>
                                        <a href="${pageContext.request.contextPath}/Cau_hoi_thuong_gap.jsp">Câu hỏi thường gặp</a>
                                        <a href="${pageContext.request.contextPath}/NhatKyDuLich.jsp">Nhật ký khách hàng</a>
                                    </div>
                                </div>
                            </div>
                        </nav>
                    </div>

                    <div class="header-right">
                        <div class="cart">
                            <a href="${pageContext.request.contextPath}/my-cart">
                                <i class="fa-solid fa-cart-shopping"></i>
                                <span class="cart-count">
                                    <%= (cartHeader != null) ? cartHeader.getItems().size() : 0 %>
                                </span>
                            </a>
                        </div>

                        <% if (isUserLoggedIn) { %>
                        <div class="account">
                            <i class="fa-solid fa-circle-user"></i>
                            <span><%= userHeader.getFullName() %> ▾</span>
                            <div class="dropdown">
                                <a href="${pageContext.request.contextPath}/LichSuChuyenDi.jsp" class="dropdown-item">Kỳ nghỉ của tôi</a>
                                <a href="${pageContext.request.contextPath}/HoSo.jsp" class="dropdown-item">Hồ sơ của tôi</a>
                                <a href="${pageContext.request.contextPath}/logout" class="btn-sign-out">Đăng xuất</a>
                            </div>
                        </div>
                        <% } else { %>
                        <div class="account">
                            <i class="fa-solid fa-circle-user"></i>
                            <span>Tài khoản ▾</span>
                            <div class="dropdown">
                                <button onclick="location.href='${pageContext.request.contextPath}/signin'" class="register-btn">Đăng ký</button>
                                <p>Quý khách đã có tài khoản?<br>
                                    <a href="${pageContext.request.contextPath}/login">Đăng nhập ngay</a>
                                </p>
                            </div>
                        </div>
                        <% } %>

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
            <%
                if (items == null || items.isEmpty()) {
            %>
            <tr>
                <td colspan="5" style="text-align:center; padding:50px;">
                    <i class="fa-solid fa-basket-shopping" style="font-size: 40px; color: #ddd; margin-bottom: 10px;"></i>
                    <p>Giỏ hàng của bạn đang trống.</p>
                    <a href="<%= request.getContextPath() %>/home" style="color: #ff8000; font-weight: bold;">Quay lại tìm tour ngay!</a>
                </td>
            </tr>
            <%
            } else {
                int index = 1;
                for (CartItem item : items) {
            %>
            <tr>
                <td><%= index++ %></td>

                <td class="product-info">
                    <% if(item.getImageURL() != null && !item.getImageURL().isEmpty()) { %>
                    <img src="<%= request.getContextPath() %>/<%= item.getImageURL() %>" alt="Tour Img">
                    <% } else { %>
                    <img src="<%= request.getContextPath() %>/IMAGE/asset/images/no-image.jpg" alt="No Image">
                    <% } %>
                    <div><strong><%= item.getTour().getTitle() %></strong></div>
                </td>

                <td>
                    <form action="${pageContext.request.contextPath}/cart-handler" method="post" class="update-form">
                        <input type="hidden" name="action" value="update">
                        <input type="hidden" name="tourID" value="<%= item.getTour().getTourID() %>">

                        <div class="quantity-wrapper">
                            <div class="qty-row">
                                <span class="qty-label">Người lớn:</span>
                                <div class="qty-control">
                                    <button type="button" class="qty-btn minus" onclick="updateQuantity(this, -1, 1)">-</button>
                                    <input type="number" name="adultQty" value="<%= item.getAdultQty() %>" readonly>
                                    <button type="button" class="qty-btn plus" onclick="updateQuantity(this, 1, 1)">+</button>
                                </div>
                            </div>

                            <div class="qty-row">
                                <span class="qty-label">Trẻ em:</span>
                                <div class="qty-control">
                                    <button type="button" class="qty-btn minus" onclick="updateQuantity(this, -1, 0)">-</button>
                                    <input type="number" name="childQty" value="<%= item.getChildQty() %>" readonly>
                                    <button type="button" class="qty-btn plus" onclick="updateQuantity(this, 1, 0)">+</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </td>

                <td class="price-cell">
                    <span class="price-amount">
                        <%= item.format(item.getOriginalPrice()) %>
                    </span> <small>đ</small>
                </td>

                <td>
                    <form action="${pageContext.request.contextPath}/cart-handler" method="post">
                        <input type="hidden" name="action" value="remove">
                        <input type="hidden" name="tourID" value="<%= item.getTour().getTourID() %>">

                        <button type="submit" class="btn-delete" onclick="return confirm('Bạn có chắc muốn xóa tour này?')">
                            <i class="fa-solid fa-trash-can"></i> Xóa
                        </button>
                    </form>
                </td>
            </tr>
            <%
                    }
                }
            %>
            </tbody>
        </table>

        <div class="cart-summary">
            <div class="total-box">
                <p>
                    Tổng tiền:
                    <strong><%= cart.format(cart.getTotal()) %> <small>đ</small></strong>
                </p>

                <div class="action-btns">
                    <button class="btn-continue" onclick="location.href='<%= request.getContextPath() %>/home'">
                        Tiếp tục chọn tour
                    </button>

                    <button class="btn-checkout" onclick="location.href='<%= request.getContextPath() %>/checkout'">
                        Thanh toán ngay
                    </button>
                </div>
            </div>
        </div>
    </div>
</section>

<footer class="footer">
</footer>

<script>
    function updateQuantity(btn, change, minVal) {
        // 1. Tìm ô input nằm cùng trong div .qty-control
        var input = btn.parentElement.querySelector('input');
        var currentVal = parseInt(input.value);
        var newVal = currentVal + change;

        // 2. Chặn không cho giảm dưới mức tối thiểu
        if (newVal < minVal) return;

        // 3. Cập nhật giá trị hiển thị trên ô input
        input.value = newVal;

        // 4. Tìm form bao ngoài và gửi submit ngay lập tức
        var form = btn.closest('form');
        form.submit();
    }
</script>

</body>
</html>