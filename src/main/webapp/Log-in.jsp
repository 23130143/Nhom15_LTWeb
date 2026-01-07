<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/LoginStyle.css?v=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">
    <script src="${pageContext.request.contextPath}/Javascript/EyesScript.js"></script>
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

<main class="content">
    <form action="${pageContext.request.contextPath}/login" method="post" class="login_form">
        <div class="login_frame">
            <header class="login_header">Đăng nhập</header>

            <%
                if (request.getAttribute("errorEmpty") != null) {
            %>
            <div class="login-error"><%= request.getAttribute("errorEmpty") %></div>
            <%
                }
                if (request.getAttribute("errorInvalid") != null) {
            %>
            <div class="login-error"><%= request.getAttribute("errorInvalid") %></div>
            <%
                }
            %>

            <div class="login_form_acc">
                <label for="gmail">Gmail</label>
                <input id="gmail" name="username" class="login_input" type="email" placeholder="">
            </div>

            <div class="login_form_psw">
                <label for="psw">Mật khẩu</label>
                <input id="psw" name="password" class="login_input" type="password" placeholder="">
                <i class="fa-solid fa-eye-slash toggle-eye"></i>
            </div>

            <div class="login_form_more">
                <a href="${pageContext.request.contextPath}/Fpsw.jsp" class="forgotPsw">Quên mật khẩu</a>
                <a href="${pageContext.request.contextPath}/Sign-in.jsp" class="sign_in">Đăng ký ngay</a>
            </div>

            <div class="btn">
                <button type="submit" class="login_btn">Đăng nhập</button>
            </div>
        </div>
    </form>
</main>
</body>
</html>
