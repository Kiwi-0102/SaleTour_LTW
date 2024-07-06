<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.bean.Bill" %>
<%@ page import="vn.edu.hcmuaf.bean.Booking" %>
<%@ page import="vn.edu.hcmuaf.DAO.BookingDAO" %>
<%@ page import="vn.edu.hcmuaf.bean.Customer" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="vn.edu.hcmuaf.bean.HistoryBills" %>
<%@ page import="vn.edu.hcmuaf.DAO.BillDAO" %>
<%@ page import="vn.edu.hcmuaf.DAO.TourDao" %>
<html>
<head>
    <title>Quản lí khách hàng</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <link rel="shortcut icon" type="image/icon" href="../assets/logo/favicon.png"/>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/admin.css">
    <link href="css/style.css" rel='stylesheet' type='text/css'/>
    <link href="css/style-responsive.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.js"></script>
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

        .dataTables_wrapper .dataTables_length,
        .dataTables_wrapper .dataTables_filter,
        .dataTables_wrapper .dataTables_info,
        .dataTables_wrapper .dataTables_paginate {
            text-align: center;
        }

        .dataTables_wrapper .dataTables_filter input {
            display: inline-block;
            width: auto;
        }

        table.dataTable td,
        table.dataTable th {
            text-align: center;
            vertical-align: middle;
        }

        .home-content .manager-product {
            margin-top: 0;
            margin-left: 252px;
            width: 82%;
            background: #fff;
            padding: 20px 30px;
            border-radius: 12px;
            box-shadow: 0 5px 10px rgb(0 0 0 / 10%);
        }

        th {
            width: 300px;
        }

        .dt-orderable-asc.dt-orderable-desc {
            align-content: center;
            text-align: center;
        }

        .shadow-table {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
        }

        input {
            width: 400px;
            border: none;
            outline: none;
        }
        .d-none{
            display: none !important;
        }
        .dataTables_wrapper {
            width: 100%;
        }

        #table1 th, #table1 td {
            white-space: nowrap;
        }
         .modal {
             display: none;
             position: fixed;
             z-index: 1;
             padding-top: 100px;
             left: 0;
             top: 0;
             width: 100%;
             height: 100%;
             overflow: auto;
             background-color: rgb(0,0,0);
             background-color: rgba(0,0,0,0.4);
         }
        .modal-content {
            background-color: #fefefe;
            margin: 200px auto 0 auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        .checkout-main.order-tour .customer {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            justify-content: space-between;
            flex-wrap: wrap;
            margin-bottom: 25px;
        }

        .customer-row {
            padding-left: 300px;
            display: flex;
            justify-content: space-between;
            width: 100%;
        }

        .customer .change {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 48%; /* Điều chỉnh theo nhu cầu của bạn */
            margin-bottom: 15px;
            padding: 10px 0;
            border-bottom: 1px solid #ddd;
        }

        .change-title {
            display: flex;
            flex-direction: column;
            margin-right: 15px;
        }

        .change-number {
            display: flex;
            align-items: center;
        }

        .change-number .btn-click {
            cursor: pointer;
        }

        .change-number .btn-click a {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 30px;
            height: 30px;
            border: 1px solid #ddd;
            border-radius: 50%;
            background-color: #f9f9f9;
            text-decoration: none;
        }

        .change-number input {
            margin: 0 10px;
            text-align: center;
        }

    </style>
</head>
<%
    Bill bill = (Bill) request.getAttribute("bill");
    String err = (String) request.getAttribute("error");
    Booking booking = BookingDAO.getBookingbyId(bill.getBookingId());
    ArrayList<Customer> customers = (ArrayList<Customer>) request.getAttribute("customers");
    DecimalFormat df = new DecimalFormat("#,### VNĐ");
    ArrayList<HistoryBills> historyBills = BillDAO.getHistoryBillsByBillId(bill.getId());
    int idTour = booking.getTourId();
    int socho = TourDao.sochoconlai(idTour);
%>

<body>
<%@include file="header.jsp" %>
<section class="home-section">
    <div class="home-content">
        <% if (err != null && !err.isEmpty()) { %>
        <div style="color: red"><%= err %>
        </div>
        <% } %>
        <div id="message" class="message"></div>
        <div class="manager-product">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Thuộc tính</th>
                    <th scope="col">Giá trị</th>
                    <th>
                        <button type="button" id="setting" onclick="enableInput()"><i class="fa-solid fa-pen"
                                                                                      style="color: #FFD43B;"></i>
                        </button>
                        <button type="button" id="check" style="display: none" onclick="checkInfor()"><i
                                class="fa-solid fa-circle-check"></i></button>
                        <button type="button" id="destroy" style="display: none" onclick="disableInput()"><i
                                class="fa-solid fa-circle-xmark"></i></button>
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">Mã hóa đơn</th>
                    <td><%=bill.getId()%>
                    </td>
                    <td></td>
                </tr>
                <tr style="display: none">
                    <th scope="row">Mã đặt hàng</th>
                    <td><%=bill.getBookingId()%>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Mã tài khoản</th>
                    <td><%=booking.getUserId()%>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Phương thức thanh toán</th>
                    <td><%=bill.getPaymentMethod()%>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Tổng tiền</th>
                    <td><%=df.format(bill.getToltalPrice())%>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Trạng thái hóa đơn</th>
                    <td><input type="text" id="status" value="<%=bill.getStatus()%>" readonly></td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Ngày đặt Tour</th>
                    <td><%=booking.getDate()%>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Ngày bắt đầu</th>
                    <td><input type="text" id="date" value="<%=booking.getDateStart()%>" readonly></td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Mã Tour</th>
                    <td><%=booking.getTourId()%>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Số người lớn</th>
                    <td><%=booking.getNumAdult()%>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Số trẻ em</th>
                    <td><%=booking.getNumChildren()%>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Tên người đặt hàng</th>
                    <td><input type="text" id="name" value="<%=booking.getName()%>" readonly></td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Số điện thoại</th>
                    <td><input type="text" id="std" value="<%=booking.getPhone()%>" readonly></td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">email</th>
                    <td><input type="text" id="email" value="<%=booking.getEmail()%>" readonly></td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Địa chỉ</th>
                    <td><input type="text" id="address" value="<%=booking.getAddress()%>" readonly></td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Ghi chú</th>
                    <td><input type="text" id="note" value="<%=bill.getNoteBill()%>" readonly></td>
                    <td></td>
                </tr>
                </tbody>
            </table>
            <br>
            <br>

            <div class="d-lg-block">
                <div class="passenger-list p-4 mb-4">
                    <div class="heading" style="margin: 10px">
                        <h5 class="fw-bold tieude" style="display: flex; justify-content: space-between; align-items: center;">
                            DANH SÁCH HÀNH KHÁCH
                            <button style="margin-left: auto;" onclick="checkTour()"><i class="fa-solid fa-user-plus"></i></button>
                        </h5>
                    </div>
                    <table class="table booking-table">
                        <thead>
                        <tr class="fw-bold" style="color: #0c0c0c !important;">
                            <td style="color: #0c0c0c !important;">Mã Khách hàng</td>
                            <td style="color: #0c0c0c !important;">Họ tên</td>
                            <td style="color: #0c0c0c !important;">Ngày sinh</td>
                            <td style="color: #0c0c0c !important;">Giới tính</td>
                            <td style="color: #0c0c0c !important;">Độ tuổi</td>
                            <td class="d-none">Giảm giá?</td>
                        </tr>
                        </thead>
                        <tbody>
                        <%for (Customer customer : customers) {%>
                        <tr id="<%=customer.getId()%>">
                            <td><%=customer.getId()%></td>
                            <td><%=customer.getName()%></td>
                            <td><%=customer.getDateOfBirth()%></td>
                            <td><%=customer.getMale()%></td>
                            <td>Người lớn</td>
                            <td class="d-none">$320,800</td>
                        </tr>
                        <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
<%--    <form action="${pageContext.request.contextPath}/admin/updateCustomer" id="formAdd" class="d-none" method="post">--%>
    <div id="formAdd" class="d-none">
        <input type="hidden" id="idbill" name="idbill" value="<%=bill.getId()%>">
        <input type="hidden" name="action" id="action" value="update">
        <div class="checkout-main order-tour">
            <div class="customer">
                <h3 style="padding: 20px">Hành khách</h3>
                <div class="customer-row">
                    <div class="change">
                        <div class="change-title">
                            <h4>Người lớn</h4>
                            <p>Từ 12 tuổi</p>
                        </div>
                        <div class="change-number">
                        <span class="minus btn-click">
                            <a id="adultc" onclick="setcount('dec')">
                                <i class="fas fa-minus" style="color: black;padding: 5px"></i>
                            </a>
                        </span>
                            <input min="1" name="numadult" id="adult" value="1" type="number" class="form-control form-control-sm" style="width: 55px;">
                            <span class="plus btn-click">
                            <a id="adultt" onclick="setcount('inc')">
                                <i class="fas fa-plus" style="color: black;padding: 5px"></i>
                            </a>
                        </span>
                            <span style="margin-left: 100px" id="priceadult"><%=TourDao.findtourbyid(booking.getTourId()).getPrice()%> đ</span>
                        </div>
                    </div>
                    <div class="change">
                        <div class="change-title">
                            <h4>Trẻ em</h4>
                            <p>Từ 4 - 12 tuổi</p>
                        </div>
                        <div class="change-number">
                        <span class="minus btn-click">
                            <a id="childrenc" onclick="setcount('decc')">
                                <i class="fas fa-minus" style="color: black;padding: 5px"></i>
                            </a>
                        </span>
                            <input min="0" name="numchildren" id="children" value="0" type="number" class="form-control form-control-sm" style="width: 55px;">
                            <span class="plus btn-click">
                            <a id="childrent" onclick="setcount('incc')">
                                <i class="fas fa-plus" style="color: black;padding: 5px"></i>
                            </a>
                        </span>
                            <span style="margin-left: 100px" id="pricechild">0 đ</span>
                        </div>
                    </div>
                    <button onclick="submitadd()" type="submit" style="margin-top: 20px;height: 25px;margin-right: 100px;"><i class="fa-solid fa-check"></i></button>
                </div>
            </div>
        </div>
        <div class="group-fields-input-contact-adult group-fields-input-contact-wrapper mb-3" style="width: 100%">
            <div class="title-persona"><i class="fa-solid fa-user-tie"></i> Người lớn</div>
            <div id="inforuser">
<%--                <div class="row" style="margin-left: 260px">--%>
<%--                    <div class="col-lg-4 col-12">--%>
<%--                        <div class="form-group">--%>
<%--                            <label class="pb-1 font-700">Họ và tên <span class="text-danger">*</span></label>--%>
<%--                            <input type="text" class="form-control fullName hotel-flight-input" placeholder="Nhập họ tên" name="fullName0" required="">--%>
<%--                            <div class="errorform error-notes">Vui lòng nhập thông tin</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-2 col-12">--%>
<%--                        <div class="form-group select-custom-icon">--%>
<%--                            <label class="pb-1 white-space-nowrap">Giới tính <span class="text-danger">*</span></label>--%>
<%--                            <select class="form-control title title-gender hotel-flight-input" name="gender0" required="">--%>
<%--                                <option value="">Giới tính</option>--%>
<%--                                <option value="nam">Nam</option>--%>
<%--                                <option value="nu">Nữ</option>--%>
<%--                            </select>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-5 col-12">--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">--%>
<%--                                <div class="form-group select-custom-icon">--%>
<%--                                    <label class="pb-1 white-space-nowrap font-700">Ngày sinh <span class="text-danger">*</span></label>--%>
<%--                                    <input type="number" placeholder="Ngày" name="ngay0" class="form-control fullName hotel-flight-input" required="" min="1" max="31">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">--%>
<%--                                <div class="form-group select-custom-icon">--%>
<%--                                    <label class="pb-1">&nbsp;</label>--%>
<%--                                    <input type="number" placeholder="Tháng" name="thang0" class="form-control fullName hotel-flight-input" required="" min="1" max="12">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">--%>
<%--                                <div class="form-group select-custom-icon">--%>
<%--                                    <label class="pb-1">&nbsp;</label>--%>
<%--                                    <input type="number" placeholder="Năm" name="nam0" class="form-control fullName hotel-flight-input" required="" min="1960" max="2024">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-1 col-12"></div>--%>
<%--                </div>--%>
            </div>
        </div>
    </div>

<%--    </form>--%>
</section>
<hr>

<section class="home-section" style="margin: 50px; padding-left: 225px; width: 90%">
    <hr>
    <div>Lịch sử hóa đơn</div>
    <div class="home-content">
        <table id="table1" class="table table-hover table-bordered" style="width:100%">
            <thead>
            <tr>
                <th style="text-align: center">Id</th>
                <th style="text-align: center">Title</th>
                <th style="text-align: center">changeDate</th>
                <th style="text-align: center">beforeValue</th>
                <th style="text-align: center">currentValue</th>
            </tr>
            </thead>
            <tbody>
            <% for (HistoryBills bills  : historyBills) {
                String beforeValue = bills.getBeforeValue();
                String currentValue = bills.getCurrentValue();

                String truncatedBeforeValue = beforeValue.length() > 50 ? beforeValue.substring(0, 50) + "..." : beforeValue;
                String truncatedCurrentValue = currentValue.length() > 50 ? currentValue.substring(0, 50) + "..." : currentValue;
            %>
            <tr id="<%= bills.getId() %>">
                <td style="text-align: center"><%= bills.getId() %></td>
                <td style="text-align: center"><%= bills.getTitle() %></td>
                <td style="text-align: center"><%= bills.getChangeDate() %></td>
                <td style="text-align: start; display: flex; justify-content: space-between; align-items: center; white-space: nowrap;">
                    <span><%= truncatedBeforeValue %></span>
                    <i class="fa-solid fa-info" style="padding: 5px;background-color: #0dcaf0" data-full-value="<%= beforeValue %>"></i>
                </td>
                <td style="text-align: start; display: table-cell; justify-content: space-between; align-items: center; white-space: nowrap;">
                    <span><%= truncatedCurrentValue %></span>
                    <i class="fa-solid fa-info" style="padding: 5px;background-color: #0dcaf0"  data-full-value="<%= currentValue %>"></i>
                </td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>
</section>

<!-- Modal -->
<div id="valueModal" class="modal" style="display: none;">
    <div class="modal-content">
        <span class="close">&times;</span>
        <p id="modalValue"></p>
    </div>
</div>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Lấy các phần tử biểu tượng fa-info
        const infoIcons = document.querySelectorAll('.fa-info');

        // Thêm sự kiện click cho từng biểu tượng
        infoIcons.forEach(icon => {
            icon.addEventListener('click', function() {
                const fullValue = this.getAttribute('data-full-value');
                const modal = document.getElementById('valueModal');
                const modalValue = document.getElementById('modalValue');
                modalValue.textContent = fullValue;
                modal.style.display = 'block';
            });
        });

        // Lấy phần tử span đóng modal
        const closeModal = document.querySelector('.modal .close');
        closeModal.addEventListener('click', function() {
            const modal = document.getElementById('valueModal');
            modal.style.display = 'none';
        });

        // Đóng modal khi nhấp ra ngoài
        window.addEventListener('click', function(event) {
            const modal = document.getElementById('valueModal');
            if (event.target === modal) {
                modal.style.display = 'none';
            }
        });
    });
</script>
<script>
    var initialValues = {};

    $(document).ready(function () {
        $('#table1').DataTable({
            "autoWidth": false,  // Thêm dòng này để DataTables không tự động thiết lập độ rộng cột
            "columnDefs": [
                {"className": "dt-center", "targets": "_all"}
            ],
            "language": {
                "zeroRecords": "Không tìm thấy bản ghi nào",
                "info": "Hiển thị trang _PAGE_ của _PAGES_",
                "infoEmpty": "Không có bản ghi nào",
                "infoFiltered": "(được lọc từ tổng cộng _MAX_ bản ghi)",
                "search": "Tìm kiếm:"
            }
        });
    });



    function enableInput() {
        var inputs = document.querySelectorAll('.table input');
        inputs.forEach(function (input) {
            initialValues[input.id] = input.value; // Lưu giá trị ban đầu
            input.removeAttribute('readonly');
            input.style.border = '2px solid gray';
        });
        document.getElementById('check').style.display = 'inline';
        document.getElementById('destroy').style.display = 'inline';
        document.getElementById('setting').style.display = 'none';
    }

    function disableInput() {
        var inputs = document.querySelectorAll('.table input');
        inputs.forEach(function (input) {
            input.setAttribute('readonly', 'readonly');
            input.style.border = 'none';
        });
        document.getElementById('check').style.display = 'none';
        document.getElementById('destroy').style.display = 'none';
        document.getElementById('setting').style.display = 'block';
    }

    function checkInfor() {
        var status = document.getElementById('status').value.trim();
        var date = document.getElementById('date').value.trim();
        var name = document.getElementById('name').value.trim();
        var sdt = document.getElementById('std').value.trim();
        var email = document.getElementById('email').value.trim();
        var address = document.getElementById('address').value.trim();
        var note = document.getElementById('note').value.trim();

        if (status === "" || date === "" || name === "" || sdt === "" || email === "" || address === "" || note === "") {
            Swal.fire({
                icon: 'error',
                title: 'Lỗi',
                text: 'Vui lòng nhập đầy đủ thông tin!'
            });
            return false;
        } else {
            var data = new URLSearchParams();
            data.append('idbill', <%=bill.getId()%>);
            data.append('status', status);
            data.append('date', date);
            data.append('name', name);
            data.append('sdt', sdt);
            data.append('email', email);
            data.append('address', address);
            data.append('note', note);
            data.append('action', 'updateBill');

            fetch('DetailBillADM', {
                method: 'POST',
                body: data,
            })
                .then(response => {
                    if (response.ok) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Thành công',
                            text: 'Thông tin đã được kiểm tra!'
                        });
                    } else {
                        Swal.fire({
                            icon: 'error',
                            title: 'Lỗi',
                            text: 'Lỗi từ máy chủ vui lòng thực hiện lại sau!'
                        });
                    }
                })

                .catch(err => {
                    console.log(err);
                })


        }

        disableInput(); // Tắt chế độ chỉnh sửa sau khi kiểm tra thành công
    }

    function resetInputValues() {
        var inputs = document.querySelectorAll('.table input');
        inputs.forEach(function (input) {
            input.value = initialValues[input.id]; // Khôi phục giá trị ban đầu
        });
    }

    document.getElementById('destroy').addEventListener('click', function () {
        resetInputValues();
        disableInput();
    });
