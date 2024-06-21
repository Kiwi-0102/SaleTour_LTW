<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
    <style>
        .market-updates {
            display: none;
            margin: 1.5em 0;
        }
        .wrapper {
            display: none;
            margin-top: 80px;
            padding: 15px;
            width: 100%;

            #table1_wrapper{
                margin-top: 100px;
                box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5),
                -2px -2px 4px rgba(0, 0, 0, 0.5),
                2px -2px 4px rgba(0, 0, 0, 0.5),
                -2px 2px 4px rgba(0, 0, 0, 0.5);
            }
        }
        div.dt-container {
            padding: 25px;
            box-shadow: 6px 2px 4px rgba(0, 0, 0, 0.5), -2px -2px 4px rgba(0, 0, 0, 0.5), 2px -2px 4px rgba(0, 0, 0, 0.5), -2px 2px 4px rgba(0, 0, 0, 0.5);
            margin-top: 30px;
            width: 70%;
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

    </style>
</head>
<body>
<section id="container">
    <!-- main-menu Start -->
    <%@include file="header.jsp" %>
    <div class="home-content">
        <div class="manager-checkout" style="width: 98%">
            <div class="title">Quản Lý Đơn Hàng</div>
            <div class="container">
                <div class="box red-box">
                    <div class="text invalid">Hóa đơn không hợp lệ, nội dung không giống với ban đầu</div>
                </div>
                <div class="box green-box">
                    <div class="text">Hóa đơn đã được xác thực, nội dung không bị thay đổi</div>
                </div>
                <div class="box white-box">
                    <div class="text2">Hóa đơn chưa xác thực</div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tab row element-button">
                        <button class="tablinks col-sm-2" id="defaultOpen" onclick="openCity(event, 'tab1')">Chờ xác
                            nhận
                        </button>
                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab2')">Đã xác nhận</button>
                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab5')">Đã gửi cho bưu cục</button>
                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab4')">Đã giao</button>
                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab3')">Đã hủy</button>
                    </div>
                    <div id="tab1" class="tabcontent">
                        <table id="table-id-1" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Mã tài khoản</th>
                                <th scope="col">Người nhận</th>
                                <th scope="col">Ngày đặt</th>
                                <th scope="col">Số điện thoại</th>
                                <th scope="col">Sản phẩm</th>
                                <th scope="col">Địa chỉ</th>
                                <th scope="col">Tổng tiền</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr id="ID1" style="background-color: #82cd47">
                                <th id="id" scope="row">ID1</th>
                                <td>User1</td>
                                <td>Người nhận 1</td>
                                <td>2024-05-23</td>
                                <td>0123456789</td>
                                <td><a href="BillDetailAdmin?id=ID1">Nhấp để xem</a></td>
                                <td>Địa chỉ 1, Phường 1, Quận 1, Thành phố 1</td>
                                <td>110000 VND</td>
                                <td>
                                    <button onclick="confirm('ID1')" class="btn btn-primary btn-sm tick" type="button" title="check">
                                        <i class="fa-solid fa-check"></i>
                                    </button>
                                    <button onclick="remove('ID1')" class="btn btn-primary btn-sm trash" type="button" title="Xóa">
                                        <i class="fas fa-trash-alt"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr id="ID2" style="background-color: white; color: black">
                                <th scope="row">ID2</th>
                                <td>User2</td>
                                <td>Người nhận 2</td>
                                <td>2024-05-23</td>
                                <td>0123456789</td>
                                <td><a href="BillDetailAdmin?id=ID2">Nhấp để xem</a></td>
                                <td>Địa chỉ 2, Phường 2, Quận 2, Thành phố 2</td>
                                <td>120000 VND</td>
                                <td>
                                    <button onclick="remove('ID2')" class="btn btn-primary btn-sm trash" type="button" title="Xóa">
                                        <i class="fas fa-trash-alt"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr id="ID3" style="background-color: red; color: white">
                                <th scope="row">ID3</th>
                                <td>User3</td>
                                <td>Người nhận 3</td>
                                <td>2024-05-23</td>
                                <td>0123456789</td>
                                <td><a href="BillDetailAdmin?id=ID3">Nhấp để xem</a></td>
                                <td>Địa chỉ 3, Phường 3, Quận 3, Thành phố 3</td>
                                <td>130000 VND</td>
                                <td>
                                    <button onclick="remove('ID3')" class="btn btn-primary btn-sm trash" type="button" title="Xóa">
                                        <i class="fas fa-trash-alt"></i>
                                    </button>
                                </td>
                            </tr>
                            <!-- Thêm các dòng khác tương tự -->
                            </tbody>
                        </table>
                    </div>

                    <%-------------------------------------------------------------%>
                    <div id="tab2" class="tabcontent">
                        <table id="table-id-2" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Mã tài khoản</th>
                                <th scope="col">Người nhận</th>
                                <th scope="col">Ngày đặt</th>
                                <th scope="col">Số điện thoại</th>
                                <th scope="col">Sản phẩm</th>
                                <th scope="col">Địa chỉ</th>
                                <th scope="col">Tổng tiền</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody id="confirm">
                            <!-- Thay đổi các biến thành dữ liệu tĩnh -->
                            <!-- Ví dụ: -->
                            <tr>
                                <th scope="row">Mã đơn hàng 1</th>
                                <td>Mã tài khoản 1</td>
                                <td>Người nhận 1</td>
                                <td>Ngày đặt 1</td>
                                <td>Số điện thoại 1</td>
                                <td><a href="BillDetailAdmin?id=1">Nhấp để xem</a></td>
                                <td>Địa chỉ 1, Phường 1, Quận 1, Thành phố 1</td>
                                <td>Tổng tiền 1 VND</td>
                                <td>
                                    <button class="btn btn-primary btn-sm tick" type="button" title="Gửi cho bên giao hàng">
                                        <i class="fa-solid fa-truck"></i>
                                    </button>
                                    <button class="btn btn-primary btn-sm trash" type="button" title="Xóa">
                                        <i class="fas fa-trash-alt"></i>
                                    </button>
                                </td>
                            </tr>
                            <!-- Thêm các hàng dữ liệu tĩnh khác tương tự -->
                            </tbody>
                        </table>
                    </div>

                <%----------------------------------------%>
                    <div id="tab3" class="tabcontent">
                        <table id="table-id" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Mã tài khoản</th>
                                <th scope="col">Người nhận</th>
                                <th scope="col">Ngày đặt</th>
                                <th scope="col">Số điện thoại</th>
                                <th scope="col">Sản phẩm</th>
                                <th scope="col">Địa chỉ</th>
                                <th scope="col">Tổng tiền</th>
                                <th scope="col"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <!-- Thay thế biến thành dữ liệu tĩnh -->
                            <!-- Ví dụ: -->
                            <tr>
                                <th scope="row">Mã đơn hàng 1</th>
                                <td>Mã tài khoản 1</td>
                                <td>Người nhận 1</td>
                                <td>Ngày đặt 1</td>
                                <td>Số điện thoại 1</td>
                                <td><a href="BillDetailAdmin?id=1">Nhấp để xem</a></td>
                                <td>Địa chỉ 1, Phường 1, Quận 1, Thành phố 1</td>
                                <td>Tổng tiền 1 VND</td>
                                <td>
                                    <button class="btn btn-primary btn-sm trash" type="button" title="Xóa">
                                        <i class="fas fa-trash-alt"></i>
                                    </button>
                                </td>
                            </tr>
                            <!-- Thêm các hàng dữ liệu tĩnh khác tương tự -->
                            </tbody>
                        </table>
                    </div>

                <%--                    -----------------------------------%>
                    <div id="tab4" class="tabcontent">
                        <table id="table-id-3" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Mã tài khoản</th>
                                <th scope="col">Người nhận</th>
                                <th scope="col">Ngày đặt</th>
                                <th scope="col">Số điện thoại</th>
                                <th scope="col">Sản phẩm</th>
                                <th scope="col">Địa chỉ</th>
                                <th scope="col">Tổng tiền</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <!-- Thay thế biến thành dữ liệu tĩnh -->
                            <!-- Ví dụ: -->
                            <tr>
                                <th scope="row">Mã đơn hàng 1</th>
                                <td>Mã tài khoản 1</td>
                                <td>Người nhận 1</td>
                                <td>Ngày đặt 1</td>
                                <td>Số điện thoại 1</td>
                                <td><a href="BillDetailAdmin?id=1">Nhấp để xem</a></td>
                                <td>Địa chỉ 1, Phường 1, Quận 1, Thành phố 1</td>
                                <td>Tổng tiền 1 VND</td>
                                <td>
                                    <button class="btn btn-primary btn-sm trash" type="button" title="Xóa">
                                        <i class="fas fa-trash-alt"></i>
                                    </button>
                                </td>
                            </tr>
                            <!-- Thêm các hàng dữ liệu tĩnh khác tương tự -->
                            </tbody>
                        </table>
                    </div>

<%--                    --------------------------------------------%>
                    <div id="tab5" class="tabcontent">
                        <table id="table-id-5" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">Mã đơn hàng</th>
                                <th scope="col">Mã tài khoản</th>
                                <th scope="col">Người nhận</th>
                                <th scope="col">Ngày đặt</th>
                                <th scope="col">Số điện thoại</th>
                                <th scope="col">Sản phẩm</th>
                                <th scope="col">Địa chỉ</th>
                                <th scope="col">Tổng tiền</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody id="movetoship">
                            <!-- Thay thế biến thành dữ liệu tĩnh -->
                            <!-- Ví dụ: -->
                            <tr>
                                <th scope="row">Mã đơn hàng 1</th>
                                <td>Mã tài khoản 1</td>
                                <td>Người nhận 1</td>
                                <td>Ngày đặt 1</td>
                                <td>Số điện thoại 1</td>
                                <td><a href="BillDetailAdmin?id=1">Nhấp để xem</a></td>
                                <td>Địa chỉ 1, Phường 1, Quận 1, Thành phố 1</td>
                                <td>Tổng tiền 1 VND</td>
                                <td>
                                    <button class="btn btn-primary btn-sm trash" type="button" title="Xóa">
                                        <i class="fas fa-trash-alt"></i>
                                    </button>
                                </td>
                            </tr>
                            <!-- Thêm các hàng dữ liệu tĩnh khác tương tự -->
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>
<script src="../bootstrap/js/jquery.min.js"></script>
<script src="../AdminWeb/js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf8" src="../bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../AdminWeb/js/main.js"></script>
<script>
    $("#table-id").DataTable();
    $("#table-id-1").DataTable();
    $("#table-id-2").DataTable();
    $("#table-id-3").DataTable();
    $("#table-id-5").DataTable();

    function confirm(id) {
        $.ajax({
                url: "ConfirmBill",
                type: "get",
                data: {
                    id: id
                },
                success: function (data) {
                    $("tr").remove("#" + id)
                    $("#confirm").html(data);
                }
            }
        )
    }

    function remove(id) {
        $.ajax({
                url: "RemoveBill",
                type: "get",
                data: {
                    id: id
                },
                success: function () {
                    $("tr").remove("#" + id)
                }
            }
        )
    }
    function movetoship(id) {
        $.ajax({
                url: "ShipBill",
                type: "get",
                data: {
                    id: id
                },
                success: function (data) {
                    $("tr").remove("#" + id)
                    $("#movetoship").html(data);
                }
            }
        )
    }
</script>
</body>
</html>
