<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.Cart.Cart" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.Cart.CartItem" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.service.CartService" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Sử dụng CartService để lấy giỏ hàng từ Session
    CartService cartService = new CartService();
    Cart cart = cartService.getCart(session);
    List<CartItem> items = cart.getItems(); //
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Giỏ hàng của bạn - TravelNow</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/Cart.css">
</head>
<body>
<section id="header">
    <div class="header-content">
        <header class="header-wrapper">
            <div class="container">
                <div class="header-box">
                    <div class="logo">
                        <a href="index.jsp"><img src="<%= request.getContextPath() %>/IMAGE/asset/images/LOGO.png" alt="TravelNow"></a>
                    </div>
                    <div class="header-right">
                        <div class="cart">
                            <a href="my-cart">
                                <i class="fa-solid fa-cart-shopping"></i>
                                <%-- Hiển thị số lượng loại tour trong giỏ --%>
                                <span class="cart-count"><%= cart.getTotalQuantity() %></span>
                            </a>
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
            <tr><td colspan="5" style="text-align: center; padding: 30px;">Giỏ hàng của bạn đang trống.</td></tr>
            <%
            } else {
                for (int i = 0; i < items.size(); i++) {
                    CartItem item = items.get(i); //
            %>
            <tr>
                <td><%= i + 1 %></td>
                <td class="product-info">
                    <%-- Ảnh tour lấy từ imageURL mà TourDAO đã gộp sẵn --%>
                    <img src="<%= item.getTour().getImageURL() %>" alt="Tour Thumbnail">
                    <div><strong><%= item.getName() %></strong></div>
                </td>
                <td>
                    <%-- Form cập nhật số lượng khách --%>
                    <form action="update-item" method="post">
                        <input type="hidden" name="tourID" value="<%= item.getTour().getTourID() %>">
                        <div class="quantity-group">
                            <div class="q-item">
                                <span>Người lớn:</span>
                                <input type="number" name="adultQty" value="<%= item.getAdultQuantity() %>" min="1" onchange="this.form.submit()">
                            </div>
                            <div class="q-item">
                                <span>Trẻ em:</span>
                                <input type="number" name="childQty" value="<%= item.getChildQuantity() %>" min="0" onchange="this.form.submit()">
                            </div>
                        </div>
                    </form>
                </td>
                <td class="price-cell">
                    <%-- Giá đã áp dụng giảm giá PERCENT và nhân với tổng số người --%>
                    <span class="price-amount"><%= item.format(item.getTotalItemPrice()) %></span> đ
                </td>
                <td>
                    <%-- Nút xóa tour khỏi đơn hàng --%>
                    <form action="del-item" method="post">
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
                <%-- Tổng tiền cuối cùng của toàn bộ giỏ hàng --%>
                <p>Tổng tiền: <strong><%= cart.format(cart.getTotal()) %> đ</strong></p>
                <div class="action-btns">
                    <button class="btn-continue" onclick="location.href='index.jsp'">Tiếp tục chọn tour</button>
                    <button class="btn-checkout" onclick="location.href='checkout'">Thanh toán ngay</button>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>