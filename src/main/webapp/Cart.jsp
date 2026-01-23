<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.Cart" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.cart.CartItem" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%
    Cart cart = (Cart) session.getAttribute("cart");
    if (cart == null) {
        cart = new Cart();
        session.setAttribute("cart", cart);
    }

    List<CartItem> items = cart.getItems();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Giỏ hàng</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">
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
                            <a href="<%= request.getContextPath() %>/index.jsp" aria-label="TravelNow"
                               class="Travel-logo">
                                <img src="<%= request.getContextPath() %>/IMAGE/asset/images/LOGO.png" alt="Travel">
                            </a>
                        </div>
                    </div>
                    <div class="header-center">
                        <nav>
                            <div class=" menu">
                                <a href="<%= request.getContextPath() %>/index.jsp" class="item active">Tour trong
                                    nước</a>
                                <a href="<%= request.getContextPath() %>/index.jsp" class="item">Tour nước ngoài</a>
                                <a href="<%= request.getContextPath() %>/Khuyen_Mai.jsp" class="item">Khuyến mãi</a>
                                <a href="<%= request.getContextPath() %>/GioiThieu.jsp" class="item">Giới thiệu</a>

                                <div class="item ">
                                    <div class="sub">
                                        <span></span><span></span><span></span>
                                    </div>
                                    <div class="sub-item">
                                        <a href="<%= request.getContextPath() %>/Tin%20t%E1%BB%A9c.jsp">Tin Tức</a>
                                        <a href="<%= request.getContextPath() %>/Cau_hoi_thuong_gap.jsp">Câu hỏi thường
                                            gặp</a>
                                        <a href="<%= request.getContextPath() %>/NhatKyDuLich.jsp">Nhật ký khách
                                            hàng</a>
                                    </div>
                                </div>

                            </div>
                        </nav>
                    </div>
                    <div class="header-right">
                        <div class="cart">
                            <a href="<%= request.getContextPath() %>/Cart.jsp">
                                <i class="fa-solid fa-cart-shopping"></i>
                                <span class="cart-count">
                                    <%= cart != null ? cart.getTotalQuantity() : 0 %>
                                </span>
                            </a>
                        </div>
                        <div class="account">
                            <i class="fa-solid fa-circle-user"></i>
                            <span>Tài khoản ▾</span>
                            <div class="dropdown">
                                <button onclick="location.href='<%= request.getContextPath() %>/Sign-in.jsp'"
                                        class="register-btn">Đăng ký
                                </button>
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
            <%
                if (items == null || items.isEmpty()) {
            %>
            <tr>
                <td colspan="5" style="text-align:center; padding:30px;">
                    Giỏ hàng của bạn đang trống.
                </td>
            </tr>
            <%
            } else {
                int index = 1;
                for (CartItem item : items) {
            %>
            <tr>
                <td><%= index++ %>
                </td>

                <td class="product-info">
                    <img src="<%= item.getImageURL() %>" alt="Tour Thumbnail">
                    <div><strong><%= item.getTour().getTitle() %>
                    </strong></div>
                </td>

                <td>
                    <form action="update-item" method="post">
                        <input type="hidden" name="tourID" value="<%= item.getTour().getTourID() %>">

                        <div class="quantity-group">
                            <div class="q-item">
                                <span>Người lớn:</span>
                                <input type="number" name="adultQty"
                                       value="<%= item.getAdultQty() %>"
                                       min="1" onchange="this.form.submit()">
                            </div>

                            <div class="q-item">
                                <span>Trẻ em:</span>
                                <input type="number" name="childQty"
                                       value="<%= item.getChildQty() %>"
                                       min="0" onchange="this.form.submit()">
                            </div>
                        </div>
                    </form>
                </td>

                <td class="price-cell">
                    <span class="price-amount">
                        <%= item.format(item.getOriginalPrice()) %>
                    </span> đ
                </td>

                <td>
                    <form action="del-item" method="post">
                        <input type="hidden" name="tourID"
                               value="<%= item.getTour().getTourID() %>">
                        <button type="submit" class="btn-delete"
                                onclick="return confirm('Bạn có chắc muốn xóa tour này?')">
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
                    <strong><%= cart.format(cart.getTotal()) %> đ</strong>
                </p>

                <div class="action-btns">
                    <button class="btn-continue"
                            onclick="location.href='index.jsp'">
                        Tiếp tục chọn tour
                    </button>

                    <button class="btn-checkout"
                            onclick="location.href='checkout'">
                        Thanh toán ngay
                    </button>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>