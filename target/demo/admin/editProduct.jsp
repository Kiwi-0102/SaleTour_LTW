<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.DAO.TourDao" %>
<%@ page import="vn.edu.hcmuaf.bean.Tour" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>

<head>
    <title>Quản lí sản phẩm</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <link rel="shortcut icon" type="image/icon" href="../assets/logo/favicon.png"/>
    <!-- bootstrap-css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/admin.css">
    <!-- //bootstrap-css -->
    <!-- Custom CSS -->
    <link href="css/style.css" rel='stylesheet' type='text/css'/>
    <link href="css/style-responsive.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/monthly.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css"
          integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.js"></script>
    <script src="js/jquery2.0.3.min.js"></script>
    <script src="js/raphael-min.js"></script>
    <script src="js/morris.js"></script>
    <style>
        .market-updates {
            display: none;
            margin: 1.5em 0;
        }
    </style>
</head>
<%
    Tour t = (Tour) request.getAttribute("tour");
    String status = (String) request.getAttribute("status");
%>
<body>

<section id="container">
    <!-- main-menu Start -->
    <%@include file="header.jsp" %>
    <!-- main-menu End -->

    <%if(status!=null){%>
    <h4 class="modal-title"><%=status%></h4>
    <%}%>
    <!--main content start-->
    <div id="addEmployeeModal">
        <div class="form-add" style="margin-left: 18%;width: 80%">
            <div class="modal-content">
                <form id="addTourForm" method="post" action="./editTourAdmin">
                    <div class="modal-header">
                        <h4 class="modal-title">Edit Tour --- ID <%=t.getId()%></h4>
                        <input name="id" type="text" value="<%=t.getId()%>" class="form-control" style="display: none">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Name</label>
                            <input name="name" type="text" value="<%=t.getName()%>" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Region</label>
                            <input name="region" type="text" value="<%=t.getRegion()%>" class="form-control" required>
                        </div>
<%--                        <div class="form-group">--%>
<%--                            <label>Image</label>--%>
<%--                            <input name="image" value="<%=t.getImage()%>" type="file" class="form-control" accept="image/*" required>--%>
<%--                        </div>--%>
                        <div class="form-group">
                            <label>Price</label>
                            <input name="price" value="<%=t.getPrice()%>" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Number Customer</label>
                            <input name="customer" value="<%=t.getQuantity()%>" id="customer" type="number" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>StartTime</label>
                            <input name="startTime" value="<%=t.getStartTime()%>" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Schedule</label>
                            <input name="schedule" value="<%=t.getSchedule()%>" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea name="description" class="form-control" required><%=t.getDescription()%></textarea>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="submit" class="btn btn-success" value="Edit">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!--main content end-->
</section>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]>
<script language="javascript" type="text/javascript" src="admin/js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->
<!-- //calendar -->
</body>
</html>
