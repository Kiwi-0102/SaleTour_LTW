<%@ page import="vn.edu.hcmuaf.bean.Feedback" %>
<%@ page import="java.util.List" %>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>

<head>
    <title>Quản lý liên hệ và hỗ trợ</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <link rel="shortcut icon" type="image/icon" href="../assets/logo/favicon.png"/>
    <!-- bootstrap-css -->
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <link rel="stylesheet" href="css/admin.css">
    <!-- //bootstrap-css -->
    <!-- Custom CSS -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href="css/style-responsive.css" rel="stylesheet"/>
    <!-- font CSS -->
    <!--<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>-->
    <!-- font-awesome icons-->
    <!--<link rel="stylesheet" href="admin/css/font.css" type="text/css"/>-->
    <!--<link href="admin/css/font-awesome.css" rel="stylesheet">-->
    <!--<link rel="stylesheet" href="admin/css/morris.css" type="text/css"/>-->
    <!-- calendar -->
    <link rel="stylesheet" href="css/monthly.css"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css" integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- //calendar -->
    <!-- //font-awesome icons -->
    <!--    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>-->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
    />
    <!--     // Google Fonts-->
    <!--    <link-->
    <!--            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"-->
    <!--            rel="stylesheet"-->
    <!--    />-->
    <!--     MDB-->
    <!--    <link-->
    <!--            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css"-->
    <!--            rel="stylesheet"-->
    <!--    />-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.js"></script>
    <!--  end  swal2-->
    <script src="js/jquery2.0.3.min.js"></script>
    <script src="js/raphael-min.js"></script>
    <script src="js/morris.js"></script>

</head>
<body>
<section id="container">
    <!--header start-->
    <header class="header fixed-top clearfix">
        <!--logo start-->
        <div class="brand">
            <a href="admin.jsp" class="logo">
                ADMIN
            </a>
            <div class="sidebar-toggle-box">
                <div class="fa fa-bars"></div>
            </div>
        </div>
        <!--logo end-->


    </header>
    <!--header end-->
    <!-- main-menu Start -->
    <%@include file="header.jsp" %>
    <!-- main-menu End -->
    <!--main content start-->
    <section id="main-content">


        <section id="reviewCustomer"   >
            <div class="container">
                <h3 style="margin-left: -50px">Quản lý đánh giá</h3>
                <table class="table">
                    <thead>
                    <tr>
                        <th>FeedbackID</th>
                        <th>UserID</th>
                        <th>Content</th>
                        <th>Date</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        List<Feedback> listf = (List<Feedback>) request.getAttribute("listFFF");
                        if (listf != null && !listf.isEmpty()) {
                            for (Feedback f : listf) {
                    %>
                    <tr>
                        <td><%=f.getId()%></td>
                        <td><%=f.getUserId()%></td>
                        <td><%=f.getText()%></td>
                        <td>
                            <%=f.getDate()%>
                        </td>
                            <%
                            }
                        } else {
                        %>
                    <tr>
                        <td colspan="4">No Feedbacks available.</td>
                    </tr>
                    <%
                        }
                    %>
                    </tr>





                    </tbody>
                </table>
            </div>
        </section>

        </div>
        <!-- footer -->
        <div class="footer">
            <div class="wthree-copyright">
                <p>&copy; 2023-2024 <a href="https://github.com/MinhThinhrine/Do_An_Web">Nhóm 18</a>. All Right Reserved.</p>
            </div>
        </div>
        <!-- / footer -->
    </section>
    <!--main content end-->
</section>
<script>


</script>


<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="admin/js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->
<script>

    function toanCMT() {
        Swal.fire({
            title: 'Nội dung',
            text: 'Hãy review chi tiết cho tôi về những Tour du lịch vùng hải đảo,tôi đang có nhu cầu về các khu vực du lịch ở miền Trung để gia đình tôi có thể sắp xếp và chuẩn bị thật kĩ cho kỳ nghĩ lễ vào dịp tết Nguyên Đán 2024. ',


            confirmButtonText: 'Đóng'
        });
    }
    function linhCMT() {
        Swal.fire({
            title: 'Nội dung',
            text: 'Hãy review chi tiết cho tôi về những Tour du lịch hấp dẫn nhất của bạn,tôi đang có nhu cầu về các khu vực du lịch ở miền Trung để gia đình tôi có thể sắp xếp và chuẩn bị thật kĩ cho kỳ nghĩ lễ vào dịp tết Nguyên Đán 2024. ',


            confirmButtonText: 'Đóng'
        });
    }
    function thinhCMT() {
        Swal.fire({
            title: 'Nội dung',
            text: 'Hãy review chi tiết cho tôi về những Tour du lịch miền Trung,tôi đang có nhu cầu về các khu vực du lịch ở miền Trung để gia đình tôi có thể sắp xếp và chuẩn bị thật kĩ cho kỳ nghĩ lễ vào dịp tết Nguyên Đán 2024. ',

            confirmButtonText: 'Đóng'
        });
    }
    function thucCMT() {
        Swal.fire({
            title: 'Nội dung',
            text: 'Hãy review chi tiết cho tôi về những Tour du lịch miền Bắc,tôi đang có nhu cầu về các khu vực du lịch ở miền Trung để gia đình tôi có thể sắp xếp và chuẩn bị thật kĩ cho kỳ nghĩ lễ vào dịp tết Nguyên Đán 2024. ',


            confirmButtonText: 'Đóng'
        });
    }
    function quangvuCMT() {
        Swal.fire({
            title: 'Nội dung',
            text: 'Hãy review chi tiết cho tôi về những Tour du lịch miền Nam,tôi đang có nhu cầu về các khu vực du lịch ở miền Trung để gia đình tôi có thể sắp xếp và chuẩn bị thật kĩ cho kỳ nghĩ lễ vào dịp tết Nguyên Đán 2024. ',


            confirmButtonText: 'Đóng'
        });
    }
    function duyvuCMT() {
        Swal.fire({
            title: 'Nội dung',
            text: 'Hãy review chi tiết cho tôi về những Tour du lịch miền núi,tôi đang có nhu cầu về các khu vực du lịch ở miền Trung để gia đình tôi có thể sắp xếp và chuẩn bị thật kĩ cho kỳ nghĩ lễ vào dịp tết Nguyên Đán 2024. ',


            confirmButtonText: 'Đóng'
        });
    }
        function deleteCMT() {
            Swal.fire({
                title: 'Thông báo',
                text: 'Đã xóa thành công',
                icon: 'success',
                confirmButtonText: 'Đóng' ,
                customClass: {
                    popup: 'custom-swal'
                }
            });
        }
</script>
<!-- calendar -->


<!-- //calendar -->
</body>
</html>
