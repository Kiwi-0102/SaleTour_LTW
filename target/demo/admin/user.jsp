<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="java.util.List" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>

<head>
    <title>Quản lí khách hàng</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <link rel="shortcut icon" type="image/icon" href="../assets/logo/favicon.png"/>
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <link rel="stylesheet" href="css/admin.css">
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href="css/style-responsive.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/monthly.css"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css" integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.js"></script>
    <!--  end  swal2-->
    <script src="js/jquery2.0.3.min.js"></script>
    <script src="js/raphael-min.js"></script>
    <script src="js/morris.js"></script>
    <link href="pluggin/datatables.min.css" rel="stylesheet">

    <script src="pluggin/datatables.min.js"></script>
</head>
<body>


<section id="container">
    <!-- main-menu Start -->
    <%@include file="header.jsp" %>
    <!-- main-menu End -->

    <!--main content start-->
<%--    <section id="main-content">--%>


<%--        <div  id="container11" style="height: 100%;">--%>
<%--            <section class="h-100 h-custom">--%>
<%--                <h3 style="margin-left: 50px">Quản lý khách hàng</h3>--%>
<%--                <div class="container h-100 py-5">--%>
<%--                    <div class="row d-flex justify-content-center align-items-center h-100">--%>
<%--                        <div class="col">--%>

<%--                            <div class="table-responsive">--%>
<%--                                <table class="table">--%>
<%--                                    <thead>--%>
<%--                                    <tr>--%>
<%--                                        <th scope="col">ID</th>--%>
<%--                                        <th scope="col">Username</th>--%>

<%--                                        <th scope="col">Email</th>--%>
<%--                                        <th scope="col" style="width:170px;padding-left: 40px">Số điện thoại</th>--%>
<%--                                        <th scope="col">Địa chỉ</th>--%>
<%--                                        <th scope="col">Là admin</th>--%>
<%--                                        <th scope="col">Thao tác</th>--%>
<%--                                    </tr>--%>
<%--                                    </thead>--%>
<%--                                    <tbody>--%>
<%--                        <tr>--%>
<%--                                <%--%>
<%--                List<User> listA = (List<User>) request.getAttribute("listA");--%>
<%--                if (listA != null && !listA.isEmpty()) {--%>
<%--                    for (User user : listA) {--%>
<%--            %>--%>
<%--                        <tr>--%>
<%--                            <td><%= user.getId() %></td>--%>
<%--                            <td><%= user.getUserName() %></td>--%>
<%--                            <td><%= user.getEmail() %></td>--%>
<%--                            <td><%= user.getPhoneNumber() %></td>--%>
<%--                            <td><%= user.getAddress() %></td>--%>
<%--                            <td><%= user.getRoleId() %></td>--%>
<%--                            <td><a href="delete?userId=<%= user.getId() %>">Delete</a></td>--%>
<%--                            <td><a href="addUser.jsp">Thêm User</a></td>--%>
<%--                            <td><a href="delete?userId=<%= user.getId() %>">Sửa thông tin</a></td>--%>

<%--                        </tr>--%>
<%--                        <%--%>
<%--                            }--%>
<%--                        } else {--%>
<%--                        %>--%>
<%--                        <tr>--%>
<%--                            <td colspan="4">No users available.</td>--%>
<%--                        </tr>--%>
<%--                        <%--%>
<%--                            }--%>
<%--                        %>--%>
<%--                        </tr>--%>

<%--                                    </tbody>--%>
<%--                                </table>--%>
<%--                            </div>--%>



<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </section>--%>
<%--        </div>--%>




<%--        </div>--%>
<%--        <!-- footer -->--%>
<%--        <div class="footer">--%>
<%--            <div class="wthree-copyright">--%>
<%--                <p>&copy; 2023-2024 <a href="https://github.com/MinhThinhrine/Do_An_Web">Nhóm 18</a>. All Right Reserved.</p>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <!-- / footer -->--%>
<%--    </section>--%>


    <table id="table1" style="    margin-left: 18%;
    width: 80%;" class="table table-hover table-bordered" >
        <thead>
        <tr>
            <th scope="col">Mã tài khoản</th>
            <th scope="col">Tên người dùng</th>
            <th scope="col">Email</th>
            <th scope="col">Kích hoạt</th>
            <th scope="col">Quyền</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${us}" var="u">
            <tr id="1">
                <th scope="row">${u.id}</th>
                <td>${u.name}</td>
                <td>${u.email}</td>
                <td>${u.getNameActivate()}</td>
                <td>${u.getNameRole()}</td>
                <td>
                    <button onclick="remove('${u.id}')" class="btn btn-primary btn-sm trash" type="button"
                            title="Xóa">
                        <i class="fas fa-trash-alt"></i>
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>

    </table>

    <!--main content end-->
</section>

<script src="js/jquery2.0.3.min.js"></script>
<script src="pluggin/datatables.min.js"></script>
<script>
    $(document).ready(function() {
        $('#table1').DataTable();
    });
</script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="admin/js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->
<script>

    function deleteUser() {
        Swal.fire({
            title: 'Thông báo',
            text: 'Đã xóa thành công tài khoản này',
            icon: 'success',
            confirmButtonText: 'Đóng' ,
            customClass: {
                popup: 'custom-swal'
            }
        });
    }
</script>

<!-- //calendar -->
</body>
</html>
