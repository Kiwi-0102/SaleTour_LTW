<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ page import="vn.edu.hcmuaf.DAO.TourDao" %>
<%@ page import="vn.edu.hcmuaf.bean.Tour" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="vn.edu.hcmuaf.bean.Customer" %>
<%@ page import="vn.edu.hcmuaf.DAO.CustomerDAO" %>

<!DOCTYPE html>
<head>
    <title>Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <!-- bootstrap-css -->
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>
    <link rel="stylesheet" href="admin/css/bootstrap.min.css" >
    <link rel="stylesheet" href="admin/css/admin.css">
    <!-- //bootstrap-css -->
    <!-- Custom CSS -->
    <link href="admin/css/style.css" rel='stylesheet' type='text/css' />
    <link href="admin/css/style-responsive.css" rel="stylesheet"/>
    <!-- font CSS -->
    <!--<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>-->
    <!-- font-awesome icons-->
    <!--<link rel="stylesheet" href="admin/css/font.css" type="text/css"/>-->
    <!--<link href="admin/css/font-awesome.css" rel="stylesheet">-->
    <!--<link rel="stylesheet" href="admin/css/morris.css" type="text/css"/>-->
    <!-- calendar -->
    <link rel="stylesheet" href="admin/css/monthly.css"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css" integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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

    <script src="admin/js/jquery2.0.3.min.js"></script>
    <script src="admin/js/raphael-min.js"></script>
    <script src="admin/js/morris.js"></script>

</head>
<%
    TourDao td = new TourDao();
    int sizenotour = td.findAllTourbyStatus("none").size();
    long loinhuan = td.doanhthutheotrutunay();
    DecimalFormat dfa = new DecimalFormat("#,### VNĐ");
    CustomerDAO customerDAO = new CustomerDAO();
%>
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

        <div class="top-nav clearfix">
            <!--search & user info start-->
            <ul class="nav pull-right top-menu">

                <!-- user login dropdown start-->
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <img alt="" src="admin/images/3.png">
                        <span class="username">admin</span>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu extended logout">

                        <li><a href="/demo/login.jsp"><i class="fa fa-key"></i> Log Out</a></li>
                    </ul>
                </li>
                <!-- user login dropdown end -->

            </ul>
            <!--search & user info end-->
        </div>
    </header>
    <!--header end-->
    <!--sidebar start-->
    <aside>
        <div id="sidebar" class="nav-collapse">
            <!-- sidebar menu start-->
            <div class="leftside-navigation">
                <ul class="sidebar-menu" id="nav-accordion">
                    <li>
                        <a  href="${pageContext.request.contextPath}/admin/admin.jsp">
                            <i class="fa fa-list-alt"></i>
                            <span>Home</span>
                        </a>
                    </li>
                    <li>
                        <a  href="${pageContext.request.contextPath}/admin/managerProduct">
                            <i class="fa fa-list-alt"></i>
                            <span>Quản lí sản phẩm</span>
                        </a>
                    </li>

                    <li>
                        <a href="${pageContext.request.contextPath}/admin/managerOrder">
                            <i class="fa fa-book"></i>
                            <span>Quản lí đơn hàng</span>
                        </a>

                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/admin/managerUser">
                            <i class="fa fa-user"></i>
                            <span>Quản lí người dùng</span>
                        </a>
                    </li>

                    <li class="sub-menu">
                        <a href="${pageContext.request.contextPath}/admin/revenue">
                            <i class="fa fa-tasks"></i>
                            <span>Thống Kê Số Liệu</span>
                        </a>

                    </li>


                    </li>

                    <li class="sub-menu">
                        <a href="${pageContext.request.contextPath}/admin/manageContact">
                            <i class="fa fa-comment"></i>
                            <span>Quản lý đánh giá và hỗ trợ</span>
                        </a>

                    </li>
                    <li class="sub-menu">
                        <a href="${pageContext.request.contextPath}/admin/manageLogs">
                            <i class="fa-solid fa-note-sticky"></i>
                            <span>Quản lý Log</span>
                        </a>

                    </li>
                    <li class="sub-menu">
                        <a href="${pageContext.request.contextPath}/admin/managePermiss">
                            <i class="fa-solid fa-note-sticky"></i>
                            <span>Quản lý quyền tài khoản</span>
                        </a>

                    </li>
                    <li>
                        <a href="/Do_An_Web/index.jsp">
                            <i class="fa fa-home"></i>
                            <span>Trang chủ</span>
                        </a>
                    </li>
                </ul>            </div>
            <!-- sidebar menu end-->
        </div>
    </aside>
    <!--sidebar end-->
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <!-- //market-->
            <div class="market-updates">
                <div class="col-md-3 market-update-gd">
                    <div class="market-update-block clr-block-2">
                        <div class="col-md-4 market-update-right">
                            <i class="fa fa-eye"> </i>
                        </div>
                        <div class="col-md-8 market-update-left">
                            <h4>Sản phẩm đã ẩn </h4>
                            <h3><%=sizenotour%></h3>
                            <a style="cursor: pointer" href="${pageContext.request.contextPath}/admin/outofstock">Xem chi tiết thống kê sản phẩm!</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="col-md-3 market-update-gd">
                    <div class="market-update-block clr-block-1">
                        <div class="col-md-4 market-update-right">
                            <i class="fa fa-users" ></i>
                        </div>
                        <div class="col-md-8 market-update-left">
                            <h4>Khách hàng</h4>
                            <h3><%=customerDAO.getAllCustomers().size()%> khách hàng</h3>
                            <a href="${pageContext.request.contextPath}/admin/customer.jsp">Xem chi tiết !</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="col-md-3 market-update-gd">
                    <div class="market-update-block clr-block-3">
                        <div class="col-md-4 market-update-right">
                            <i class="fa fa-usd"></i>
                        </div>
                        <div class="col-md-8 market-update-left">
                            <h3>Lợi nhuận</h3>
                            <h4><%=dfa.format(loinhuan)%></h4>
                            <a style="cursor: pointer" href="${pageContext.request.contextPath}/admin/statictical?type=all">Xem chi tiết thống kê lợi nhuận!</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="col-md-3 market-update-gd">
                    <div class="market-update-block clr-block-4">
                        <div class="col-md-4 market-update-right">
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        </div>
                        <div class="col-md-8 market-update-left">
                            <h4>Số vé còn lại</h4>
                            <h3>Tổng số vé: <%=TourDao.toltalConlai(TourDao.getDisplayTours())%></h3>
                            <a style="cursor: pointer" href="${pageContext.request.contextPath}/admin/renuveSlot?type=now">Xem chi tiết!</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>


        </section>





    </section>
    <!--main content end-->
</section>



</body>
</html>
