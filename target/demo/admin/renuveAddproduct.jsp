<%@ page import="java.util.ArrayList" %>
<%@ page import="static vn.edu.hcmuaf.DAO.BookingDAO.getBookingbyId" %>
<%@ page import="static vn.edu.hcmuaf.serice.Const.daystar" %>
<%@ page import="vn.edu.hcmuaf.serice.Const" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="vn.edu.hcmuaf.bean.*" %>
<%@ page import="vn.edu.hcmuaf.bean.Log" %>
<%@ page import="static vn.edu.hcmuaf.Controller.renuveAddproduct.extractPrice" %>
<%@ page import="static vn.edu.hcmuaf.Controller.renuveAddproduct.getQuantity" %>
<%@ page import="static vn.edu.hcmuaf.Controller.renuveAddproduct.*" %>
<%@ page import="static vn.edu.hcmuaf.DAO.LogDAO.extractStartTime" %>

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
            background-color: #c21e1e;
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
        .input-value .span{
            width: 220px;
        }
        .input-value label{
            margin: 0 5px;
            width: 58px;
        }
        .input-value select{
            border-radius: 5px;
            padding: 0 5px;
            margin: -5px 10px 0 0;
        }
        .input-value button{
            background: #00d8d5;
            color: white;
            border-radius: 5px;
            margin: -5px 10px 0;
            padding: 0 5px;
        }
        .input-value form{
            margin: 10px 0;
        }
        .blue-box {
            background-color: #8feeff;
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
    int totolSlot = (int) request.getAttribute("totolSlot");
    ArrayList<Log> tours = (ArrayList<Log>) request.getAttribute("listLog");
    int currentYear = java.util.Calendar.getInstance().get(java.util.Calendar.YEAR);
    DecimalFormat df1 = new DecimalFormat("#,### VNĐ");
%>
<%@include file="header.jsp" %>
<section class="home-section">
    <div class="input-value">
        <form action="${pageContext.request.contextPath}/admin/renuveAddproduct" method="get" style="display: flex">
            <input name="type" value="year" style="display: none">
            <div class="span">Thống kê theo năm </div>

            <label for="year">Năm:</label>
            <select  name="year">
                <%
                    for (int i = currentYear; i >= 1900; i--) {
                %>
                <option value="<%= i %>"><%= i %></option>
                <% } %>
            </select>

            <button type="submit">Gửi</button>
        </form>
        <form action="${pageContext.request.contextPath}/admin/renuveAddproduct" method="get" style="display: flex">
            <input name="type" value="month" style="display: none">
            <div class="span">Thống kê theo tháng </div>
            <label for="month">Tháng:</label>
            <select name="month">
                <% for (int i = 1; i <= 12; i++) { %>
                <option value="<%= i %>"><%= i %></option>
                <% } %>
            </select>

            <label for="year">Năm:</label>
            <select  name="year">
                <%
                    for (int i = currentYear; i >= 1900; i--) {
                %>
                <option value="<%= i %>"><%= i %></option>
                <% } %>
            </select>

            <button type="submit">Gửi</button>
        </form>
        <form action="${pageContext.request.contextPath}/admin/renuveAddproduct" method="get" style="display: flex">
            <input name="type" value="day" style="display: none">
            <div class="span">Thống kê theo ngày </div>
            <label for="day">Ngày:</label>
            <select id="day" name="day">
                <% for (int i = 1; i <= 31; i++) { %>
                <option value="<%= i %>"><%= i %></option>
                <% } %>
            </select>

            <label for="month">Tháng:</label>
            <select id="month" name="month">
                <% for (int i = 1; i <= 12; i++) { %>
                <option value="<%= i %>"><%= i %></option>
                <% } %>
            </select>

            <label for="year">Năm:</label>
            <select id="year" name="year">
                <%
                    for (int i = currentYear; i >= 1900; i--) {
                %>
                <option value="<%= i %>"><%= i %></option>
                <% } %>
            </select>

            <button type="submit">Gửi</button>
        </form>
    </div>
    <div class="home-content">
        <div class="manager-checkout" style="width: 98%">
            <div class="title">Thống kê số vé</div>

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
                    <div class="text invalid" style="margin-left: 15px" id="textinvalidsdss">Tổng số vé: <%=totolSlot%>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tab row element-button">
                        <button class="tablinks col-sm-2" id="defaultOpen" onclick="openCity(event, 'tab1')">Các sản phẩm được thống kê
                        </button>
                    </div>
                    <!-- Chờ xác nhận -->
                    <div id="tab1" class="tabcontent">
                        <table id="table-id-1" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">Mã</th>
                                <th scope="col">Mã Tour</th>
                                <th scope="col">Giá</th>
                                <th scope="col">Số lượng vé</th>
                                <th scope="col">Ngày nhập</th>
                                <th scope="col">Ngày bắt đầu</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%for (Log bill : tours) {%>
                            <tr id="<%=bill.getId()%>">
                                <th scope="row"><%=bill.getId()%>
                                </th>
                                <td><%=extractId(bill.getCurrentValue())%>
                                </td>
                                <td><%=extractPrice(bill.getCurrentValue())%>
                                </td>
                                <td>
                                    <%=getQuantity(bill.getCurrentValue())%>
                                </td>
                                <td><%=bill.getCreate_at()%></td>
                                <td><%=extractStartDate(bill.getCurrentValue())%>
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
