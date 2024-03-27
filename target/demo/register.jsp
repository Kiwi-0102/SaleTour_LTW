<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>

<head>
    <meta charset="UTF-8">
    <title>Đăng ký</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link rel="stylesheet" href="assets/css/cssRegister.css">
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>

</head>
<body>
<div id="container">
    <div id="content">
        <div class="signin"><b>ĐĂNG KÝ</b></div>

        <form action="./register" method="post">
            <div class="emailx">
                <input id="email" name="email" type="email" placeholder="Email" required autocomplete="on" autofocus >
            </div>
            <div class="pass">
                <input id="pass" name="pass1" type="password" placeholder="Mật khẩu từ 6 - 20 kí tự" minlength="6" maxlength="20" >
            </div>
            <div class="pass" >
                <input id="confirm" name="pass2" type="password" placeholder="Nhập lại mật khẩu" minlength="6" maxlength="20" >
            </div>
            <div class="user">
                <input id="username" name="userName" type="text" placeholder="Tên người dùng" >
            </div>

            <p id="result"></p>

            <%
                // Kiểm tra xem thuộc tính "err" có được thiết lập trong request không
                String errorMessage = (String) request.getAttribute("err");
                if (errorMessage != null && !errorMessage.isEmpty()) {
            %>
            <p style="color: red;margin-left: 30px"><%= errorMessage %></p>
            <%
                }
            %>

            <div class="button">
                <button type="submit" name="btn" id="btn">ĐĂNG KÝ</button>
            </div>
        </form>

        <div class="ques">Bạn đã có tài khoản?</div>
        <div class="signup">
            <a href="login.jsp">ĐĂNG NHẬP</a>
        </div>
    </div>
</div>

</body>
<script>
    var btn = document.getElementById("btn");

    //khoa nut đăng nhập
    btn.disabled=true;
    btn.style.backgroundColor = "#bbbbbb";
    btn.style.cursor ="not-allowed";
    ///
    const validateEmail = (email) => {
        return email.match(
            /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
        );
    };
    const validate = () => {
        const $result = $('#result');
        const email = $('#email').val();
        var passInput = document.getElementById('pass');
        var confirm = document.getElementById('confirm');
        $result.text('');

        if(validateEmail(email)){
            $result.text(email + ' hợp lệ.');
            $result.css('color', 'green');
            passInput.addEventListener("input", function (){
                const pass = passInput.value;
                if(pass.length >= 6){
                    confirm.addEventListener("input", function (){
                    const conf = confirm.value;
                        if (conf===pass) {
                            btn.disabled = false;
                            $result.text('Mật khẩu hợp lệ');
                            $result.css('color', 'green');
                            btn.style.backgroundColor = "#00d8d5";
                            btn.style.cursor = "pointer";
                            link();
                        }else{
                            btn.disabled = true;
                            $result.text('Mật khẩu không khớp');
                            $result.css('color', 'red');
                            btn.style.backgroundColor = "#bbbbbb";
                            btn.style.cursor ="not-allowed";
                            link();
                        }
                    })
                }
            })
        } else {
            $result.text(email + ' không hợp lệ.');
            $result.css('color', 'red');
        }
        return false;
    }
    $('#email').on('input', validate);
    function link() {
        const loginButton = document.getElementById("btn");
        loginButton.addEventListener("click", function () {
        window.location.href = "login.jsp";
        });
    }
</script>

</html>