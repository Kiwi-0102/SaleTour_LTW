<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.bean.Log" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        .home-content .manager-product {
            margin-top: 0;
            margin-left: 252px;
            width: 82%;
            background: #fff;
            padding: 20px 30px;
            /* margin: 10px 20px; */
            border-radius: 12px;
            box-shadow: 0 5px 10px rgb(0 0 0 / 10%);

            .dt-orderable-asc.dt-orderable-desc{
                align-content: center;
                text-align: center;
            }
        }
    </style>
</head>
<%
    Log log = (Log) request.getAttribute("log");
    String err = (String) request.getAttribute("error");
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
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">ID</th>
                    <td><%=log.getId()%></td>
                </tr>
                <tr style="<%=log.getLevel() == 0 ? "color: black": log.getLevel() == 1 ? "background-color: #99FF66; font-weight: bold": log.getLevel() == 2 ? "background-color: #33CCFF; font-weight: bold":"background-color: #CC3333 ; font-weight: bold"%>" id="<%=log.getId()%>">
                    <th scope="row">Level</th>
                    <td><%=log.getLevel() == 0 ? "INFOR": log.getLevel() == 1 ? "ALERT" :  log.getLevel() == 3 ? "WARNING":"DANGER"  %></td>
                </tr>
                <tr>
                    <th scope="row">Src</th>
                    <td><%=log.getSrc()%></td>
                </tr>
                <tr>
                    <th scope="row">UserID</th>
                    <td><%=log.getId_user()%></td>
                </tr>
                <tr>
                    <th scope="row">IpAddress</th>
                    <td><%=log.getIp_address()%></td>
                </tr>
                <tr>
                    <th scope="row">Content</th>
                    <td><%=log.getContent()%></td>
                </tr>
                <tr>
                    <th scope="row">CreateAt</th>
                    <td><%=log.getCreate_at()%></td>
                </tr>
                <tr>
                    <th scope="row">BeforeValue</th>
                    <td><%=log.getBeforeValue()%></td>
                </tr>
                <tr>
                    <th scope="row">CurrentValue</th>
                    <td><%=log.getCurrentValue()%></td>
                </tr>
                <tr>
                    <th scope="row">Status</th>
                    <td><%=log.getStatus()%></td>
                </tr>
                </tbody>
            </table>
                </div>
            </div>
        </div>
    </div>
</section>
<%--<script src="bootstrap/js/jquery.min.js"></script>--%>
<%--<script src="${pageContext.request.contextPath}/AdminWeb/js/jquery.dataTables.js"></script>--%>
<%--<script type="text/javascript" charset="utf8" src="bootstrap/js/bootstrap.bundle.min.js"></script>--%>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>--%>
<%--<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>--%>
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
            }
        )
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
        $('.checkdelete:checked').each(function() {
            selectedIds.push($(this).data('id'));
        });
        console.log('Các ID được chọn:', selectedIds);

        var data = new URLSearchParams();
        data.append('idDelete',selectedIds)

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

        .catch(err =>{
            console.log(err)
        });
    }
</script>
</body>
</html>
