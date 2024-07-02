<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.bean.Bill" %>
<%@ page import="vn.edu.hcmuaf.bean.Booking" %>
<%@ page import="vn.edu.hcmuaf.DAO.BookingDAO" %>
<%@ page import="vn.edu.hcmuaf.bean.Customer" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="vn.edu.hcmuaf.bean.HistoryBills" %>
<%@ page import="vn.edu.hcmuaf.DAO.BillDAO" %>
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

    </style>
</head>
<%
    Bill bill = (Bill) request.getAttribute("bill");
    String err = (String) request.getAttribute("error");
    Booking booking = BookingDAO.getBookingbyId(bill.getBookingId());
    ArrayList<Customer> customers = (ArrayList<Customer>) request.getAttribute("customers");
    DecimalFormat df = new DecimalFormat("#,## VNĐ");

    ArrayList<HistoryBills> historyBills = BillDAO.getHistoryBillsByBillId(bill.getId());
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
                        <h5 class="fw-bold tieude">DANH SÁCH HÀNH KHÁCH</h5>
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
</section>
<hr>

<section class="home-section" style="margin: 50px; padding-left: 225px; width: 90%">
    <hr>
    <div>Danh sách khách hàng</div>
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
            <% for (HistoryBills bills  : historyBills) { %>
            <tr id="<%= bills.getId() %>">
                <td style="text-align: center"><%= bills.getId() %></td>
                <td style="text-align: center"><%= bills.getTitle()%></td>
                <td style="text-align: center"><%= bills.getChangeDate()%></td>
                <td style="text-align: center"><%= bills.getBeforeValue() %></td>
                <td style="text-align: center"><%= bills.getCurrentValue()%></td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>
</section>


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

</body>
</html>