</script>

<%--Đây là xử lý sự kiện cho click tăng giảm--%>
<script>
    const setcount = (action) => {
        var data = new URLSearchParams();
        // Lấy các giá trị gửi đến servlert
            var numberAdut = document.getElementById('adult').value;
            data.append('numberA',numberAdut);
            var numberChil = document.getElementById('children').value;
            data.append('numberC',numberChil);
            var idTour = <%=booking.getTourId()%>
            data.append('idTour',idTour);
        data.append('action',action);
        fetch("updateCustomer",{
            method: "POST",
            body: data
        })
            // then đầu tiên để chuyển json về js
            .then(response =>{
                if (!response.ok) {
                    throw new Error('Network response was not ok ' + response.statusText);
                }
                return response.json();
            })

            // then thứ 2 dùng để xử lý
            .then(jsonResponse => {
                if (jsonResponse.numberA === 'min' || jsonResponse.numberC === 'min') {
                    showSuccessAlert('Không thể giảm')
                }else if (jsonResponse.numberC === 'max' || jsonResponse.numberA === 'max') {
                    showSuccessAlert('Đã đạt số lượng tối đa')
                }else if (jsonResponse.numberA !== undefined){
                    var adult = document.getElementById('adult');
                    adult.value = jsonResponse.numberA;
                    var price =  jsonResponse.numberA * <%=TourDao.findtourbyid(booking.getTourId()).getPrice()%>;
                    console.log('priceA '+price)
                    document.getElementById('priceadult').innerText = price +' đ'
                    addinfor(parseInt(jsonResponse.numberA))
                }else if (jsonResponse.numberC !== undefined){
                    var childer = document.getElementById('children');
                    var price =  jsonResponse.numberC * 0.6 * <%=TourDao.findtourbyid(booking.getTourId()).getPrice()%>
                        console.log('priceC '+price)
                    document.getElementById('pricechild').innerText =  price +' đ'
                    childer.value = jsonResponse.numberC
                }
            })

            .catch(err=>{
                console.log(err)
            })
    }

    function showSuccessAlert(content) {
        Swal.fire({
            icon: 'error',
            title: 'Lỗi',
            text: content
        });
    }
