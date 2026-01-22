<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">
    <script src="${pageContext.request.contextPath}/Javascript/EyesScript.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/Sign-in%20Style.css?v=1">
</head>
<body>
<section id="header">
    <div class="header-content">
        <header class="header-wrapper">
            <div class="container">
                <div class="header-box">
                    <div class="logo">
                        <div class="header-logo">
                            <a href="${pageContext.request.contextPath}/index.jsp" aria-label="TravelNow" class="Travel-logo">
                                <img src="${pageContext.request.contextPath}/IMAGE/asset/images/LOGO.png" alt="Travel ">
                            </a>
                        </div>
                    </div>

                    <div class="header-center">
                        <nav>
                            <div class="menu">
                                <a href="${pageContext.request.contextPath}/index.jsp" class="item active">Tour trong nước</a>
                                <a href="${pageContext.request.contextPath}/index.jsp" class="item">Tour nước ngoài</a>
                                <a href="${pageContext.request.contextPath}/Khuyen_Mai.jsp" class="item">Khuyến mãi</a>
                                <a href="${pageContext.request.contextPath}/GioiThieu.jsp" class="item">Giới thiệu</a>

                                <div class="item">
                                    <div class="sub">
                                        <span></span><span></span><span></span>
                                    </div>
                                    <div class="sub-item">
                                        <a href="${pageContext.request.contextPath}/Tin tức.jsp">Tin Tức</a>
                                        <a href="${pageContext.request.contextPath}/Cau_hoi_thuong_gap.jsp">Câu hỏi thường gặp</a>
                                        <a href="${pageContext.request.contextPath}/NhatKyDuLich.jsp">Nhật ký khách hàng</a>
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
                                <button onclick="location.href='${pageContext.request.contextPath}/Sign-in.jsp'" class="register-btn">Đăng ký</button>
                                <p>Quý khách đã có tài khoản?<br>
                                    <a href="${pageContext.request.contextPath}/Log-in.jsp">Đăng nhập ngay</a>
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

<main class="container">
    <div class="sign_in_form">
        <form action="signin" method="post" class="sign-in_frame">
            <header class="sign-in_header">
                <a href="${pageContext.request.contextPath}/Log-in.jsp" class="back">
                    <i class="fa-solid fa-arrow-left"></i>
                </a>
                <span class="header_text">Đăng ký</span>
            </header>

            <%
                if (request.getAttribute("errorEmpty") != null) {
            %>
            <div class="signin-error"><%= request.getAttribute("errorEmpty")%></div>
            <% } %>

            <%
                if (request.getAttribute("errorEmail") != null) {
            %>
            <div class="signin-error"><%= request.getAttribute("errorEmail")%></div>
            <% } %>
            <%
                if (request.getAttribute("errorPassword") != null) {
            %>
            <div class="login-error"><%= request.getAttribute("errorPassword")%></div>
            <% } %>

            <%
                if (request.getAttribute("errorPasswordWeak") != null) {
            %>
            <div class="login-error"><%= request.getAttribute("errorPasswordWeak")%></div>
            <% } %>



            <div class="Full_Name">
                <label for="FN">Họ và tên</label>
                <input id="FN" class="sign_in_input" type="text" placeholder="" name="fullname">
            </div>

            <div class="acc">
                <label for="email">Gmail</label>
                <input id="email" name="username" class="sign_in_input" type="email" placeholder="">
            </div>

            <div class="psw">
                <label for="psw">Mật khẩu</label>
                <input id="psw" name="password" class="sign_in_input" type="password" placeholder="">
                <i class="fa-solid fa-eye-slash toggle-eye"></i>
            </div>

            <div class="confirm psw">
                <label for="confirm_psw">Nhập lại mật khẩu</label>
                <input id="confirm_psw" name="confirmPassword" class="sign_in_input" type="password" placeholder="">
                <i class="fa-solid fa-eye-slash toggle-eye"></i>
            </div>

            <div class="btn">
                <button type="submit" class="sign-in_btn">Đăng ký</button>
            </div>
        </form>
    </div>
</main>

</body>
</html>