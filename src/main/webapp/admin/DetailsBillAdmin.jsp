<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.bean.Bill" %>
<%@ page import="vn.edu.hcmuaf.bean.Booking" %>
<%@ page import="vn.edu.hcmuaf.DAO.BookingDAO" %>
<%@ page import="vn.edu.hcmuaf.bean.Customer" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        .home-content .manager-product {
            margin-top: 0;
            margin-left: 252px;
            width: 82%;
            background: #fff;
            padding: 20px 30px;
            border-radius: 12px;
            box-shadow: 0 5px 10px rgb(0 0 0 / 10%);
        }
        th{
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
            outline: none; /* Xóa đi đường viền màu xanh xung quanh input khi focus */
        }
    </style>
</head>
<%
    Bill bill = (Bill) request.getAttribute("bill");
    String err = (String) request.getAttribute("error");
    Booking booking = BookingDAO.getBookingbyId(bill.getBookingId());
    ArrayList<Customer> customers = (ArrayList<Customer>) request.getAttribute("customers");
%>
<body>
<%@include file="header.jsp" %>
<section class="home-section">
    <div class="home-content">
        <% if (err != null && !err.isEmpty()) { %>
        <div style="color: red"><%= err %></div>
        <% } %>
        <div class="manager-product">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Thuộc tính</th>
                    <th scope="col">Giá trị</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">Mã hóa đơn</th>
                    <td><input type="text" value="<%=bill.getId()%>" readonly></td>
                    <td></td>
                </tr>
                <tr>
                    <th scope="row">Mã đặt hàng</th>
                    <td><input type="text" value="<%=bill.getBookingId()%>" readonly></td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Mã tài khoản</th>
                    <td><input type="text" value="<%=booking.getUserId()%>" readonly></td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Phương thức thanh toán</th>
                    <td><input type="text" value="<%=bill.getPaymentMethod()%>" readonly></td>
                    <td><button onclick="enableInput()"><i class="fa-solid fa-pen" style="color: #FFD43B;"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-check"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-xmark"></i></button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Tổng tiền</th>
                    <td><input type="text" value="<%=bill.getToltalPrice()%>" readonly></td>
                    <td><button onclick="enableInput()"><i class="fa-solid fa-pen" style="color: #FFD43B;"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-check"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-xmark"></i></button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Trạng thái hóa đơn</th>
                    <td><input type="text" value="<%=bill.getStatus()%>" readonly></td>
                    <td><button onclick="enableInput()"><i class="fa-solid fa-pen" style="color: #FFD43B;"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-check"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-xmark"></i></button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Ngày đặt Tour</th>
                    <td><input type="text" value="<%=booking.getDate()%>" readonly></td>
                    <td><button onclick="enableInput()"><i class="fa-solid fa-pen" style="color: #FFD43B;"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-check"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-xmark"></i></button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Ngày bắt đầu</th>
                    <td><input type="text" value="<%=booking.getDateStart()%>" readonly></td>
                    <td><button onclick="enableInput()"><i class="fa-solid fa-pen" style="color: #FFD43B;"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-check"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-xmark"></i></button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Mã Tour</th>
                    <td><input type="text" value="<%=booking.getTourId()%>" readonly></td>
                    <td><button onclick="enableInput()"><i class="fa-solid fa-pen" style="color: #FFD43B;"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-check"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-xmark"></i></button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Số người lớn</th>
                    <td><input type="text" value="<%=booking.getNumAdult()%>" readonly></td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Số trẻ em</th>
                    <td><input type="text" value="<%=booking.getNumChildren()%>" readonly></td>
                    <td><button onclick="enableInput()"><i class="fa-solid fa-pen" style="color: #FFD43B;"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-check"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-xmark"></i></button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Tên người đặt hàng</th>
                    <td><input type="text" value="<%=booking.getName()%>" readonly></td>
                    <td><button onclick="enableInput()"><i class="fa-solid fa-pen" style="color: #FFD43B;"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-check"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-xmark"></i></button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Số điện thoại</th>
                    <td><input type="text" value="<%=booking.getPhone()%>" readonly></td>
                    <td><button onclick="enableInput()"><i class="fa-solid fa-pen" style="color: #FFD43B;"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-check"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-xmark"></i></button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">email</th>
                    <td><input type="text" value="<%=booking.getEmail()%>" readonly></td>
                    <td><button onclick="enableInput()"><i class="fa-solid fa-pen" style="color: #FFD43B;"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-check"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-xmark"></i></button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Địa chỉ</th>
                    <td><input type="text" value="<%=booking.getAddress()%>" readonly></td>
                    <td><button onclick="enableInput()"><i class="fa-solid fa-pen" style="color: #FFD43B;"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-check"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-xmark"></i></button>
                    </td>
                </tr>
                <tr>
                    <th scope="row">Ghi chú</th>
                    <td><input type="text" value="<%=bill.getNoteBill()%>" readonly></td>
                    <td><button onclick="enableInput()"><i class="fa-solid fa-pen" style="color: #FFD43B;"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-check"></i></button>
                        <button onclick="enableInput()"><i class="fa-solid fa-circle-xmark"></i></button>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</section>
