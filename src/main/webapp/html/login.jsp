<%--
  Created by IntelliJ IDEA.
  User: FPT - ADMIN
  Date: 28/11/2023
  Time: 12:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="../assets/css/csslogin.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link rel="shortcut icon" type="image/icon" href="assetsZ/logo/favicon.png"/>

</head>
<body>
<div id="container">
    <div id="content">
        <form id="loginForm" action="./login" method="post">
            <div class="signin"><b>ĐĂNG NHẬP</b></div>
            <%
                String emailErr= (String) request.getAttribute("emailErr");
                String err= (String) request.getAttribute("err");
            %>
            <% if(emailErr!=null){ %>
            <p class="text-danger"><%= emailErr %> </p>
            <% }%>
            <% if(err!=null){ %>
            <p class="text-danger"><%= err %> </p>
            <% }%>
            <div class="user">
                <input id="email" name="email" type="email" placeholder="Email" required autocomplete="on" autofocus>
                <p id="result"></p>
            </div>
            <div class="pass">
                <input id="pass" name="password" type="password" placeholder="Mật khẩu từ 6 - 20 kí tự" minlength="6" maxlength="20">
            </div>
            <div class="button">
                <button type="submit" name="btn" id="btn">ĐĂNG NHẬP</button>
            </div>
        </form>

        <div class="forget"><a href="forgetpass.html">Quên mật khẩu?</a></div>
        <div class="ques">Bạn muốn trải nghiệm
            <a href="index.html">TourNest</a>?
        </div>
        <div class="signup">
            <a href="register.html">ĐĂNG KÝ</a>
        </div>
    </div>
</div>




</body>

</html>