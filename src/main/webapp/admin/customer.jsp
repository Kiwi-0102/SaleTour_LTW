<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.bean.Customer" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>

<head>
    <title>Danh sách khách hàng</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <link rel="shortcut icon" type="image/icon" href="../assets/logo/favicon.png"/>
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.js"></script>
    <!--  end  swal2-->
    <script src="js/jquery2.0.3.min.js"></script>
    <script src="js/raphael-min.js"></script>
    <script src="js/morris.js"></script>
    <link href="pluggin/datatables.min.css" rel="stylesheet">

    <script src="pluggin/datatables.min.js"></script>
    <style>
        .wrapper {
            display: none;
            margin-top: 80px;
            padding: 15px;
            width: 100%;
        }

        div.dt-container {
            padding: 25px;
            box-shadow: 6px 2px 4px rgba(0, 0, 0, 0.5), -2px -2px 4px rgba(0, 0, 0, 0.5), 2px -2px 4px rgba(0, 0, 0, 0.5), -2px 2px 4px rgba(0, 0, 0, 0.5);
            margin-top: 30px;
            width: 75%;
            position: relative;
            clear: both;
            margin-left: 300px;
            text-align: center;
        }

        button:active {
            /* Áp dụng các kiểu CSS khi nút được nhấn */
            /* Ví dụ: */
            outline: none; /* Loại bỏ viền xung quanh */
        }

        #table1_wrapper {
            margin-top: 30px;
            border: solid 2px;
            border-radius: 5px;
        }

    </style>
</head>
<body>

<section id="container">
    <!-- main-menu Start -->
    <%@include file="header.jsp" %>
    <!-- main-menu End -->

    <!--main content start-->
    <a style="margin-left: 300px;margin-top: 100px" href="addUser.jsp" class="btn btn-success" data-toggle="modal">
        <i class="fa-solid fa-plus" style="color: #63E6BE;"></i>
        <span style="vertical-align: middle;">Thêm khách hàng</span>
    </a>
    <section id="main-content" style="display: none">

        <div id="container11" style="height: 100%;">
            <section class="h-100 h-custom">
                <h3 style="margin-left: 50px">Quản lý khách hàng</h3>
                <div class="container h-100 py-5">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col">
                        </div>
                    </div>
                </div>
            </section>
        </div>


        </div>
        <!-- footer -->
        <div class="footer">
            <div class="wthree-copyright">
                <p>&copy; 2023-2024 <a href="https://github.com/MinhThinhrine/Do_An_Web">Nhóm 18</a>. All Right
                    Reserved.</p>
            </div>
        </div>
        <!-- / footer -->
    </section>

    <style>
        div.dt-container {
            width: 70%;
            position: relative;
            clear: both;
            margin-left: 300px;
            text-align: center;
        }
    </style>


    <table id="table1" class="table table-hover table-bordered">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Tên</th>
            <th scope="col">Giới</th>
            <th scope="col" style="width:170px;padding-left: 40px">Ngày sinh</th>
            <th scope="col">Mã hóa đơn</th>
        </tr>
        </thead>
        <tbody>
        <%
            CustomerDAO customerDAOss = new CustomerDAO();
            ArrayList<Customer> customers = customerDAOss.getAllCustomers();
            for (Customer user : customers) { %>
        <tr id="<%=user.getId()%>">
            <td><%= user.getId() %>
            </td>
            <td><%= user.getName() %>
            </td>
            <td><%= user.getMale() %>
            </td>
            <td><%= user.getDateOfBirth() %>
            </td>
            <td>
                <a href='http://localhost:8080/Do_An_Web/admin/DetailBillADM?action=DetailBill&idbill=<%=user.getIdBill()%>'><%= user.getIdBill()%>
                </a></td>

        </tr>
        <%}%>
        </tbody>

    </table>

    <!--main content end-->
</section>

<script src="js/jquery2.0.3.min.js"></script>
<script src="pluggin/datatables.min.js"></script>
<script>
    $(document).ready(function () {
        $('#table1').DataTable();
    });
</script>

<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]>
<script language="javascript" type="text/javascript" src="admin/js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->
<script src="js/jquery2.0.3.min.js"></script>
<script src="pluggin/datatables.min.js"></script>
<script>
    function remove(id) {
        var data = new URLSearchParams();
        data.append('id', id);

        fetch('/Do_An_Web/RemoveUser', {
            method: 'POST',
            body: data
        })

            .then(response => {
                if (response.ok) {
                    var table = $('#table1').DataTable();
                    var row = table.row('#' + id);
                    row.remove().draw();
                    return response.text();

                } else {
                    console.log('josn: ', response.json())
                    console.log('Lỗi không thể xóa user' + id)
                }
            })

            .catch(err => {
                console.log('error' + err)
            });
    }

</script>
<script>
    function redirectToUpdateUser(userId) {
        window.location.href = 'UpdateUser?userId=' + userId;
    }
</script>


<!-- //calendar -->
</body>
</html>
