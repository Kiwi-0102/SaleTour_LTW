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
    <link rel="stylesheet" href="assets/css/csslogin.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>
    <style>
        .fb-login-button {
            margin-left: 75px;
            display: flex;
            align-items: center;
            background-color: #1877F2;
            color: white;
            padding: 5px 5px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-family: Arial, sans-serif;
        }
        .fb-login-button:hover {
            background-color: #145DB3;
        }
        .fb-login-button img {
            width: 20px;
            height: 20px;
            margin-right: 10px;
        }
    </style>
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

            <div class="user">
                <input id="email" name="email" type="email" placeholder="Email" required autocomplete="on" autofocus>
                <% if(emailErr!=null){ %>
                <p id="result"><%= emailErr %> </p>
                <% }%>
                <% if(err!=null){ %>
                <p id="result"><%= err %> </p>
                <% }%>
            </div>
            <div class="pass">
                <input id="pass" name="password" type="password" placeholder="Mật khẩu từ 6 - 20 kí tự" minlength="6" maxlength="20" >
            </div>
            <div class="button">
                <button type="submit" name="btn" id="btn">ĐĂNG NHẬP</button>
            </div>
        </form>

        <div class="forget"><a href="forgetpass.jsp">Quên mật khẩu?</a></div>
        <div class="othor-login" style="display: flex">
        <button class="fb-login-button">
            <img src="https://upload.wikimedia.org/wikipedia/commons/5/51/Facebook_f_logo_%282019%29.svg" alt="Facebook Logo">

        </button>
        <button class="fb-login-button" style="background-color: #FFFFFF">
            <img src="https://cdn-teams-slug.flaticon.com/google.jpg" alt="Facebook Logo">
        </div>
        </button>
        <div class="ques">Bạn muốn trải nghiệm
            <a href="index.jsp">TourNest</a>?
        </div>
        <div class="signup">
            <a href="register.jsp">ĐĂNG KÝ</a>
        </div>
    </div>
</div>

</body>

</html>