<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="vn.edu.hcmuaf.bean.Bill" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="static vn.edu.hcmuaf.DAO.BookingDAO.getBookingbyId" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lí đơn hàng</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="shortcut icon" type="image/icon" href="../assets/logo/favicon.png"/>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/admin.css">
    <link href="css/style.css" rel='stylesheet' type='text/css'/>
    <link href="css/style-responsive.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/monthly.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css"
          integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link href="pluggin/datatables.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
    <style>
        .home-section {
            margin-left: 260px;
        }

        .container {
            display: flex;
            flex-direction: column;
        }

        .box {
            width: 30px;
            height: 30px;
            margin-bottom: 5px;
            position: relative;
        }

        .red-box {
            background-color: red;
        }

        .green-box {
            background-color: #82cd47;
        }

        .white-box {
            background-color: white;

            border: 1px solid black;
        }

        .text {
            position: absolute;
            color: black;
            top: 18%;

            transform: translateX(14%);
            white-space: nowrap;
        }

        .text2 {
            position: absolute;
            color: black;
            top: 18%;

            transform: translateX(31%);
            white-space: nowrap;
        }

        .market-updates {
            display: none;
            margin: 1.5em 0;
        }

        .text.invalid {
            color: black;
            position: absolute;
            top: 18%;

            transform: translateX(13.5%);
            white-space: nowrap;
        }

        body {
            font-family: Arial, sans-serif; /* Đảm bảo bạn đang sử dụng font chữ hợp lệ */
        }

        table.dataTable {
            font-family: inherit; /* Sử dụng font chữ của phần tử cha */
        }

        /* Hoặc bạn có thể thiết lập font chữ cụ thể cho bảng DataTables */
        table.dataTable {
            font-family: 'Arial', sans-serif;
        }

        .none {
            display: none;
        }
    </style>
    <!-- Tải jQuery trước -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Tải các script phụ thuộc vào jQuery sau -->
    <script src="pluggin/datatables.min.js"></script>
    <script src="js/raphael-min.js"></script>
    <script src="js/morris.js"></script>
    <script src="js/jquery2.0.3.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
</head>
<%
    User use = (User) session.getAttribute("user");
    ArrayList<Bill> choxacnhan = (ArrayList<Bill>) request.getAttribute("choxacnhan");
    ArrayList<Bill> daxacnhan = (ArrayList<Bill>) request.getAttribute("daxacnhan");
    ArrayList<Bill> dahuy = (ArrayList<Bill>) request.getAttribute("dahuy");
    ArrayList<Bill> daxong = (ArrayList<Bill>) request.getAttribute("daxong");
