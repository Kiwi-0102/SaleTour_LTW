<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html; charset=UTF-8" %>

    <meta charset="UTF-8">
    <title>Quên Mật Khẩu</title>
    <link rel="stylesheet" href="assets/css/csslogin.css">
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> -->
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>
</head>
<%
    String error = request.getAttribute("error")+"";
    error = (error == null || error.equals("null")) ? "" : error;

    String message = request.getAttribute("mess_otp")+"";
    message = (message == null || message.equals("null")) ? "" : message;


%>
<body>
<form action="forgotPassword" method="POST">
<div id="container">
    <div id="content" style="height: 560px">
        <div class="signin" style="padding: 60px 40px 50px"><b style="width: 255px">QUÊN MẬT KHẨU</b></div>
            <div class="user" style="margin-bottom: 30px";margin: 40px auto -15px auto>
                <input id="email" name="email" type="email" placeholder="Nhập Email" required="" autocomplete="on" autofocus="">
            </div>
            <%if(error!=null || !error.equals("")){%>
            <div class="ques" style="width: 250px;margin: 40px auto -15px auto; color: red;text-align: center">
                <span class="text-primary text-medium"></span><%=error%>
                <%}%>
        </div>
            <div class="button">
                <button type="submit" name="submit" id="submit" ><a>Xác Nhận</a></button>
            </div>
        <div class="ques" style="width: 250px;margin: 40px auto -15px auto; color: #260c0c;text-align: center">
            <li><span class="text-primary text-medium">1. </span>Hệ thống của chúng tôi sẽ gửi mã OTP vào email của bạn</li>
            <li><span class="text-primary text-medium">2. </span>Nhập OTP trên trang tiếp theo</li>
        </div>
        <div class="ques">Bạn muốn trải nghiệm
            <a href="index.jsp">TourNest</a>?
        </div>
        <div class="signup">
            <a href="login.jsp">ĐĂNG NHẬP</a>
        </div>
    </div>
</div>
</form>
</body>
</html>
