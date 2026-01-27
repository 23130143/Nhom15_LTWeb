<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.Promotion" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.nhom15_ltweb.model.Tour" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css"
          integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/Admin_KhuyenMai.css">
</head>
<body>
<!-- Sidebar -->
<aside class="sidebar">
    <div class="brand">
        <div class="logo">✈️</div>
        <div>
            <h1>Travel Admin</h1>
            <p>Quản trị web du lịch</p>
        </div>
    </div>

    <nav class="menu">
        <a class="menu-item" href="<%= request.getContextPath() %>/Admin_DashBoard.jsp">Dashboard</a>
        <a class="menu-item" href="<%= request.getContextPath() %>/AdSanPham.jsp">Tour</a>
        <a class="menu-item" href="<%= request.getContextPath() %>/Admin_NguoiDung.jsp">Người dùng</a>
        <a class="menu-item active" href="<%= request.getContextPath() %>/Admin_KhuyenMai.jsp">Khuyến mãi</a>
        <a class="menu-item" href="<%= request.getContextPath() %>/Admin_Banner.jsp">Banner</a>
        <a class="menu-item logout" href="<%= request.getContextPath() %>/index.jsp">Đăng xuất</a>
    </nav>
</aside>

<!-- Main content -->
<div class="main">
    <header class="topbar">
        <div class="controls">
            <div class="welcome">Xin chào, <strong>Admin</strong></div>
        </div>
    </header>

    <section class="content">
        <h2 class="section-title">Khuyến mãi</h2>

        <form action="<%= request.getContextPath() %>/admin/promotions"
              method="get"
              class="search-box">

            <input class="search"
                   type="text"
                   name="keyword"
                   placeholder="Tìm tên khuyến mãi..."
                   value="<%= request.getAttribute("keyword") != null
                ? request.getAttribute("keyword")
                : "" %>">

            <div class="btn-group">
                <a href="<%= request.getContextPath() %>/admin/addpromotion"
                   class="btn-add">
                    + Thêm khuyến mãi
                </a>

                <button type="button"
                        class="btn-link"
                        onclick="openLinkModal()">
                    🔗 Gắn tour
                </button>
            </div>
        </form>

        <!-- Danh sách Tour -->
        <div class="panel">
            <table class="activity-table">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Tên chương trình</th>
                    <th>Loại khuyến mãi</th>
                    <th>Giá giảm</th>
                    <th>Trạng thái</th>
                    <th>Ngày bắt đầu</th>
                    <th>Ngày kết thúc</th>
                    <th>Tour áp dụng</th>
                    <th>Hành động</th>
                </tr>
                </thead>

                <tbody>
                <%
                    List<Promotion> promotions = (List<Promotion>) request.getAttribute("promotions");

                    if (promotions != null) {
                        for (Promotion p : promotions) {
                %>
                <tr>
                    <td><%= p.getPromoID() %>
                    </td>
                    <td><%= p.getPromoName() %>
                    </td>

                    <td>
                        <%= "percent".equals(p.getPromoType())
                                ? "Giảm theo %"
                                : "Giảm trực tiếp" %>
                    </td>

                    <td>
                        <%= "percent".equals(p.getPromoType())
                                ? p.getDiscountValue() + " %"
                                : String.format("%,.0f VND", p.getDiscountValue()) %>
                    </td>

                    <td>
                        <%
                            java.util.Date now = new java.util.Date();
                            String status;
                            if (now.before(p.getStartDate())) {
                                status = "Sắp tới";
                            } else if (now.after(p.getEndDate())) {
                                status = "Kết thúc";
                            } else {
                                status = "Đang khuyến mãi";
                            }
                        %>
                        <%= status %>
                    </td>

                    <td><%= p.getStartDate() %>
                    </td>
                    <td><%= p.getEndDate() %>
                    </td>

                    <td>—</td>

                    <td class="action-cell">
                        <a href="edit-promotion?id=<%= p.getPromoID() %>" class="btn-edit">
                            Sửa
                        </a>
                        <a href="delete-promotion?id=<%= p.getPromoID() %>"
                           onclick="return confirm('Xóa khuyến mãi này?')"
                           class="btn-delete">
                            Xóa
                        </a>
                    </td>
                </tr>
                <%
                    }
                } else {
                %>
                <tr>
                    <td colspan="10" style="text-align:center; padding:20px;">
                        Không có dữ liệu khuyến mãi
                    </td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>
        </div>
    </section>
</div>
<!-- Modal liên kết tour -->
<div id="linkModal" class="modal">
    <form class="modal-content"
          method="post"
          action="<%= request.getContextPath() %>/admin/link-tour">

        <h3>Liên kết khuyến mãi với tour</h3>

        <!-- Promotion -->
        <label>Chọn khuyến mãi</label>
        <select name="promoID" required>
            <%
                List<Promotion> promotionsModal = (List<Promotion>) request.getAttribute("promotions");

                if (promotionsModal != null) {
                    for (Promotion p : promotionsModal) {
            %>
            <option value="<%= p.getPromoID() %>">
                <%= p.getPromoName() %>
            </option>
            <%
                    }
                }
            %>
        </select>

        <!-- Tours -->
        <label>Chọn tour áp dụng</label>
        <div class="tour-list">
            <%
                List<Tour> tours =
                        (List<Tour>) request.getAttribute("tours");

                if (tours != null) {
                    for (Tour t : tours) {
            %>
            <label>
                <input type="checkbox"
                       name="tourIDs"
                       value="<%= t.getTourID() %>">
                <%= t.getTitle() %>
            </label>
            <%
                    }
                }
            %>
        </div>

        <div class="modal-actions">
            <button type="submit" class="btn-save">Lưu</button>
            <button type="button"
                    class="btn-cancel"
                    onclick="closeLinkModal()">Hủy
            </button>
        </div>
    </form>
</div>
<script>
    function openLinkModal() {
        document.getElementById("linkModal").style.display = "flex";
    }

    function closeLinkModal() {
        document.getElementById("linkModal").style.display = "none";
    }
</script>
</body>
</html>