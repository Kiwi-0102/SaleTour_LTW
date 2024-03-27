<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>

<head>
    <title>Thống kê và báo cáo</title>
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

        <h3 style="margin-left: 50px">Thống kê số liệu</h3>

        <div  class="agileits-w3layouts-stats">

            <div class="col-md-4 stats-info widget">
                <div class="stats-info-agileits">
                    <div class="stats-title">
                        <h4 class="title">Lợi Nhuận</h4>
                    </div>
                    <div class="stats-body">
                        <ul class="list-unstyled">
                            <li>Miền Bắc <span class="pull-right">16%</span>
                                <div class="progress progress-striped active progress-right">
                                    <div class="bar green" style="width:16%;"></div>
                                </div>
                            </li>
                            <li>Miền Nam <span class="pull-right">25%</span>
                                <div class="progress progress-striped active progress-right">
                                    <div class="bar yellow" style="width:25%;"></div>
                                </div>
                            </li>
                            <li>Miền Trung <span class="pull-right">33%</span>
                                <div class="progress progress-striped active progress-right">
                                    <div class="bar red" style="width:33%;"></div>
                                </div>
                            </li>
                            <li>Miền Núi <span class="pull-right">10%</span>
                                <div class="progress progress-striped active progress-right">
                                    <div class="bar blue" style="width:10%;"></div>
                                </div>
                            </li>
                            <li>Các Vùng Đảo <span class="pull-right">7%</span>
                                <div class="progress progress-striped active progress-right">
                                    <div class="bar light-blue" style="width:7%;"></div>
                                </div>
                            </li>
                            <li class="last">Khác <span class="pull-right">9%</span>
                                <div class="progress progress-striped active progress-right">
                                    <div class="bar orange" style="width:9%;"></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-8 stats-info stats-last widget-shadow">

                <div class="stats-last-agile">
                    <div>THỐNG KÊ DOANH THU</div>
                    <table class="table stats-table ">
                        <thead>
                        <tr>
                            <th>STT</th>
                            <th>KHU VỰC</th>
                            <th>TRẠNG THÁI</th>
                            <th>LỢI NHUẬN (so với năm ngoái)</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Miền Bắc</td>
                            <td><span class="label label-success">Tăng trưởng nhanh</span></td>
                            <td><h5>25% <i class="fa fa-level-up"></i></h5></td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Miền Trung</td>
                            <td><span class="label label-warning">Tăng trưởng chống mặt</span></td>
                            <td><h5>55% <i class="fa fa-level-up"></i></h5></td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Miền Nam</td>
                            <td><span class="label label-danger">Giảm</span></td>
                            <td><h5 class="down">10% <i class="fa fa-level-down"></i></h5></td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Miền Núi</td>
                            <td><span class="label label-info">Bình thường</span></td>
                            <td><h5>5% <i class="fa fa-level-up"></i></h5></td>
                        </tr>
                        <tr>
                            <th scope="row">5</th>
                            <td>Các Vùng Đảo</td>
                            <td><span class="label label-danger">Giảm</span></td>
                            <td><h5 class="down">15% <i class="fa fa-level-down"></i></h5></td>
                        </tr>
                        <tr>
                            <th scope="row">6</th>
                            <td>Khác</td>
                            <td><span class="label label-warning">Tốt</span></td>
                            <td><h5>10% <i class="fa fa-level-up"></i></h5></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>



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
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->


<!-- //calendar -->
</body>
</html>
