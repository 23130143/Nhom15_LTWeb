<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link rel="stylesheet" href="<%= request.getContextPath() %>/Css/DoiMKStyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">
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
                                <a href="<%= request.getContextPath() %>/index.jsp" class="item">Tour trong nước</a>
                                <a href="#" class="item">Tour nước ngoài</a>
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
                                <button onclick="location.href='<%= request.getContextPath() %>/Sign-in.jsp'" class="register-btn">
                                    Đăng ký
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

<main id="main">
    <section class="change-psw">
        <h1 class="change-psw-header">Đổi mật khẩu</h1>
        <form action="<%=request.getContextPath()%>/change-password" method="post">
            <div class="psw-item">
                <label for="opsw" class="label">Nhập mật khẩu cũ:</label>
                <input id="opsw" class="input" type="password" name="oldPassword" required>
                <i class="fa-solid fa-eye-slash toggle-eye"></i>
            </div>
            <div class="psw-item">
                <label for="npsw" class="label">Nhập mật khẩu mới:</label>
                <input id="npsw" class="input" type="password" name="newPassword" required>
                <i class="fa-solid fa-eye-slash toggle-eye"></i>
            </div>
            <div class="psw-item">
                <label for="cnpsw" class="label">Nhập lại mật khẩu:</label>
                <input id="cnpsw" class="input" type="password" name="confirmPassword" required>
                <i class="fa-solid fa-eye-slash toggle-eye"></i>
            </div>
            <div class="change">
                <button class="change-btn" type="submit">Đổi mật khẩu</button>
            </div>
            <div style="color:red;"><%= request.getAttribute("error") != null ? request.getAttribute("error") : "" %></div>
        </form>
    </section>
</main>

<script src="<%= request.getContextPath() %>/Javascript/EyesScript.js"></script>
</body>
</html>