%>
<body>
<%@include file="header.jsp" %>
<section class="home-section">
    <div class="home-content">
        <div class="manager-checkout" style="width: 98%">
            <div class="title">Quản Lý Đơn Hàng</div>
            <div class="container none">
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
                    <div class="tab row element-button ">
                        <button class="tablinks col-sm-2" id="defaultOpen" onclick="openCity(event, 'tab1')">Chờ xác
                            nhận
                        </button>
                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab2')">Đã xác nhận</button>
                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab5')">Đã hủy</button>
                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab4')">Đã xong</button>
                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab3')">Sắp bắt đầu</button>
                    </div>
                    <div id="tab1" class="tabcontent">
                        <table id="table-id-1" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">Mã hóa đơn</th>
                                <th scope="col">Mã tài khoản</th>
                                <th scope="col">Mã tour</th>
                                <th scope="col">Ngày đặt</th>
                                <th scope="col">Số điện thoại</th>
                                <th scope="col">Số khách</th>
                                <th scope="col">Ngày bắt đầu</th>
                                <th scope="col">Tổng tiền</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <%for(Bill bill : choxacnhan){%>
                            <tr id="<%=bill.getId()%>" style="background-color: #82cd47">
                                <th scope="row"><%=bill.getId()%></th>
                                <td><%=getBookingbyId(bill.getBookingId()).getUserId()%></td>
                                <td><%=getBookingbyId(bill.getBookingId()).getTourId()%></td>
                                <td><%=getBookingbyId(bill.getBookingId()).getDate()%></td>
                                <td><%=getBookingbyId(bill.getBookingId()).getPhone()%></td>
                                <td><a href="BillDetailAdmin?id=1"><%=getBookingbyId(bill.getBookingId()).getNumAdult()+getBookingbyId(bill.getBookingId()).getNumChildren()%></a></td>
                                <td><%=getBookingbyId(bill.getBookingId()).getDateStart()%></td>
                                <td><%=getBookingbyId(bill.getBookingId()).getUserId()%></td>
                                <td>
                                    <button onclick="confirm('1')" class="btn btn-primary btn-sm tick" type="button" title="check">
                                        <i class="fa-solid fa-check"></i>
                                    </button>
                                    <button onclick="remove('1')" class="btn btn-primary btn-sm trash" type="button" title="Xóa">
                                        <i class="fas fa-trash-alt"></i>
                                    </button>
                                </td>
                            </tr>
                            <%}%>
                            </tbody>
                        </table>
                    </div>
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
                            <c:forEach items="${bco}" var="bw">
                                <c:choose>
                                    <c:when test="${not empty bw.hash and bw.verify(bw.id, bw.idinfo, bw.idUser, bw.hash)}">
                                        <tr id="${bw.id}" style="background-color: #82cd47">
                                            <th scope="row">${bw.id}</th>
                                            <td>${bw.idUser}</td>
                                            <td>${bw.getNameReceive()}</td>
                                            <td>${bw.getDate()}</td>
                                            <td>${bw.getPhoneReceive()}</td>
                                            <td><a href="BillDetailAdmin?id=${bw.id}">Nhấp để xem</a></td>
                                            <td>${bw.getAdressReceive()}, ${bw.getWardReceive()}, ${bw.getDistrictReceive()}, ${bw.getProvinceReceive()}</td>
                                            <td>${bw.total} VND</td>
                                            <td>
                                                <button onclick="movetoship('${bw.id}')"
                                                        class="btn btn-primary btn-sm tick"
                                                        type="button" title="Gửi cho bên giao hàng">
                                                    <i class="fa-solid fa-truck"></i>
                                                </button>
                                                <button onclick="remove('${bw.id}')"
                                                        class="btn btn-primary btn-sm trash"
                                                        type="button" title="Xóa">
                                                    <i class="fas fa-trash-alt"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    </c:when>


                                    <c:when test="${empty bw.hash || bw.hash eq ''}">

                                        <tr id="${bw.id}" style="background-color: white; color: black">
                                            <th scope="row">${bw.id}</th>
                                            <td>${bw.idUser}</td>
                                            <td>${bw.getNameReceive()}</td>
                                            <td>${bw.getDate()}</td>
                                            <td>${bw.getPhoneReceive()}</td>
                                            <td><a href="BillDetailAdmin?id=${bw.id}">Nhấp để xem</a></td>
                                            <td>${bw.getAdressReceive()}, ${bw.getWardReceive()}, ${bw.getDistrictReceive()}, ${bw.getProvinceReceive()}</td>
                                            <td>${bw.total} VND</td>
                                            <td>

                                                <button onclick="remove('${bw.id}')"
                                                        class="btn btn-primary btn-sm trash"
                                                        type="button" title="Xóa">
                                                    <i class="fas fa-trash-alt"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    </c:when>
                                    <c:otherwise>
                                        <c:set var="result" value="${bw.updateBillchanged(bw.id)}"/>
                                        <tr id="${bw.id}" style="background-color: red; color: white">
                                            <th scope="row">${bw.id}</th>
                                            <td>${bw.idUser}</td>
                                            <td>${bw.getNameReceive()}</td>
                                            <td>${bw.getDate()}</td>
                                            <td>${bw.getPhoneReceive()}</td>
                                            <td><a href="BillDetailAdmin?id=${bw.id}">Nhấp để xem</a></td>
                                            <td>${bw.getAdressReceive()}, ${bw.getWardReceive()}, ${bw.getDistrictReceive()}, ${bw.getProvinceReceive()}</td>
                                            <td>${bw.total} VND</td>
                                            <td>

                                                <button onclick="remove('${bw.id}')"
                                                        class="btn btn-primary btn-sm trash"
                                                        type="button" title="Xóa">
                                                    <i class="fas fa-trash-alt"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div id="tab3" class="tabcontent">
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
                            <c:forEach items="${bca}" var="bw">
                                <c:choose>
                                    <c:when test="${not empty bw.hash and bw.verify(bw.id, bw.idinfo, bw.idUser, bw.hash)}">
                                        <tr id="${bw.id}" style="background-color: #82cd47">
                                            <th scope="row">${bw.id}</th>
                                            <td>${bw.idUser}</td>
                                            <td>${bw.getNameReceive()}</td>
                                            <td>${bw.getDate()}</td>
                                            <td>${bw.getPhoneReceive()}</td>
                                            <td><a href="BillDetailAdmin?id=${bw.id}">Nhấp để xem</a></td>
                                            <td>${bw.getAdressReceive()}, ${bw.getWardReceive()}, ${bw.getDistrictReceive()}, ${bw.getProvinceReceive()}</td>
                                            <td>${bw.total} VND</td>
                                            <td>
                                                <button onclick="remove('${bw.id}')"
                                                        class="btn btn-primary btn-sm trash"
                                                        type="button" title="Xóa">
                                                    <i class="fas fa-trash-alt"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    </c:when>


                                    <c:when test="${empty bw.hash || bw.hash eq ''}">

                                        <tr id="${bw.id}" style="background-color: white; color: black">
                                            <th scope="row">${bw.id}</th>
                                            <td>${bw.idUser}</td>
                                            <td>${bw.getNameReceive()}</td>
                                            <td>${bw.getDate()}</td>
                                            <td>${bw.getPhoneReceive()}</td>
                                            <td><a href="BillDetailAdmin?id=${bw.id}">Nhấp để xem</a></td>
                                            <td>${bw.getAdressReceive()}, ${bw.getWardReceive()}, ${bw.getDistrictReceive()}, ${bw.getProvinceReceive()}</td>
                                            <td>${bw.total} VND</td>
                                            <td>

                                                <button onclick="remove('${bw.id}')"
                                                        class="btn btn-primary btn-sm trash"
                                                        type="button" title="Xóa">
                                                    <i class="fas fa-trash-alt"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    </c:when>
                                    <c:otherwise>

                                        <tr id="${bw.id}" style="background-color: red; color: white">
                                            <th scope="row">${bw.id}</th>
                                            <td>${bw.idUser}</td>
                                            <td>${bw.getNameReceive()}</td>
                                            <td>${bw.getDate()}</td>
                                            <td>${bw.getPhoneReceive()}</td>
                                            <td><a href="BillDetailAdmin?id=${bw.id}">Nhấp để xem</a></td>
                                            <td>${bw.getAdressReceive()}, ${bw.getWardReceive()}, ${bw.getDistrictReceive()}, ${bw.getProvinceReceive()}</td>
                                            <td>${bw.total} VND</td>
                                            <td>

                                                <button onclick="remove('${bw.id}')"
                                                        class="btn btn-primary btn-sm trash"
                                                        type="button" title="Xóa">
                                                    <i class="fas fa-trash-alt"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div id="tab4" class="tabcontent">
                        <table id="table-id-4" class="table table-hover table-bordered">
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
                            <c:forEach items="${bd}" var="bw">
                                <c:choose>
                                    <c:when test="${not empty bw.hash and bw.verify(bw.id, bw.idinfo, bw.idUser, bw.hash)}">
                                        <tr id="${bw.id}" style="background-color: #82cd47">
                                            <th scope="row">${bw.id}</th>
                                            <td>${bw.idUser}</td>
                                            <td>${bw.getNameReceive()}</td>
                                            <td>${bw.getDate()}</td>
                                            <td>${bw.getPhoneReceive()}</td>
                                            <td><a href="BillDetailAdmin?id=${bw.id}">Nhấp để xem</a></td>
                                            <td>${bw.getAdressReceive()}, ${bw.getWardReceive()}, ${bw.getDistrictReceive()}, ${bw.getProvinceReceive()}</td>
                                            <td>${bw.total} VND</td>
                                            <td>

                                                <button onclick="remove('${bw.id}')"
                                                        class="btn btn-primary btn-sm trash"
                                                        type="button" title="Xóa">
                                                    <i class="fas fa-trash-alt"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    </c:when>
                                    <c:when test="${empty bw.hash || bw.hash eq ''}">

                                        <tr id="${bw.id}" style="background-color: white; color: black">
                                            <th scope="row">${bw.id}</th>
                                            <td>${bw.idUser}</td>
                                            <td>${bw.getNameReceive()}</td>
                                            <td>${bw.getDate()}</td>
                                            <td>${bw.getPhoneReceive()}</td>
                                            <td><a href="BillDetailAdmin?id=${bw.id}">Nhấp để xem</a></td>
                                            <td>${bw.getAdressReceive()}, ${bw.getWardReceive()}, ${bw.getDistrictReceive()}, ${bw.getProvinceReceive()}</td>
                                            <td>${bw.total} VND</td>
                                            <td>

                                                <button onclick="remove('${bw.id}')"
                                                        class="btn btn-primary btn-sm trash"
                                                        type="button" title="Xóa">
                                                    <i class="fas fa-trash-alt"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    </c:when>
                                    <c:otherwise>
                                        <c:set var="result" value="${bw.updateBillchanged(bw.id)}"/>
                                        <tr id="${bw.id}" style="background-color: red; color: white">
                                            <th scope="row">${bw.id}</th>
                                            <td>${bw.idUser}</td>
                                            <td>${bw.getNameReceive()}</td>
                                            <td>${bw.getDate()}</td>
                                            <td>${bw.getPhoneReceive()}</td>
                                            <td><a href="BillDetailAdmin?id=${bw.id}">Nhấp để xem</a></td>
                                            <td>${bw.getAdressReceive()}, ${bw.getWardReceive()}, ${bw.getDistrictReceive()}, ${bw.getProvinceReceive()}</td>
                                            <td>${bw.total} VND</td>
                                            <td>

                                                <button onclick="remove('${bw.id}')"
                                                        class="btn btn-primary btn-sm trash"
                                                        type="button" title="Xóa">
                                                    <i class="fas fa-trash-alt"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
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
                            <c:forEach items="${bs}" var="bw">
                                <c:choose>
                                    <c:when test="${not empty bw.hash and bw.verify(bw.id, bw.idinfo, bw.idUser, bw.hash)}">
                                        <tr id="${bw.id}" style="background-color: #82cd47">
                                            <th scope="row">${bw.id}</th>
                                            <td>${bw.idUser}</td>
                                            <td>${bw.getNameReceive()}</td>
                                            <td>${bw.getDate()}</td>
                                            <td>${bw.getPhoneReceive()}</td>
                                            <td><a href="BillDetailAdmin?id=${bw.id}">Nhấp để xem</a></td>
                                            <td>${bw.getAdressReceive()}, ${bw.getWardReceive()}, ${bw.getDistrictReceive()}, ${bw.getProvinceReceive()}</td>
                                            <td>${bw.total} VND</td>
                                            <td>

                                                <button onclick="remove('${bw.id}')"
                                                        class="btn btn-primary btn-sm trash"
                                                        type="button" title="Xóa">
                                                    <i class="fas fa-trash-alt"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    </c:when>


                                    <c:when test="${empty bw.hash || bw.hash eq ''}">

                                        <tr id="${bw.id}" style="background-color: white; color: black">
                                            <th scope="row">${bw.id}</th>
                                            <td>${bw.idUser}</td>
                                            <td>${bw.getNameReceive()}</td>
                                            <td>${bw.getDate()}</td>
                                            <td>${bw.getPhoneReceive()}</td>
                                            <td><a href="BillDetailAdmin?id=${bw.id}">Nhấp để xem</a></td>
                                            <td>${bw.getAdressReceive()}, ${bw.getWardReceive()}, ${bw.getDistrictReceive()}, ${bw.getProvinceReceive()}</td>
                                            <td>${bw.total} VND</td>
                                            <td>

                                                <button onclick="remove('${bw.id}')"
                                                        class="btn btn-primary btn-sm trash"
                                                        type="button" title="Xóa">
                                                    <i class="fas fa-trash-alt"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    </c:when>
                                    <c:otherwise>
                                        <c:set var="result" value="${bw.updateBillchanged(bw.id)}"/>
                                        <tr id="${bw.id}" style="background-color: red; color: white">
                                            <th scope="row">${bw.id}</th>
                                            <td>${bw.idUser}</td>
                                            <td>${bw.getNameReceive()}</td>
                                            <td>${bw.getDate()}</td>
                                            <td>${bw.getPhoneReceive()}</td>
                                            <td><a href="BillDetailAdmin?id=${bw.id}">Nhấp để xem</a></td>
                                            <td>${bw.getAdressReceive()}, ${bw.getWardReceive()}, ${bw.getDistrictReceive()}, ${bw.getProvinceReceive()}</td>
                                            <td>${bw.total} VND</td>
                                            <td>

                                                <button onclick="remove('${bw.id}')"
                                                        class="btn btn-primary btn-sm trash"
                                                        type="button" title="Xóa">
                                                    <i class="fas fa-trash-alt"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    $("#table-id-1").DataTable();
    $("#table-id-2").DataTable();
    $("#table-id-3").DataTable();
    $("#table-id-4").DataTable();
    $("#table-id-5").DataTable();

    function openCity(evt, cityName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";
    }

    // Mở tab mặc định
    document.getElementById("defaultOpen").click();

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
        });
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
        });
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
        });
    }
</script>
</body>
</html>
