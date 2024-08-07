<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="vn.edu.hcmuaf.bean.Bill" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="static vn.edu.hcmuaf.DAO.BookingDAO.getBookingbyId" %>
<%@ page import="static vn.edu.hcmuaf.serice.Const.daystar" %>
<%@ page import="vn.edu.hcmuaf.serice.Const" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="vn.edu.hcmuaf.DAO.BookingDAO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lí đơn hàng</title>
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
            justify-content: flex-end;
            width: 580px;
            padding: 10px 0 8px;
            margin-bottom: 20px;
        }
        .container .text.invalid {
            font-style: italic;
        }
        .element-button .tablinks{
            background-color: white;
            border: solid 2px;
            padding: 8px 12px;
            border-radius: 5px;
            margin:0 20px 20px;
        }
        .element-button .tablinks.active{
            color: white;
            background-color: #286090;
        }
        .title{
            font-size: 24px;
        }

        .box {
            width: 30px;
            height: 30px;
            margin-bottom: 5px;
            position: relative;
        }

        .red-box {
            background-color: #8feeff;
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
            font-family: Arial, sans-serif;
        }

        table.dataTable {
            font-family: inherit;
        }

        table.dataTable {
            font-family: 'Arial', sans-serif;
        }

        .none {
            display: none;
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
        }

        .modal-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 400px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        .modal-footer {
            display: flex;
            justify-content: flex-end;
        }

        .modal-footer button {
            margin-left: 10px;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="pluggin/datatables.min.js"></script>
    <script src="js/raphael-min.js"></script>
    <script src="js/morris.js"></script>
    <script src="js/jquery2.0.3.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
</head>
<body>
<%
    User use = (User) session.getAttribute("user");
    ArrayList<Bill> choxacnhan = (ArrayList<Bill>) request.getAttribute("choxacnhan");
    ArrayList<Bill> daxacnhan = (ArrayList<Bill>) request.getAttribute("daxacnhan");
    ArrayList<Bill> dahuy = (ArrayList<Bill>) request.getAttribute("dahuy");
    ArrayList<Bill> daxong = (ArrayList<Bill>) request.getAttribute("daxong");
    ArrayList<Bill> dangxuly = (ArrayList<Bill>) request.getAttribute("dangxuly");
    DecimalFormat df = new DecimalFormat("#,### VNĐ");
%>
<%@include file="header.jsp" %>
<section class="home-section">
    <div class="home-content">
        <div class="manager-checkout" style="width: 98%">
            <div class="title">Quản Lý Đơn Hàng</div>

            <!-- Nút mở hộp thoại -->
            <button id="openModalBtn" style="display:none;">Mở hộp thoại</button>

            <!-- Hộp thoại -->
            <div id="myModal" class="modal">
                <div class="modal-content">
                    <h2 id="notebile">Ghi chú</h2>
                    <textarea id="inputContent" style="width: 350px;height: 140px"
                              placeholder="Nhập nội dung tại đây..."></textarea>
                    <div class="modal-footer">
                        <button id="confirmBtn" style="background-color: #0dcaf0">Xác nhận</button>
                        <button id="cancelBtn" style="background-color: #e39c9c">Hủy</button>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="box red-box">
                    <div class="text invalid" style="margin-left: 15px" id="textinvalid">Hóa đơn có tour sẽ bắt đầu sau
                        5 ngày
                    </div>
                </div>
                <div class="box green-box none">
                    <div class="text">Hóa đơn đã được xác thực, nội dung không bị thay đổi</div>
                </div>
                <div class="box white-box none">
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
                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab6')">Đã chuẩn bị Tour</button>
                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab3')">Đã hủy</button>
                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab4')">Đã xong</button>
                        <%--                        <button class="tablinks col-sm-2" onclick="openCity(event, 'tab5')">Sắp bắt đầu</button>--%>
                    </div>
                    <!-- Chờ xác nhận -->
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
                                <th  scope="col">Lịch trình</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <%for (Bill bill : choxacnhan) {%>
                            <tr id="<%=bill.getId()%>">
                                <th scope="row"><%=bill.getId()%>
                                </th>
                                <td><%=getBookingbyId(bill.getBookingId()).getUserId()%>
                                </td>
                                <td><%=getBookingbyId(bill.getBookingId()).getTourId()%>
                                </td>
                                <td>
                                    <%=getBookingbyId(bill.getBookingId()).getDate()%>
                                </td>
                                <td><%=getBookingbyId(bill.getBookingId()).getPhone()%>
                                </td>
                                <td>
                                    <a href="BillDetailAdmin?id=1"><%=getBookingbyId(bill.getBookingId()).getNumAdult() + getBookingbyId(bill.getBookingId()).getNumChildren()%>
                                    </a>
                                </td>
                                <td style="<%=(daystar(getBookingbyId(bill.getBookingId()).getDateStart()) > 0 && daystar(getBookingbyId(bill.getBookingId()).getDateStart()) <= 5) ? "background-color: #8feeff;color:back" : "background-color: none;color:back" %>">
                                    <%=getBookingbyId(bill.getBookingId()).getDateStart()%>
                                </td>
                                <td><%=df.format(bill.getToltalPrice())%>
                                </td>
                                <td id="lichtrinh<%=bill.getId()%>" ><%=TourDao.checkTourDate(getBookingbyId(bill.getBookingId()).getDateStart(), TourDao.getNumberOfDays(TourDao.findtourbyid(getBookingbyId(bill.getBookingId()).getTourId()).getDuration()))%></td>
                                <td>
                                    <button class="btn btn-primary btn-sm trash" type="button" title="Xem chi tiết"
                                            onclick="window.location.href='http://localhost:8080/Do_An_Web/admin/DetailBillADM?action=DetailBill&idbill=<%=bill.getId()%>'">
                                        <i class="fa-solid fa-circle-info"></i>
                                    </button>
                                    <%--                                    remove ---> confirm ||| confirm ---> remove--%>
                                    <button onclick="remove(<%=bill.getId()%>)" id="confirm<%=bill.getId()%>"
                                            class="btn btn-primary btn-sm tick"
                                            type="button" title="check">
                                        <i class="fa-solid fa-check"></i>
                                    </button>
                                    <button onclick="confirm(<%=bill.getId()%>)" id="remove<%=bill.getId()%>"
                                            class="btn btn-primary btn-sm trash"
                                            type="button" title="Hủy đơn hàng">
                                        <i class="fa-solid fa-xmark" style="color: #ff0000;"></i>
                                    </button>
                                    <button onclick="plan(<%=bill.getId()%>)" id="plane<%=bill.getId()%>"
                                            class="btn btn-primary btn-sm trash none"
                                            type="button" title="Đã chuẩn bị">
                                        <i class="fa-solid fa-plane-departure"></i>
                                    </button>
                                </td>
                            </tr>
                            <%}%>
                            </tbody>
                        </table>
                    </div>
                    <!-- Đã xác nhận -->
                    <div id="tab2" class="tabcontent">
                        <table id="table-id-2" class="table table-hover table-bordered">
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
                                <th  scope="col">Lịch trình</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <%for (Bill bill : daxacnhan) {%>
                            <tr id="<%=bill.getId()%>">
                                <th scope="row"><%=bill.getId()%>
                                </th>
                                <td><%=getBookingbyId(bill.getBookingId()).getUserId()%>
                                </td>
                                <td><%=getBookingbyId(bill.getBookingId()).getTourId()%>
                                </td>
                                <td>
                                    <%=getBookingbyId(bill.getBookingId()).getDate()%>
                                </td>
                                <td><%=getBookingbyId(bill.getBookingId()).getPhone()%>
                                </td>
                                <td>
                                    <a href="BillDetailAdmin?id=1"><%=getBookingbyId(bill.getBookingId()).getNumAdult() + getBookingbyId(bill.getBookingId()).getNumChildren()%>
                                    </a></td>
                                <td style="<%= (daystar(getBookingbyId(bill.getBookingId()).getDateStart()) > 0 && daystar(getBookingbyId(bill.getBookingId()).getDateStart()) <= 5) ? "background-color: #8feeff;color:back" : "background-color: none;color:back" %>">
                                    <%=getBookingbyId(bill.getBookingId()).getDateStart()%>
                                </td>
                                <td><%=df.format(bill.getToltalPrice())%>
                                </td>
                                <td id="lichtrinh<%=bill.getId()%>" ><%=TourDao.checkTourDate(getBookingbyId(bill.getBookingId()).getDateStart(), TourDao.getNumberOfDays(TourDao.findtourbyid(getBookingbyId(bill.getBookingId()).getTourId()).getDuration()))%></td>
                                <td style="display: ruby">
                                    <button class="btn btn-primary btn-sm trash" type="button" title="Xem chi tiết"
                                            onclick="window.location.href='http://localhost:8080/Do_An_Web/admin/DetailBillADM?action=DetailBill&idbill=<%=bill.getId()%>'">
                                        <i class="fa-solid fa-circle-info"></i>
                                    </button>
                                    <button onclick="confirm(<%=bill.getId()%>)" id="remove<%=bill.getId()%>"
                                            class="btn btn-primary btn-sm trash"
                                            type="button" title="Hủy đơn hàng">
                                        <i class="fa-solid fa-xmark" style="color: #ff0000;"></i>
                                    </button>
                                    <button onclick="plan(<%=bill.getId()%>)" id="plane<%=bill.getId()%>"
                                            class="btn btn-primary btn-sm trash"
                                            type="button" title="Đã chuẩn bị Tour">
                                        <i class="fa-solid fa-plane-departure"></i>
                                    </button>
                                    <button onclick="daxong(<%=bill.getId()%>)" id="confirm<%=bill.getId()%>"
                                            class="btn btn-primary btn-sm tick none"
                                            type="button" title="Đã xong">
                                        <i class="fa-solid fa-check"></i>
                                    </button>
                                </td>
                            </tr>
                            <%}%>
                            </tbody>
                        </table>
                    </div>
                    <!-- Đã hủy -->
                    <div id="tab3" class="tabcontent">
                        <table id="table-id-3" class="table table-hover table-bordered">
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
                                <th  scope="col">Lịch trình</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <%for (Bill bill : dahuy) {%>
                            <tr id="<%=bill.getId()%>">
                                <th scope="row"><%=bill.getId()%>
                                </th>
                                <td><%=getBookingbyId(bill.getBookingId()).getUserId()%>
                                </td>
                                <td style="<%= (bill.getStatus().equals(Const.DAHUY) && bill.getNoteBill().equalsIgnoreCase("Hủy bởi khách hàng")) ? "background-color: #8feeff; color: black;" : "background-color: none; color: black;" %>">
                                    <%= getBookingbyId(bill.getBookingId()).getTourId() %>
                                </td>
                                <td>
                                    <%=getBookingbyId(bill.getBookingId()).getDate()%>
                                </td>
                                <td><%=getBookingbyId(bill.getBookingId()).getPhone()%>
                                </td>
                                <td>
                                    <a href="BillDetailAdmin?id=1"><%=getBookingbyId(bill.getBookingId()).getNumAdult() + getBookingbyId(bill.getBookingId()).getNumChildren()%>
                                    </a></td>
                                <td><%=getBookingbyId(bill.getBookingId()).getDateStart()%>
                                </td>
                                <td><%=df.format(bill.getToltalPrice())%>
                                </td>
                                <td id="lichtrinh<%=bill.getId()%>">Đã hủy</td>
                                <td>
                                    <button class="btn btn-primary btn-sm trash" type="button" title="Xem chi tiết"
                                            onclick="window.location.href='http://localhost:8080/Do_An_Web/admin/DetailBillADM?action=DetailBill&idbill=<%=bill.getId()%>'">
                                        <i class="fa-solid fa-circle-info"></i>
                                    </button>
                                </td>
                            </tr>
                            <%}%>
                            </tbody>
                        </table>
                    </div>
                    <!-- Đã xong -->
                    <div id="tab4" class="tabcontent">
                        <table id="table-id-4" class="table table-hover table-bordered">
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
                                <th  scope="col">Lịch trình</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <%for (Bill bill : daxong) {%>
                            <tr id="<%=bill.getId()%>">
                                <th scope="row"><%=bill.getId()%>
                                </th>
                                <td><%=getBookingbyId(bill.getBookingId()).getUserId()%>
                                </td>
                                <td><%=getBookingbyId(bill.getBookingId()).getTourId()%>
                                </td>
                                <td>
                                    <%=getBookingbyId(bill.getBookingId()).getDate()%>
                                </td>
                                <td><%=getBookingbyId(bill.getBookingId()).getPhone()%>
                                </td>
                                <td>
                                    <a href="BillDetailAdmin?id=1"><%=getBookingbyId(bill.getBookingId()).getNumAdult() + getBookingbyId(bill.getBookingId()).getNumChildren()%>
                                    </a></td>
                                <td><%=getBookingbyId(bill.getBookingId()).getDateStart()%>
                                </td>
                                <td><%=df.format(bill.getToltalPrice())%>
                                </td>
                                <td id="lichtrinh<%=bill.getId()%>">Tour đã xong</td>
                                <td>
                                    <button class="btn btn-primary btn-sm trash" type="button" title="Xem chi tiết"
                                            onclick="window.location.href='http://localhost:8080/Do_An_Web/admin/DetailBillADM?action=DetailBill&idbill=<%=bill.getId()%>'">
                                        <i class="fa-solid fa-circle-info"></i>
                                    </button>
                                </td>
                            </tr>
                            <%}%>
                            </tbody>
                        </table>
                    </div>
                    <!-- Sắp bắt đầu -->
                    <div id="tab5" class="tabcontent">
                        <table id="table-id-5" class="table table-hover table-bordered">
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
                                <th  scope="col">Lịch trình</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <%for (Bill bill : daxong) {%>
                            <tr id="<%=bill.getId()%>">
                                <th scope="row"><%=bill.getId()%>
                                </th>
                                <td><%=getBookingbyId(bill.getBookingId()).getUserId()%>
                                </td>
                                <td><%=getBookingbyId(bill.getBookingId()).getTourId()%>
                                </td>
                                <td>
                                    <%=getBookingbyId(bill.getBookingId()).getDate()%>
                                </td>
                                <td><%=getBookingbyId(bill.getBookingId()).getPhone()%>
                                </td>
                                <td>
                                    <a href="BillDetailAdmin?id=1"><%=getBookingbyId(bill.getBookingId()).getNumAdult() + getBookingbyId(bill.getBookingId()).getNumChildren()%>
                                    </a></td>
                                <td><%=getBookingbyId(bill.getBookingId()).getDateStart()%>
                                </td>
                                <td><%=df.format(bill.getToltalPrice())%>
                                </td>
                                <td id="lichtrinh<%=bill.getId()%>"><%=TourDao.checkTourDate(getBookingbyId(bill.getBookingId()).getDateStart(), TourDao.getNumberOfDays(TourDao.findtourbyid(getBookingbyId(bill.getBookingId()).getTourId()).getDuration()))%></td>
                                <td>
                                    <button class="btn btn-primary btn-sm trash" type="button" title="Xem chi tiết"
                                            onclick="window.location.href='http://localhost:8080/Do_An_Web/admin/DetailBillADM?action=DetailBill&idbill=<%=bill.getId()%>'">
                                        <i class="fa-solid fa-circle-info"></i>
                                    </button>
                                    <button class="btn btn-primary btn-sm trash" type="button" title="Xem chi tiết"
                                            onclick="window.location.href='http://localhost:8080/Do_An_Web/admin/DetailBillADM?action=DetailBill&idbill=<%=bill.getId()%>'">
                                        <i class="fa-solid fa-circle-info"></i>
                                    </button>
                                    <button class="btn btn-primary btn-sm trash" type="button" title="Xem chi tiết"
                                            onclick="window.location.href='http://localhost:8080/Do_An_Web/admin/DetailBillADM?action=DetailBill&idbill=<%=bill.getId()%>'">
                                        <i class="fa-solid fa-circle-info"></i>
                                    </button>
                                </td>
                            </tr>
                            <%}%>
                            </tbody>
                        </table>
                    </div>
                    <!-- Đã chuẩn bị Tour -->
                    <div id="tab6" class="tabcontent">
                        <table id="table-id-6" class="table table-hover table-bordered">
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
                                <th class="lichtrinh" scope="col">Lịch trình</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <%for (Bill bill : dangxuly) {%>
                            <tr id="<%=bill.getId()%>">
                                <th scope="row"><%=bill.getId()%>
                                </th>
                                <td><%=getBookingbyId(bill.getBookingId()).getUserId()%>
                                </td>
                                <td><%=getBookingbyId(bill.getBookingId()).getTourId()%>
                                </td>
                                <td>
                                    <%=getBookingbyId(bill.getBookingId()).getDate()%>
                                </td>
                                <td><%=getBookingbyId(bill.getBookingId()).getPhone()%>
                                </td>
                                <td>
                                    <a href="BillDetailAdmin?id=1"><%=getBookingbyId(bill.getBookingId()).getNumAdult() + getBookingbyId(bill.getBookingId()).getNumChildren()%>
                                    </a></td>
                                <td style="<%= (daystar(getBookingbyId(bill.getBookingId()).getDateStart()) > 0 && daystar(getBookingbyId(bill.getBookingId()).getDateStart()) <= 5) ? "background-color: #8feeff;color:back" : "background-color: none;color:back" %>">
                                    <%=getBookingbyId(bill.getBookingId()).getDateStart()%>
                                </td>
                                <td><%=df.format(bill.getToltalPrice())%>
                                </td>
                                <td id="lichtrinh<%=bill.getId()%>" ><%=TourDao.checkTourDate(getBookingbyId(bill.getBookingId()).getDateStart(), TourDao.getNumberOfDays(TourDao.findtourbyid(getBookingbyId(bill.getBookingId()).getTourId()).getDuration()))%></td>
                                <td>
                                    <button class="btn btn-primary btn-sm trash" type="button" title="Xem chi tiết"
                                            onclick="window.location.href='http://localhost:8080/Do_An_Web/admin/DetailBillADM?action=DetailBill&idbill=<%=bill.getId()%>'">
                                        <i class="fa-solid fa-circle-info"></i>
                                    </button>
                                    <button onclick="daxong(<%=bill.getId()%>)" id="confirm<%=bill.getId()%>"
                                            class="btn btn-primary btn-sm tick"
                                            type="button" title="Đã xong">
                                        <i class="fa-solid fa-check"></i>
                                    </button>
                                </td>
                            </tr>
                            <%}%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>
    </div>
</section>

<script>
    $(document).ready(function () {
        $('#table-id-1').DataTable();
        $('#table-id-2').DataTable();
        $('#table-id-3').DataTable();
        $('#table-id-4').DataTable();
        $('#table-id-5').DataTable();
        $('#table-id-6').DataTable();

    });

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

        if (cityName === 'tab4') {
            var note = document.getElementById('textinvalid');
            note.innerText = '      '
        } else if (cityName === 'tab3') {
            var note = document.getElementById('textinvalid');
            note.textContent = 'Đã hủy bởi khách hàng'
        } else {
            var note = document.getElementById('textinvalid');
            note.innerText = '      Hóa đơn có tour sẽ bắt đầu sau 5 ngày'
        }
    }

    // Mở tab đầu tiên theo mặc định
    document.getElementById("defaultOpen").click();

    // Sự kiện này để hủy đơn
    function confirm(id) {
        var notebile = document.getElementById("notebile");
        notebile.innerText = `Ghi chú cho hóa đơn: ` + id;
        var modal = document.getElementById("myModal");
        var confirmBtn = document.getElementById("confirmBtn");
        var cancelBtn = document.getElementById("cancelBtn");
        var inputContent = document.getElementById("inputContent");


        modal.style.display = "block";
        inputContent.value = 'Đơn hàng được hủy bởi hệ thống';

        cancelBtn.onclick = function () {
            modal.style.display = "none";
        }

        // Gỡ bỏ tất cả các sự kiện 'click' trước khi thêm mới
        confirmBtn.replaceWith(confirmBtn.cloneNode(true));
        confirmBtn = document.getElementById("confirmBtn");

        // Khi nhấn nút Xác nhận
        confirmBtn.addEventListener("click", () => {
            modal.style.display = "none";
            var data = new URLSearchParams();
            data.append("id", id);
            data.append("note", inputContent.value);
            data.append("action", "huybill")
            fetch('InvoiceProcessing', {
                method: 'POST',
                body: data
            })
                .then(response => {
                    if (response.ok) {
                        inputContent.value = '';

                        var table1 = $('#table-id-1').DataTable();
                        var table3 = $('#table-id-3').DataTable();
                        var row = table1.row('#' + id);
                        var rowData = row.data();

                        if (!row.node()) {
                            var table2 = $('#table-id-2').DataTable();
                            var row = table2.row('#' + id);
                            var rowData = row.data();
                            row.remove().draw();
                            table3.row.add(rowData).draw();
                            document.getElementById("remove" + id).classList.add("none");
                            document.getElementById("confirm" + id).classList.add("none");
                            document.getElementById("plane" + id).classList.add("none");

                        } else {
                            row.remove().draw();
                            table3.row.add(rowData).draw();
                            document.getElementById("remove" + id).classList.add("none");
                            document.getElementById("confirm" + id).classList.add("none");
                            document.getElementById("plane" + id).classList.add("none");
                            console.log("Sửa thành công");
                        }
                    } else {
                        alert("Co loi");
                        console.log("co loi")
                    }
                })

                .catch(err => {
                    alert(err)
                    console.log(err)
                })

        });

        cancelBtn.addEventListener("click", () => {
            modal.style.display = "none";
        });

        // Khi nhấn ra ngoài hộp thoại
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    }

    // Sự kiện này dùng để xác nhận đơn hàng
    function remove(id) {
        var notebile = document.getElementById("notebile");
        notebile.innerText = `Ghi chú cho hóa đơn: ` + id;
        var modal = document.getElementById("myModal");
        var confirmBtn = document.getElementById("confirmBtn");
        var cancelBtn = document.getElementById("cancelBtn");
        var inputContent = document.getElementById("inputContent");
        modal.style.display = "block";
        inputContent.value = 'Đơn hàng đã được xác nhận';
        cancelBtn.onclick = function () {
            modal.style.display = "none";
        }

        // Thay thế nút và gán lại sự kiện
        confirmBtn.replaceWith(confirmBtn.cloneNode(true));
        confirmBtn = document.getElementById("confirmBtn");

        confirmBtn.addEventListener("click", function () {
            modal.style.display = "none";
            var data = new URLSearchParams();
            data.append("id", id);
            data.append("note", inputContent.value);
            data.append("action", "xacnhanbill");
            fetch('InvoiceProcessing', {
                method: 'POST',
                body: data
            })
                .then(response => {
                    if (response.ok) {
                        inputContent.value = '';
                        var table1 = $('#table-id-1').DataTable();
                        var table2 = $('#table-id-2').DataTable();
                        var row = table1.row('#' + id);
                        var rowData = row.data();
                        row.remove().draw();
                        if (!rowData) {
                            daxong(id);
                            return
                        }
                        table2.row.add(rowData).draw();
                        // document.getElementById("remove" + id).classList.add("none");
                        document.getElementById("plane" + id).classList.remove("none");
                        const confirm = document.getElementById("confirm" + id);
                        confirm.classList.add("none");

                        // Gán sự kiện onclick lại cho confirm
                        confirm.onclick = function () {
                            alert("Sửa lại cho sự kiện onclick confirm")
                        };
                        confirm.title = "Đã xong";
                        console.log("Sửa thành công");
                    } else {
                        alert("Có lỗi");
                        console.log("Có lỗi");
                    }
                })
                .catch(err => {
                    alert("Lỗi:" + err);
                    console.log(err);
                });
        });

        cancelBtn.addEventListener("click", function () {
            modal.style.display = "none";
        });

        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        };
    }


    // Sự kiện này dùng để chuyển sang trạng thái chuẩn bị tour
    function plan(id) {
        var notebile = document.getElementById("notebile");
        notebile.innerText = `Ghi chú cho hóa đơn: ` + id;
        var modal = document.getElementById("myModal");
        var confirmBtn = document.getElementById("confirmBtn");
        var cancelBtn = document.getElementById("cancelBtn");
        var inputContent = document.getElementById("inputContent");
        modal.style.display = "block";
        inputContent.value = 'Tour đã chuẩn bị đủ các điều kiện để bắt đầu ';

        cancelBtn.onclick = function () {
            modal.style.display = "none";
        }
        confirmBtn.replaceWith(confirmBtn.cloneNode(true));
        confirmBtn = document.getElementById("confirmBtn");
        confirmBtn.addEventListener("click", () => {
            modal.style.display = "none";
            var data = new URLSearchParams();
            data.append("id", id);
            data.append("note", inputContent.value);
            data.append("action", "chuanbitour")
            fetch('InvoiceProcessing', {
                method: 'POST',
                body: data
            })
                .then(response => {
                    if (response.ok) {
                        inputContent.value = '';
                        var table2 = $('#table-id-2').DataTable();
                        var table6 = $('#table-id-6').DataTable();
                        var row = table2.row('#' + id);
                        var rowData = row.data();
                        row.remove().draw();
                        table6.row.add(rowData).draw();
                        document.getElementById("remove" + id).classList.add("none");
                        document.getElementById("plane" + id).classList.add("none");
                        var comfirm = document.getElementById("confirm" + id)
                        comfirm.classList.remove("none");
                        comfirm.title = "Đã xong"

                        comfirm.onclick = function () {
                            daxong(id)
                        }

                        console.log("Sửa thành công");
                    } else {
                        alert("Co loi");
                        console.log("co loi")
                    }
                })
                .catch(err => {
                    alert("loioooo " + err)
                    console.log(err)
                })
        });
        cancelBtn.addEventListener("click", () => {
            modal.style.display = "none";
        });
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    }

    // Sự kiện này dùng để chuyển sang trạng thái đã xong
    function daxong(id) {
        var notebile = document.getElementById("notebile");
        notebile.innerText = `Ghi chú cho hóa đơn: ` + id;
        var modal = document.getElementById("myModal");
        var confirmBtn = document.getElementById("confirmBtn");
        var cancelBtn = document.getElementById("cancelBtn");
        var inputContent = document.getElementById("inputContent");
        modal.style.display = "block";
        inputContent.value = 'Tour đã diễn ra và hoàn tất ';
        cancelBtn.onclick = function () {
            modal.style.display = "none";
        }
        confirmBtn.replaceWith(confirmBtn.cloneNode(true));
        confirmBtn = document.getElementById("confirmBtn");
        confirmBtn.addEventListener("click", () => {
            modal.style.display = "none";
            var data = new URLSearchParams();
            data.append("id", id);
            data.append("note", inputContent.value);
            data.append("action", "daxongtour")
            fetch('InvoiceProcessing', {
                method: 'POST',
                body: data
            })
                .then(response => {
                    if (response.ok) {
                        inputContent.value = '';

                        var table6 = $('#table-id-6').DataTable();
                        var table4 = $('#table-id-4').DataTable();
                        var row = table6.row('#' + id);
                        var rowData = row.data();

                        row.remove().draw();
                        table4.row.add(rowData).draw();
                        var remove = document.getElementById("remove" + id);
                        var plane = document.getElementById("plane" + id);
                        document.getElementById("confirm" + id).classList.add("none");
                        if (remove) {
                            remove.classList.add("none")
                        }
                        if (plane) {
                            plane.classList.add("none")
                        }
                        console.log("Sửa thành công");
                    } else {
                        alert("Co loi");
                        console.log("co loi")
                    }
                })

                .catch(err => {
                    alert(err)
                    console.log(err)
                })

        });

        cancelBtn.addEventListener("click", () => {
            modal.style.display = "none";
        });

        // Khi nhấn ra ngoài hộp thoại
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    }


</script>
</body>
