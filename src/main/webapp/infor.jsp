<%@ page import="vn.edu.hcmuaf.bean.User" %>
<!DOCTYPE html>
<html lang="vi">
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
    <meta charset="UTF-8">
    <title>Thông tin</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css" rel="stylesheet"/>
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.js"></script>
    <style>
        #custom-card-body{
            height: 408px;
            border-radius:  0.5rem 0px 0.5rem 0.5rem;
        }
        #nav-home-tab{
            cursor: pointer;margin-bottom: -5px;border-radius: 10px 10px 0px 0px;
            padding: 25px;
            width: 50%;
            text-align: center;
            font-size: 1.12rem;
            color: #0dcaf0;
        }#nav-profile-tab{
            cursor: pointer;margin-bottom: -5px;border-radius: 10px 10px 0px 0px;
            width: 50%;
            text-align: center;
            padding: 25px;
                     font-size: 1.12rem;
                     color: #0dcaf0;
        }
        .btn{
            width: 150px;
            text-align: center;
        }
        .return {
            font-size: 26px;
            color: #00d8fe;
        }

        section {
            height: 820px;
        }
        .row{
            padding: 20px 0px 20px 20px;
        }
        .hidden {
            display: none;
        }
        .logo a, .logo a:hover, .logo a:focus {
            color: #fff;
            font-size: 24px;
            font-family: 'Poppins', sans-serif;
            text-transform: capitalize;
            font-weight: 600;
            margin: 14px 0px 0;
            padding: 10px 0 0 0;
        }
        .logo a span {
            color: #00d8ff;
            text-transform: capitalize;
        }
    </style>
</head>
<%
    // lỗi nhận được từ changePasswors thay đổi mật khẩu
    String error = request.getAttribute("error") + "";
    error = (error == null || error.equals("null")) ? "" : error;

    // lỗi nhận được từ inforuser thay đổi mật khẩu
    String err = request.getAttribute("err") + "";
    err = (err == null || err.equals("null")) ? "" : err;

    String status = request.getAttribute("status") + "";
    status = (status == null || status.equals("null")) ? "" : status;
    System.out.println("status"+status);
%>
<body>
<section style="background: url(assets/images/home/1920.jpg)no-repeat;height: auto;
">

    <div class="container py-5">
        <th scope="col"><div class="logo">
            <a href="index.jsp">
                tour<span>Nest</span>
            </a>
        </div>
        </th>

        <div class="row" style="margin-top: 40px">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <a class="nav-item nav-link user active" id="nav-home-tab" data-toggle="tab" role="tab" aria-controls="nav-home"
                           aria-selected="true" onclick="toggleUser()"
                           >Thông tin người dùng</a>
                        <a class="nav-item nav-link change-password" id="nav-profile-tab"
                           data-toggle="tab" role="tab" aria-controls="nav-profile" aria-selected="false" onclick="togglePasswordChange()"
                           >Thay đổi mật khẩu</a>
                    </div>
                </nav>
<%--                --%>
                <form action="InforUser" method="post">
                <div>
                <div class="card mb-4" id="card-body" style="border-radius: 0px 0.5rem 0.5rem 0.5rem ">
                    <div class="card-body">
                        <div class="row">
                            <%
                                User user = (User) session.getAttribute("user");
                            %>
                            <div class="col-sm-3">
                                <p class="mb-0">Tên người dùng</p>
                            </div>
                            <div class="col-sm-9" id="username">
                                <p class="text-muted mb-0" id="pusername"><%=user.getUserName()%></p>
                                <input type="text" type="tel" name="username" class="text-muted mb-0 hidden" id="change_userName" value="<%=user.getUserName()%>">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Email</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0"><%=user.getEmail()%></p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Số điện thoại</p>
                            </div>
                            <div class="col-sm-9" id="phone">
                                <p class="text-muted mb-0" id="pphone"><%=user.getPhoneNumber()%></p>
                                <input type="number" name="phone" class="text-muted mb-0 hidden" id="change_phoneNumber" value="<%=user.getPhoneNumber()%>">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Địa chỉ</p>
                            </div>
                            <div class="col-sm-9" id="address">
                                <p class="text-muted mb-0" id="paddress"><%=user.getAddress()%></p>
                                <input type="text" class="text-muted mb-0 hidden" name="address" id="changeaddrress" name="changeaddrress" value="<%=user.getAddress()%>">
                            </div>
                            <div>
                                <% if(err != null && !err.equals("")) { %>
                                <div class="ques" style="width: 250px; margin: 15px auto -15px auto; color: red; text-align: center">
                                    <span class="text-primary text-medium"></span><%=err%>
                                </div>
                                <% } else if (status != null && !status.equals("")) { %>
                                <div class="ques" style="width: 250px; margin: 15px auto -15px auto; color: #31b0f5; text-align: center">
                                    <span class="text-primary text-medium"></span><%=status%>
                                </div>
                                <% } %>
                            </div>

                        </div>
                    </div>
                </div>
                    <div class="button user" id="buttonuser">
                        <button id="edit" style="margin-right: 40px" type="reset" class="btn btn-danger "
                                >Chỉnh sửa
                        </button>
                        <button class="btn btn-danger hidden" style="margin-right: 40px" type="reset" onclick="toggleUser() ">Hủy
                        </button>
                        <button id="save" class="btn btn-success" type="submit" style="display: none">Lưu thay đổi</button>
                    </div>
                </div>
                </form>