</script>

<%-- Cái này để chứa phương thức update nhập thông tin--%>
<script>
    function addinfor(num) {
        var formContainer = document.getElementById('inforuser');
        formContainer.innerHTML = ''; // Clear the container

        for (var i = 0; i < num; i++) {
            var formHtml = `
            <div class="row" style="margin-left: 260px">
                <div class="col-lg-4 col-12">
                    <div class="form-group">
                        <label class="pb-1 font-700">Họ và tên <span class="text-danger">*</span></label>
                        <input type="text" class="form-control fullName hotel-flight-input"
                               placeholder="Nhập họ tên" name="fullName${i}" required/>
                        <div class="errorform error-notes">Vui lòng nhập thông tin</div>
                    </div>
                </div>
                <div class="col-lg-2 col-12">
                    <div class="form-group select-custom-icon">
                        <label class="pb-1 white-space-nowrap">Giới tính <span class="text-danger">*</span></label>
                        <select class="form-control title title-gender hotel-flight-input"
                                name="gender${i}" required>
                            <option value="">Giới tính</option>
                            <option value="nam">Nam</option>
                            <option value="nu">Nữ</option>
                        </select>
                    </div>
                </div>
                <div class="col-lg-5 col-12">
                    <div class="row">
                        <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                            <div class="form-group select-custom-icon">
                                <label class="pb-1 white-space-nowrap font-700">Ngày sinh <span class="text-danger">*</span></label>
                                <input type="number" placeholder="Ngày" name="ngay${i}"
                                       class="form-control fullName hotel-flight-input"
                                       required min="1" max="31"/>
                            </div>
                        </div>
                        <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                            <div class="form-group select-custom-icon">
                                <label class="pb-1">&nbsp;</label>
                                <input type="number" placeholder="Tháng" name="thang${i}"
                                       class="form-control fullName hotel-flight-input"
                                        required min="1" max="12"/>
                            </div>
                        </div>
                        <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                            <div class="form-group select-custom-icon">
                                <label class="pb-1">&nbsp;</label>
                                <input type="number" placeholder="Năm" name="nam${i}"
                                       class="form-control fullName hotel-flight-input"
                                        required min="1960" max="2024"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-1 col-12"></div>
            </div>`;
            formContainer.innerHTML += formHtml;
        }
    }

    function checkTour() {
        var socho = <%= socho %>;
        var addUser = document.getElementById('formAdd');
        if (socho > 0) {
            if (addUser.classList.contains('d-none')) {
                addUser.classList.remove('d-none');
                addinfor(parseInt(document.getElementById('adult').value))
            } else {
                addUser.classList.add('d-none');
            }
        } else {
            Swal.fire({
                icon: 'error',
                title: 'Lỗi',
                text: 'Số chỗ đã đạt giới hạn!'
            });
        }
    }

    function submitadd() {

        var idbill = document.getElementById('idbill').value;
        var action = document.getElementById('action').value;
        var numchildren = document.getElementById('children').value;
        var numadult = document.getElementById('adult').value;

        var param = new URLSearchParams();
        param.append('idbill', idbill);
        param.append('action', action);
        param.append('numchildren', numchildren);
        param.append('numadult', numadult);

        // Add form data from dynamic fields
        for (var i = 0; i < numadult; i++) {
            console.log('fullName' + i, document.querySelector(`input[name="fullName${i}"]`))
            param.append('fullName' + i, document.querySelector(`input[name="fullName${i}"]`).value);
            param.append('gender' + i, document.querySelector(`select[name="gender${i}"]`).value);
            param.append('ngay' + i, document.querySelector(`input[name="ngay${i}"]`).value);
            param.append('thang' + i, document.querySelector(`input[name="thang${i}"]`).value);
            param.append('nam' + i, document.querySelector(`input[name="nam${i}"]`).value);
        }

        fetch('updateCustomer', {
            method: 'POST',
            body: param
        })
            .then(response => response.text())
            .then(data => {
                console.log(data); // Xử lý phản hồi từ server
                // Có thể thực hiện hành động sau khi submit thành công
                window.location.reload();
            })
            .catch(error => {
                console.error('Lỗi:', error);
            });
    }

</script>
</body>
</html>