<hr>

<section class="home-section" style="margin: 50px;padding-left: 225px; width: 90%">
    <hr>
    <div>Danh sách khách hàng</div>
    <div class="home-content">
        <table id="table1" class="display" style="width:100%">
            <thead>
            <tr>
                <th>Mã khách hàng</th>
                <th>Tên</th>
                <th>Giới tính</th>
                <th>Ngày Sinh</th>
                <th>Mã hóa đơn</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <%for (Customer customer : customers){%>
            <tr id="<%=customer.getId()%>">
                <td><%=customer.getId()%></td>
                <td><%=customer.getName()%></td>
                <td><%=customer.getMale()%></td>
                <td><%=customer.getDateOfBirth()%></td>
                <td><%=customer.getIdBill()%></td>
                <td>$320,800</td>
            </tr>
            <%}%>
            </tbody>
            <tfoot>
            <tr>
                <th>Mã khách hàng</th>
                <th>Tên</th>
                <th>Giới tính</th>
                <th>Ngày Sinh</th>
                <th>Mã hóa đơn</th>
                <th></th>
            </tr>
            </tfoot>
        </table>
    </div>
</section>

<script>
    $(document).ready(function () {
        $('#table1').DataTable();
    });

    function remove(id) {
        $.ajax({
            url: "RemoveLogAdmin",
            type: "get",
            data: {
                idU: id
            },
            success: function () {
                $("tr").remove("#" + id)
            }
        })
    }

    function countChecked() {
        var count = $('.checkdelete:checked').length;
        $('#countResult').text('Số lượng checkbox được chọn: ' + count);
        var btnxoa = document.getElementById("btnxoa");
        btnxoa.innerText = 'Xóa ' + count;
        btnxoa.style.display = count > 0 ? 'block' : 'none';
    }

    function removeSelected() {
        var selectedIds = [];
        $('.checkdelete:checked').each(function () {
            selectedIds.push($(this).data('id'));
        });
        console.log('Các ID được chọn:', selectedIds);

        var data = new URLSearchParams();
        data.append('idDelete', selectedIds)

        fetch('/Do_An_Web/RemoveLog', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded' // Đảm bảo đúng kiểu dữ liệu được gửi đi
            },
            body: 'idDelete=' + encodeURIComponent(JSON.stringify(selectedIds)) // Chuyển mảng thành chuỗi JSON
        })
            .then(response => {
                if (response.ok) {
                    // Xóa các dòng đã chọn trên giao diện
                    selectedIds.forEach(id => {
                        var table = $('#table1').DataTable();
                        var row = table.row('#' + id);
                        row.remove().draw();
                        var btnxoa = document.getElementById("btnxoa");
                        btnxoa.style.display = 'none';
                    });
                }
            })
            .catch(err => {
                console.log(err)
            });
    }
</script>
</body>
</html>