<%--                --%>
                <form action="ChangePassword" method="post">
                    <div class="quenmk" id="quenmk">
                <div class="card mb-4 custom card-body hidden" id="custom-card-body">
                    <div class="row">
                        <div class="col-sm-3">
                            <p class="mb-0">Nhập mật khẩu cũ</p>
                        </div>
                        <div class="col-sm-9">
                            <input class="form-control" id="oldpassword" type="password" name="oldpassword" placeholder="" required autocomplete="on" autofocus >
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-3">
                            <p class="mb-0">Nhập mật khẩu mới</p>
                        </div>
                        <div class="col-sm-9">
                            <input class="form-control" id="newpass1" name="newpass1" type="password" placeholder="Độ dài từ 6 kí tự" minlength="6" maxlength="20" required autocomplete="on" autofocus>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-3">
                            <p class="mb-0">Nhập lại mật khẩu mới</p>
                        </div>
                        <div class="col-sm-9" >
                            <input class="form-control" id="newpass2" name="newpass2" type="password" placeholder="Độ dài từ 6 kí tự" minlength="6" maxlength="20" required autocomplete="on" autofocus>
                        </div>
                        <div>
                            <% if(error!=null || !error.equals("")) { %>
                            <div class="ques" style="width: 250px;margin: 15px auto -15px auto; color: red;text-align: center">
                                <span class="text-primary text-medium"></span><%=error%>
                            </div>
                            <% } %>
                        </div>
                    </div>
                </div>
                <div class="button forgot-password hidden " id="buttonforgotpassword">
                    <button class="btn btn-danger " style="margin-right: 40px" type="reset" onclick="toggleUser() ">Hủy
                    </button>
                            <button class="btn btn-success" type="submit" >Lưu thay đổi</button>
                        </div>
            </div>
          </form>
        </div>
            <div class="col-lg-2"></div>

        </div>
    </div>
</section>
</body>
<script src="assets/js/infor.js"></script>
<script>
    // Lấy giá trị của attribute "stqmk"
    var stqmk = "<%=request.getAttribute("stqmk")%>";
    console.log("Giá trị của stqmk: " + stqmk);
    // Kiểm tra nếu giá trị là "show", thực hiện hàm togglePasswordChange()
    if (stqmk === "show") {
        togglePasswordChange();
    }
    // Lấy các phần tử cần thao tác
    var phoneElement = document.getElementById('pphone');
    var addressElement = document.getElementById('paddress');
    var usernameElement = document.getElementById('pusername');

    var resetbuton = document.querySelector(".btn.btn-danger.hidden");
    var changephoneElement = document.getElementById('change_phoneNumber');
    var changeaddressElement = document.getElementById('changeaddrress');
    var changeusernameElement = document.getElementById('change_userName');

    var saveButton = document.getElementById('save');
    var editButton = document.getElementById('edit');

    // Xử lý sự kiện khi nút "Chỉnh sửa" được bấm
    editButton.addEventListener('click', function() {

        phoneElement.classList.add('hidden');
        addressElement.classList.add('hidden');
        usernameElement.classList.add('hidden');


        resetbuton.classList.remove('hidden');
        changeaddressElement.classList.remove('hidden');
        changephoneElement.classList.remove('hidden');
        changeusernameElement.classList.remove('hidden');


        editButton.style.display = 'none';
        saveButton.style.display = 'inline';
    });

    // Xử lý sự kiện khi nút "hủy" được bấm
    resetbuton.addEventListener('click', function() {

            phoneElement.classList.remove('hidden');
            addressElement.classList.remove('hidden');
            usernameElement.classList.remove('hidden');


            resetbuton.classList.add('hidden');
            changeaddressElement.classList.add('hidden');
            changephoneElement.classList.add('hidden');
            changeusernameElement.classList.add('hidden');


        editButton.style.display = 'inline';
            saveButton.style.display = 'none';
    });
</script>


</html>
