<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.DAO.UserDAO" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>

<head>
    <title>Quản lí khách hàng</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <link rel="shortcut icon" type="image/icon" href="../assets/logo/favicon.png"/>
    <!-- bootstrap-css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/admin.css">
    <link href="css/style.css" rel='stylesheet' type='text/css'/>
    <link href="css/style-responsive.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/monthly.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css"
          integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.js"></script>
    <script src="js/jquery2.0.3.min.js"></script>
    <script src="js/raphael-min.js"></script>
    <script src="js/morris.js"></script>

</head>

<%
    UserDAO usd = new UserDAO();
    String err = (String) request.getAttribute("err");
    err = (err == null) ? "" : err.trim();
    int numuser = usd.getAllUser().size();

%>
<body>


<section id="container">
    <!-- main-menu Start -->
    <%@include file="header.jsp" %>
    <!-- main-menu End -->
    <div class="err" style="text-align: center;color: red;font-size: 30px"><%=err%></div>
    <!--main content start-->
    <section class="home-section">
        <div class="home-content">
            <div class="manager-product">
                <div class="title">Thêm Tài Khoản</div>
                <form method="post" action="${pageContext.request.contextPath}/AddUserAdmin" class="row" style="    width: 1000px;margin-left: 342px;">
                    <div class="form-group col-md-4">
                        <label class="control-label">Mã tài khoản </label>
                        <input name="id" value="<%=numuser+1%>" class="form-control" type="text" placeholder=""
                               readonly>
                    </div>
                    <div class="form-group col-md-4">
                        <label class="control-label">Tên người dùng</label>
                        <input name="name" class="form-control" type="text" required>
                    </div>
                    <div class="form-group col-md-4 ">
                        <label class="control-label">Phân quyền</label>
                        <select name="role" class="form-control">
                            <option value="2">User</option>
                            <option value="1">Admin</option>
                            <option value="3">Mod</option>

                        </select>
                    </div>
                    <div class="form-group col-md-6 ">
                        <label class="control-label">Email</label>
                        <input name="email" class="form-control" type="email" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label class="control-label">Mật khẩu</label>
                        <input name="pass" class="form-control" type="text" required>
                    </div>
                    <button class="btn btn-save" type="submit" style="
    margin-left: 15px;">Lưu lại
                    </button>
                    <a class="btn btn-cancel" href="UserAdmin">Hủy bỏ</a>
                </form>
            </div>
        </div>
    </section>
    <!--main content end-->
</section>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]>
<script language="javascript" type="text/javascript" src="admin/js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->
<script>

    function deleteUser() {
        Swal.fire({
            title: 'Thông báo',
            text: 'Đã xóa thành công tài khoản này',
            icon: 'success',
            confirmButtonText: 'Đóng',
            customClass: {
                popup: 'custom-swal'
            }
        });
    }
</script>

<!-- //calendar -->
</body>
</html>
