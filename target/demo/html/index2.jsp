<%--
  Created by IntelliJ IDEA.
  User: FPT - ADMIN
  Date: 28/11/2023
  Time: 12:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- META DATA -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!--font-family-->
    <link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet"/>

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.js"></script>

    <!-- TITLE OF SITE -->
    <title>TourNest</title>

    <!-- favicon img -->
    <link rel="shortcut icon" type="image/icon" href="../assets/logo/favicon.png"/>

    <!--font-awesome.min.css-->

    <link rel="stylesheet" href="../assets/css/font-awesome.min.css">
    <!--animate.css-->
    <link rel="stylesheet" href="../assets/css/animate.css"/>

    <!--hover.css-->
    <link rel="stylesheet" href="../assets/css/hover-min.css">

    <!--datepicker.css-->
    <link rel="stylesheet" href="../assets/css/datepicker.css">

    <!--owl.carousel.css-->
    <link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../assets/css/owl.theme.default.min.css"/>

    <!-- range css-->
    <link rel="stylesheet" href="../assets/css/jquery-ui.min.css"/>

    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css"/>

    <!-- bootsnav -->
    <link rel="stylesheet" href="../assets/css/bootsnav.css"/>

    <!--style.css-->
    <link rel="stylesheet" href="../assets/css/style.css"/>

    <!--responsive.css-->
    <link rel="stylesheet" href="../assets/css/responsive.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade
    your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- main-menu Start -->
<header class="top-area">
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <div class="logo">
                        <a href="index.html">
                            tour<span>Nest</span>
                        </a>
                    </div><!-- /.logo-->
                </div><!-- /.col-->
                <div class="col-sm-10">
                    <div class="main-menu">

                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse"
                                    data-target=".navbar-collapse">
                                <i class="fa fa-bars"></i>
                            </button><!-- / button-->
                        </div><!-- /.navbar-header-->
                        <div class="collapse navbar-collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="smooth-menu"><a href="#home">Trang Chủ</a></li>
                                <li class="smooth-menu"><a href="#spo">Ưu Đãi</a></li>
                                <li class="smooth-menu"><a href="#gallery">Tour Hot</a></li>
                                <li class="smooth-menu"><a href="#pack">Gói Du Lịch</a></li>
                                <li class="smooth-menu"><a href="#blog">Tin Tức</a></li>
                                <li class="smooth-menu"><a href="#feedback">Đánh Giá</a></li>
                                <li class="smooth-menu"><a href="#service">Liên Hệ</a></li>
                                <li>
                                    <button class="book-btn" id="buttonTour" style="margin-top: -2px;"><a
                                            href="login.html">Đặt Tour</a>
                                    </button>
                                </li><!--/.project-btn-->
                                <li id="icon-user" class="smooth-menu">
                                    <i class="fa-regular fa-circle-user" style="color: #ffffff;"></i>
                                    <ul id="service_account">
                                        <li><a id="myInfor" href="infor.html">Thông tin tài khoản</a></li>
                                        <li><a id="myTour" href="shopcart.html">VALI</a></li>
                                        <li><a id="bill" href="bill.html">Bill </a></li>
                                        <li><a id="log_out" href="register.html">Đăng xuất</a></li>
                                    </ul>
                                </li>


                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.main-menu-->
                </div><!-- /.col-->
            </div><!-- /.row -->
            <div class="home-border"></div><!-- /.home-border-->
        </div><!-- /.container-->
    </div><!-- /.header-area -->

</header><!-- /.top-area-->
<!-- main-menu End -->


<!--about-us start -->
<section id="home" class="about-us">
    <div class="container">
        <div class="about-us-content">
            <div class="row">
                <div class="col-sm-12">
                    <div class="single-about-us">
                        <div class="about-us-txt">
                            <h2>
                                Khám phá vẻ đẹp của Việt Nam chúng ta

                            </h2>
                            <div class="about-btn">
                                <button class="about-view">
                                    <a href="#pack" style="width: 200px; padding: 20px;height: 60px;">Khám phá ngay</a>
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.about-us-txt-->
                    </div><!--/.single-about-us-->
                </div><!--/.col-->
                <div class="col-sm-0">
                    <div class="single-about-us">

                    </div><!--/.single-about-us-->
                </div><!--/.col-->
            </div><!--/.row-->
        </div><!--/.about-us-content-->
    </div><!--/.container-->

</section><!--/.about-us-->
<!--about-us end -->

<!--travel-box start-->
<section class="travel-box">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="single-travel-boxes">
                    <div id="desc-tabs" class="desc-tabs">

                        <ul class="nav nav-tabs" role="tablist">

                            <li role="presentation" class="active">
                                <a href="#tours" aria-controls="tours" role="tab" data-toggle="tab">
                                    <i class="fa fa-map-marker"></i>
                                    tours
                                </a>
                            </li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">

                            <div role="tabpanel" class="tab-pane active fade in" id="tours">
                                <div class="tab-para">

                                    <div class="row">
                                        <div class="col-lg-6 col-md-4 col-sm-12">
                                            <div class="single-tab-select-box">

                                                <h2>Điểm đi</h2>

                                                <div class="travel-select-icon">
                                                    <select class="form-control ">
                                                        <option disabled selected value="default">Chọn địa điểm xuất
                                                            phát
                                                        </option>
                                                        <!-- Nam -->
                                                        <option value="tp-ho-chi-minh">Tp Hồ Chí Minh</option>
                                                        <option value="hanoi">Hà Nội</option>
                                                        <option disabled value="nam"><-- Nam --></option>

                                                        <option value="an-giang">An Giang</option>
                                                        <option value="bac-lieu">Bạc Liêu</option>
                                                        <option value="ben-tre">Bến Tre</option>
                                                        <option value="binh-dinh">Bình Định</option>
                                                        <option value="binh-phuoc">Bình Phước</option>
                                                        <option value="binh-thuan">Bình Thuận</option>
                                                        <option value="ca-mau">Cà Mau</option>
                                                        <option value="can-tho">Cần Thơ</option>
                                                        <option value="dong-nai">Đồng Nai</option>
                                                        <option value="dong-thap">Đồng Tháp</option>
                                                        <option value="hau-giang">Hậu Giang</option>
                                                        <option value="kien-giang">Kiên Giang</option>
                                                        <option value="long-an">Long An</option>
                                                        <option value="soc-trang">Sóc Trăng</option>
                                                        <option value="tay-ninh">Tây Ninh</option>
                                                        <option value="tra-vinh">Trà Vinh</option>
                                                        <option value="vinh-long">Vĩnh Long</option>
                                                        <option value="vinh-phuc">Vĩnh Phúc</option>
                                                        <option value="vung-tau">Vũng Tàu</option>
                                                        <!-- Trung -->
                                                        <option disabled value="trung"><-- Trung --></option>

                                                        <option value="da-nang">Đà Nẵng</option>
                                                        <option value="ha-tinh">Hà Tĩnh</option>
                                                        <option value="nghe-an">Nghệ An</option>
                                                        <option value="quang-binh">Quảng Bình</option>
                                                        <option value="quang-nam">Quảng Nam</option>
                                                        <option value="quang-ngai">Quảng Ngãi</option>
                                                        <option value="quang-tri">Quảng Trị</option>
                                                        <option value="thanh-hoa">Thanh Hóa</option>
                                                        <!-- Bắc -->
                                                        <option disabled value="bac"><-- Bắc --></option>

                                                        <option value="bac-giang">Bắc Giang</option>
                                                        <option value="bac-kan">Bắc Kạn</option>
                                                        <option value="cao-bang">Cao Bằng</option>
                                                        <option value="ha-giang">Hà Giang</option>
                                                        <option value="lai-chau">Lai Châu</option>
                                                        <option value="lang-son">Lạng Sơn</option>
                                                        <option value="nam-dinh">Nam Định</option>
                                                        <option value="phu-tho">Phú Thọ</option>
                                                        <option value="quang-ninh">Quảng Ninh</option>
                                                        <option value="thai-binh">Thái Bình</option>
                                                        <option value="thai-nguyen">Thái Nguyên</option>
                                                        <option value="tuyen-quang">Tuyên Quang</option>
                                                        <option value="yen-bai">Yên Bái</option>

                                                    </select><!-- /.select-->
                                                </div><!-- /.travel-select-icon -->
                                                <h2>Điểm đến</h2>
                                                <div class="travel-select-icon">
                                                    <select class="form-control ">
                                                        <option disabled selected value="default">Chọn địa điểm xuất
                                                            phát
                                                        </option>
                                                        <!-- Nam -->
                                                        <option value="tp-ho-chi-minh">Tp Hồ Chí Minh</option>
                                                        <option value="hanoi">Hà Nội</option>
                                                        <option disabled value="nam"><-- Nam --></option>

                                                        <option value="an-giang">An Giang</option>
                                                        <option value="bac-lieu">Bạc Liêu</option>
                                                        <option value="ben-tre">Bến Tre</option>
                                                        <option value="binh-dinh">Bình Định</option>
                                                        <option value="binh-phuoc">Bình Phước</option>
                                                        <option value="binh-thuan">Bình Thuận</option>
                                                        <option value="ca-mau">Cà Mau</option>
                                                        <option value="can-tho">Cần Thơ</option>
                                                        <option value="dong-nai">Đồng Nai</option>
                                                        <option value="dong-thap">Đồng Tháp</option>
                                                        <option value="hau-giang">Hậu Giang</option>
                                                        <option value="kien-giang">Kiên Giang</option>
                                                        <option value="long-an">Long An</option>
                                                        <option value="soc-trang">Sóc Trăng</option>
                                                        <option value="tay-ninh">Tây Ninh</option>
                                                        <option value="tra-vinh">Trà Vinh</option>
                                                        <option value="vinh-long">Vĩnh Long</option>
                                                        <option value="vinh-phuc">Vĩnh Phúc</option>
                                                        <option value="vung-tau">Vũng Tàu</option>
                                                        <!-- Trung -->
                                                        <option disabled value="trung"><-- Trung --></option>

                                                        <option value="da-nang">Đà Nẵng</option>
                                                        <option value="ha-tinh">Hà Tĩnh</option>
                                                        <option value="nghe-an">Nghệ An</option>
                                                        <option value="quang-binh">Quảng Bình</option>
                                                        <option value="quang-nam">Quảng Nam</option>
                                                        <option value="quang-ngai">Quảng Ngãi</option>
                                                        <option value="quang-tri">Quảng Trị</option>
                                                        <option value="thanh-hoa">Thanh Hóa</option>
                                                        <!-- Bắc -->
                                                        <option disabled value="bac"><-- Bắc --></option>

                                                        <option value="bac-giang">Bắc Giang</option>
                                                        <option value="bac-kan">Bắc Kạn</option>
                                                        <option value="cao-bang">Cao Bằng</option>
                                                        <option value="ha-giang">Hà Giang</option>
                                                        <option value="lai-chau">Lai Châu</option>
                                                        <option value="lang-son">Lạng Sơn</option>
                                                        <option value="nam-dinh">Nam Định</option>
                                                        <option value="phu-tho">Phú Thọ</option>
                                                        <option value="quang-ninh">Quảng Ninh</option>
                                                        <option value="thai-binh">Thái Bình</option>
                                                        <option value="thai-nguyen">Thái Nguyên</option>
                                                        <option value="tuyen-quang">Tuyên Quang</option>
                                                        <option value="yen-bai">Yên Bái</option>

                                                    </select><!-- /.select-->
                                                </div><!-- /.travel-select-icon -->

                                            </div><!--/.single-tab-select-box-->
                                        </div><!--/.col-->

                                        <!--												<div class="col-lg-2 col-md-3 col-sm-4">-->
                                        <!--													<div class="single-tab-select-box">-->
                                        <!--														<h2>Ngày Đi</h2>-->
                                        <!--														<div class="travel-check-icon">-->
                                        <!--															<form action="#">-->
                                        <!--																<input type="text" name="check_in" class="form-control" data-toggle="datepicker" placeholder="19/10/2023">-->
                                        <!--															</form>-->
                                        <!--														</div>&lt;!&ndash; /.travel-check-icon &ndash;&gt;-->
                                        <!--													</div>&lt;!&ndash;/.single-tab-select-box&ndash;&gt;-->
                                        <!--												</div>&lt;!&ndash;/.col&ndash;&gt;-->

                                        <!--												<div class="col-lg-2 col-md-3 col-sm-4">-->
                                        <!--													<div class="single-tab-select-box">-->
                                        <!--														<h2>Ngày Về</h2>-->
                                        <!--														<div class="travel-check-icon">-->
                                        <!--															<form action="#">-->
                                        <!--																<input type="text" name="check_out" class="form-control"  data-toggle="datepicker" placeholder="20/10/2023">-->
                                        <!--															</form>-->
                                        <!--														</div>&lt;!&ndash; /.travel-check-icon &ndash;&gt;-->
                                        <!--													</div>&lt;!&ndash;/.single-tab-select-box&ndash;&gt;-->
                                        <!--												</div>&lt;!&ndash;/.col&ndash;&gt;-->

                                        <div class="col-lg-6 col-md-1 col-sm-4">
                                            <div class="single-tab-select-box">
                                                <h2>Số Ngày Đi</h2>
                                                <div class="travel-select-icon">
                                                    <select class="form-control ">
                                                        <option value="default">2 ngày 1 đêm</option><!-- /.option-->
                                                        <option value="3">3 ngày 2 đêm</option><!-- /.option-->
                                                        <option value="4">4 ngày 3 đêm</option><!-- /.option-->
                                                        <option value="5">5 ngày 4 đêm</option><!-- /.option-->
                                                        <option value="6">6 ngày trở lên</option><!-- /.option-->

                                                    </select><!-- /.select-->
                                                </div><!-- /.travel-select-icon -->
                                            </div><!--/.single-tab-select-box-->
                                        </div><!--/.col-->

                                        <!--												<div class="col-lg-2 col-md-1 col-sm-4">-->
                                        <!--													<div class="single-tab-select-box">-->
                                        <!--														<h2>Thành Viên</h2>-->
                                        <!--														<div class="travel-select-icon">-->
                                        <!--															<select class="form-control ">-->

                                        <!--															  	<option value="default">1</option>&lt;!&ndash; /.option&ndash;&gt;-->

                                        <!--															  	<option value="2">2</option>&lt;!&ndash; /.option&ndash;&gt;-->
                                        <!--															  	<option value="2">3 - 5</option>&lt;!&ndash; /.option&ndash;&gt;-->
                                        <!--															  	<option value="2">5 - 7</option>&lt;!&ndash; /.option&ndash;&gt;-->
                                        <!--															  	<option value="2">7 - 10</option>&lt;!&ndash; /.option&ndash;&gt;-->
                                        <!--															  	<option value="4">10 - 12</option>&lt;!&ndash; /.option&ndash;&gt;-->
                                        <!--															  	<option value="8">12 ++</option>&lt;!&ndash; /.option&ndash;&gt;-->

                                        <!--															</select>&lt;!&ndash; /.select&ndash;&gt;-->
                                        <!--														</div>&lt;!&ndash; /.travel-select-icon &ndash;&gt;-->
                                        <!--													</div>&lt;!&ndash;/.single-tab-select-box&ndash;&gt;-->
                                        <!--												</div>&lt;!&ndash;/.col&ndash;&gt;-->

                                    </div><!--/.row-->

                                    <div class="row">
                                        <div class="col-sm-5">
                                            <!--													<div class="travel-budget">-->
                                            <!--														<div class="row">-->
                                            <!--															<div class="col-md-3 col-sm-4">-->
                                            <!--																<h3>Ngân Sách: </h3>-->
                                            <!--															</div>&lt;!&ndash;/.col&ndash;&gt;-->
                                            <!--															<div class="co-md-9 col-sm-8">-->
                                            <!--																<div class="travel-filter">-->
                                            <!--																	<div class="info_widget">-->
                                            <!--																		<div class="price_filter">-->

                                            <!--																			<div id="slider-range"></div>&lt;!&ndash;/.slider-range&ndash;&gt;-->

                                            <!--																			<div class="price_slider_amount">-->
                                            <!--																				<input type="text" id="amount" name="price"  placeholder="Add Your Price" />-->
                                            <!--																			</div>&lt;!&ndash;/.price_slider_amount&ndash;&gt;-->
                                            <!--																		</div>&lt;!&ndash;/.price-filter&ndash;&gt;-->
                                            <!--																	</div>&lt;!&ndash;/.info_widget&ndash;&gt;-->
                                            <!--																</div>&lt;!&ndash;/.travel-filter&ndash;&gt;-->
                                            <!--															</div>&lt;!&ndash;/.col&ndash;&gt;-->
                                            <!--														</div>&lt;!&ndash;/.row&ndash;&gt;-->
                                            <!--													</div>&lt;!&ndash;/.travel-budget&ndash;&gt;-->
                                        </div>
                                        <!--/.col-->
                                        <div class="clo-sm-7">
                                            <div class="about-btn travel-mrt-0 pull-right">

                                                <button id="searchButton" class="about-view travel-btn">
                                                    <a href="catelogy.html"
                                                       style="text-decoration: none; text-transform: uppercase;width: 180px; padding: 20px;height: 60px;">tìm
                                                        kiếm
                                                        <i class="fa-solid fa-magnifying-glass"></i>
                                                    </a>
                                                </button>
                                                <!--/.travel-btn-->
                                            </div><!--/.about-btn-->
                                        </div><!--/.col-->

                                    </div><!--/.row-->

                                </div><!--/.tab-para-->

                            </div><!--/.tabpannel-->
                        </div><!--/.tab content-->
                    </div><!--/.desc-tabs-->
                </div><!--/.single-travel-box-->
            </div><!--/.col-->
        </div><!--/.row-->
    </div><!--/.container-->

</section><!--/.travel-box-->
<!--travel-box end-->
<!--special-offer start-->
<section id="spo" class="special-offer" style="margin-top: 50px">
    <div class="container">
        <div class="special-offer-content">
            <div class="row">
                <div class="col-sm-8">
                    <div class="single-special-offer">
                        <div class="single-special-offer-txt">
                            <h2>Đà Lạt</h2>
                            <div class="packages-review special-offer-review">
                                <p>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half"></i>
                                    <span>1344 review</span>
                                </p>
                            </div><!--/.packages-review-->
                            <div class="packages-para special-offer-para">
                                <p>
											<span>
												<i class="fa-regular fa-calendar"></i> 4 ngày 3 đêm
											</span>
                                    <br>
                                    <br>
                                    <span>
												<i class="fa-solid fa-users"></i> 2 - 3 người
											</span>
                                    <br>
                                    <br>
                                    <span>
												<i class="fa-solid fa-check"></i>  lượt đánh giá 5 sao
											</span>
                                </p>

                                <p>
											<span>
												<i class="fa-solid fa-house"></i> HomeStay 3 star
											</span>
                                    <br>
                                    <br>
                                    <span>
												<i class="fa-solid fa-bus"></i> Xe du lịch khứ hồi
											</span>
                                </p>

                                <p class="offer-para">
                                    Một thành phố mộng mơ,với vẻ đẹp lãng mạn không kém phần mơ mộng.<br>
                                    Hành trình: Đà Lạt - Đồi Chè Cầu Đất - Cafe Mê Linh - Nông Trại Cún Puppy -
                                    Fairytale Land. </p>
                            </div><!--/.packages-para-->
                            <div class="offer-btn-group">
                                <!--/.about-btn-->
                                <div class="about-btn">
                                    <button class="about-view packages-btn">
                                        Đặt Tour
                                    </button>
                                </div><!--/.about-btn-->
                            </div><!--/.offer-btn-group-->
                        </div><!--/.single-special-offer-txt-->
                    </div><!--/.single-special-offer-->
                </div><!--/.col-->
                <div class="col-sm-4">
                    <div class="single-special-offer">
                        <div class="single-special-offer-bg">
                            <img src="../assets/images/offer/offer-shape.png" alt="offer-shape">
                        </div><!--/.single-special-offer-bg-->
                        <div class="single-special-shape-txt">
                            <h3>Ưu đãi đặc biệt</h3>
                            <h4>Giảm giá <br><span>31%</span></h4>
                            <p><span>4,400,000 đ</span>
                                <br>
                                <span style="text-decoration:red line-through">Giá gốc <br> 6,299,000 đ</span></p>
                        </div><!--/.single-special-shape-txt-->
                    </div><!--/.single-special-offer-->
                </div><!--/.col-->
            </div><!--/.row-->
        </div><!--/.special-offer-content-->
    </div><!--/.container-->

</section><!--/.special-offer end-->
<!--special-offer end-->
<!--galley start-->
<section id="gallery" class="gallery">
    <div class="container">
        <div class="gallery-details">
            <div class="gallary-header text-center">
                <h2>
                    Các Tour Hấp Dẫn
                </h2>
                <p>
                    Chúng tôi đề xuất cho bạn các gợi ý dựa trên đánh giá khách hàng và trải nghiệm người dùng.
                </p>
            </div><!--/.gallery-header-->
            <div class="gallery-box">
                <div class="gallery-content">
                    <div class="filtr-container">
                        <div class="row">

                            <div class="col-md-6">
                                <div class="filtr-item" style="height: 310px;width: 555px;">
                                    <img src="../assets/images/item/2.jpg" alt="portfolio image"/>
                                    <div class="item-title">
                                        <a href="detail.html">
                                            Phú Quốc
                                        </a>
                                        <p><span>tours hằng ngày</span><br><span>7 địa điểm</span></p>
                                    </div><!-- /.item-title -->
                                </div><!-- /.filtr-item -->
                            </div><!-- /.col -->

                            <div class="col-md-6">
                                <div class="filtr-item" style="height: 310px;width: 555px;">
                                    <img src="../assets/images/item/193.png" alt="portfolio image"/>
                                    <div class="item-title">
                                        <a href="detail.html">
                                            Sapa
                                        </a>
                                        <p><span>tours hằng ngày</span><br><span>4 địa điểm</span></p>
                                    </div> <!-- /.item-title-->
                                </div><!-- /.filtr-item -->
                            </div><!-- /.col -->

                            <div class="col-md-4">
                                <div class="filtr-item">
                                    <img src="../assets/images/gallary/hoi-an-tren-cao-1%20(1).jpg" alt="portfolio image"/>
                                    <div class="item-title">
                                        <a href="detail.html">
                                            Hội An
                                        </a>
                                        <p>Tour Hàng Ngày </br>
                                            <span>10 Địa Điểm</span></p>
                                    </div><!-- /.item-title -->
                                </div><!-- /.filtr-item -->
                            </div><!-- /.col -->

                            <div class="col-md-4">
                                <div class="filtr-item" style="height: 310px;width: 360px;">
                                    <img src="../assets/images/item/70.jpg" alt="portfolio image"/>
                                    <div class="item-title">
                                        <a href="detail.html" style="width: 215px">
                                            Chợ Nổi Cái Răng
                                        </a>
                                        <p><span>tours hằng ngày</span><br><span>7 địa điểm</span></p>
                                    </div> <!-- /.item-title-->
                                </div><!-- /.filtr-item -->
                            </div><!-- /.col -->

                            <div class="col-md-4">
                                <div class="filtr-item" style="height: 310px;width: 360px;">
                                    <img src="../assets/images/item/204.png" alt="portfolio image"/>
                                    <div class="item-title">
                                        <a href="detail.html">
                                            Hạ Long
                                        </a>
                                        <p><span>tours hằng ngày</span><br><span>12 địa điểm</span></p>
                                    </div> <!-- /.item-title-->
                                </div><!-- /.filtr-item -->
                            </div><!-- /.col -->

                            <div class="col-md-8">
                                <div class="filtr-item" style="height: 310px;width: 750px;">
                                    <img src="../assets/images/item/14.jpg" alt="portfolio image"/>
                                    <div class="item-title">
                                        <a href="detail.html">
                                            Vũng Tàu
                                        </a>
                                        <p><span>tours hằng ngày</span><br><span>6 địa điểm </span></p>
                                    </div> <!-- /.item-title-->
                                </div><!-- /.filtr-item -->
                            </div><!-- /.col -->

                        </div><!-- /.row -->

                    </div><!-- /.filtr-container-->
                </div><!-- /.gallery-content -->
            </div><!--/.galley-box-->
        </div><!--/.gallery-details-->
    </div><!--/.container-->

</section><!--/.gallery-->
<!--gallery end-->


<!--packages start-->
<section id="pack" class="packages">
    <div class="container">
        <div class="gallary-header text-center">
            <h2>
                Tour của chúng tôi
            </h2>
            <p>
                Các tour được chắt chiu chọn lọc kĩ lưỡng đem cho khách hàng sự hài lòng và tin tưởng.
            </p>
        </div><!--/.gallery-header-->
        <div class="packages-content" id="item-container">
            <div class="row">
                <div class="col-md-3 col-sm-6" id="1">
                    <div class="single-package-item">
                        <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/1.jpg" alt="package-place"
                             style="cursor: pointer;">
                        <div class="single-package-item-txt">
                            <h3>Cần Thơ - Châu Đốc<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Cần Thơ - Châu Đốc - Miếu Bà Chúa Xứ
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->

                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="2">
                    <div class="single-package-item">
                        <img style="cursor: pointer" class="packageImage" src="../assets/images/item/2.jpg"
                             alt="package-place">
                        <p style="font-size: 30px;color: #00d8ff;font-family: Arial!important;" class="overlay-text">chi tiết</p>
                        <div class="single-package-item-txt">
                            <h3>Phú Quốc<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">4,000,000 - 6,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Thành phố Hồ Chí Minh - Phú Quốc
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->

                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="3">
                    <div class="single-package-item">
                        <img style="cursor: pointer" class="packageImage" src="../assets/images/item/3.jpg"
                             alt="package-place">
                        <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <div class="single-package-item-txt">
                            <h3>Cần Thơ - Cồn Sơn-Cồn Ấu<span class="pull-right"
                                                              style="margin-top: 8px;;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Cần Thơ - KDL Cồn Sơn - Cồn Ấu
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->

                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="4">
                    <div class="single-package-item">
                        <img style="cursor: pointer" class="packageImage" src="../assets/images/item/4.jpg"
                             alt="package-place">
                        <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <div class="single-package-item-txt">
                            <h3>Mỹ Tho - Bến Tre<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Mỹ Tho - Bến Tre
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->

                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="5">
                    <div class="single-package-item">
                        <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>

                        <img style="cursor: pointer" class="packageImage" src="../assets/images/item/5.jpg"
                             alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Củ Chi - Địa đạo<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">1,000,000 - 2,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Củ Chi - Địa đạo Củ Chi
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->

                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="6">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>

                        <img style="cursor: pointer" class="packageImage" src="../assets/images/item/6.jpg"
                             alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tây Ninh - Núi Bà Đen<span class="pull-right"
                                                           style="margin-top: 30px;;font-size: 15px;">1,500,000 - 2,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Tây Ninh - Núi Bà Đen
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->

                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="7">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/7.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Đồng Tháp - Mộc Hóa<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Đồng Tháp - Mộc Hóa
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->

                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="8">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/8.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Long An - Bến Lức<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Long An - Bến Lức
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->

                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="9">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/9.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tiền Giang - Cai Lậy<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,500,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Tiền Giang - Cai Lậy
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->

                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="10">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/10.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Bình Dương - Suối Tiên<span class="pull-right"
                                                            style="margin-top: 30px;;font-size: 15px;">1,500,000 - 2,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Bình Dương - Suối Tiên
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->

                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="11">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/11.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Bình Phước - Thác Ma Thiên Lân<span class="pull-right"
                                                                    style="margin-top: 8px;;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Bình Phước - Thác Ma Thiên Lân
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="12">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/12.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Đồng Nai - Khu du lịch Bửu Long<span class="pull-right"
                                                                     style="margin-top: 8px;;font-size: 15px;">2,500,000 - 4,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Đồng Nai - Khu du lịch Bửu Long
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->

                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="13">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/13.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Vũng Tàu - Hồ Tràm<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 4,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Bà Rịa - Vũng Tàu - Hồ Tràm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->

                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="14">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/14.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tp Hồ Chí Minh - Vũng Tàu<span class="pull-right"
                                                               style="margin-top: 8px;;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Thành phố Hồ Chí Minh - Vũng Tàu
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->

                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="15">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/15.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tp Hồ Chí Minh - Côn Đảo<span class="pull-right"
                                                              style="margin-top: 30px;;font-size: 15px;">6,000,000 - 7,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Thành phố Hồ Chí Minh - Côn Đảo
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->

                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="16">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/16.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Đồng Nai - Nam Cát Tiên<span class="pull-right"
                                                             style="margin-top: 30px;;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Đồng Nai - Vườn quốc gia Nam Cát Tiên
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->

                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="17">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/17.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Núi Bà Đen - Camping<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Tây Ninh - Núi Bà Đen - Camping
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="18">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/18.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Đồng Tháp - Đồng sen<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Đồng Tháp - Cánh đồng sen
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="19">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/19.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>An Giang - Miệt vườn<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - An Giang - Miệt vườn sông nước
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="20">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/20.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tiền Giang - Tân Phong<span class="pull-right"
                                                            style="margin-top: 8px;;font-size: 15px;">2,500,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Tiền Giang - Cù lao Tân Phong
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="21">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/21.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Vĩnh Long - Sa Đéc<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Vĩnh Long - Làng hoa kiểng Sa Đéc
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="22">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/22.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Đồng Tháp - Trà Sư<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Đồng Tháp - Rừng tràm Trà Sư
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="23">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/23.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Bạc Liêu<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">1,000,000 - 2,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Bạc Liêu - Nhà Công tử Bạc Liêu
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="24">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/24.webp" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Cà Mau - Đất Mũi<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">4,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Cà Mau - Đất Mũi
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="25">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/25.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Sóc Trăng - Chùa Dơi<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,500,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Sóc Trăng - Chùa Dơi
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="26">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/26.webp" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Bến Tre - Cồn Phụng<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Bến Tre - Cồn Phụng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="27">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/27.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Trà Vinh - Ao Bà Om<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Trà Vinh - Ao Bà Om
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="28">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/28.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hậu Giang - Chợ nổi<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Hậu Giang - Chợ nổi Ngã Bảy
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="29">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/29.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Cần Thơ - Mỹ Khánh<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Cần Thơ - Vườn sinh thái Mỹ Khánh
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="30">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/30.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Kiên Giang - Đảo Nam Du<span class="pull-right"
                                                             style="margin-top: 30px;;font-size: 15px;">4,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Kiên Giang - Đảo Nam Du
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="31">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/31.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Phú Quốc - Vinpearl Land<span class="pull-right"
                                                              style="margin-top: 30px;;font-size: 15px;">5,000,000 - 7,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 6 ngày 5 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Phú Quốc - Vinpearl Land
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="32">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/32.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hà Tiên - Mũi Nai<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,500,000 - 4,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Hà Tiên - Mũi Nai
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="33">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/33.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Đồng Tháp - Gáo Giồng<span class="pull-right" style="margin-top: 8px;;font-size: 15px;">2,500,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Đồng Tháp - Khu DLST Gáo Giồng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="34">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/34.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Long An - Cồn Long Mỹ<span class="pull-right"
                                                           style="margin-top: 30px;;font-size: 15px;">2	,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Long An - Cồn Long Mỹ
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="35">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/35.jpeg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Bến Tre - Chợ nổi Cái Bè<span class="pull-right"
                                                              style="margin-top: 30px;;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Bến Tre - Chợ nổi Cái Bè
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="36">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/36.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tiền Giang - Cù lao Thới Sơn<span class="pull-right"
                                                                  style="margin-top: 30px;;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Tiền Giang - Cù lao Thới Sơn
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="37">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/37.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Trà Vinh - Chùa Âng<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Trà Vinh - Chùa Âng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="38">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/38.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Đà Lạt - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">4,000,000 - 6,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 5 ngày 4 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Lạt - Cần Thơ - Chợ nổi Cái Răng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="39">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/39.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Nha Trang - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">4,000,000 - 6,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Nha Trang - Cần Thơ - VQG Tràm Chim
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="40">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/40.webp" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Huế - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">4,500,000 - 5,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Huế - Cần Thơ - Rừng tràm Trà Sư
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="41">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/41.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Đà Nẵng - Tiền Giang<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Cần Thơ - Cù lao Tân Phong
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="42">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/42.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Cần Thơ - Mỹ Khánh<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Cần Thơ - Khu DLST Mỹ Khánh
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="43">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/43.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Nha Trang - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Nha Trang - Cần Thơ - Vườn quốc gia Tràm Chim
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="44">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/44.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Huế - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">4,500,000 - 5,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 5 ngày 4 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Huế - Cần Thơ - Rừng tràm Trà Sư
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="45">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/45.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Bình Dương - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Bình Dương - Cần Thơ - Chợ nổi Cái Bè
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="46">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/46.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Đồng Nai - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đồng Nai - Cần Thơ - Vườn quốc gia Tràm Chim
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="47">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/47.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Long An - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,500,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Long An - Cần Thơ - Cồn Phụng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="48">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/48.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tiền Giang - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tiền Giang - Cần Thơ - Cù lao Thới Sơn
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="49">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/49.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Đồng Tháp - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đồng Tháp - Cần Thơ - Khu du lịch sinh thái Gáo Giồng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="50">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/50.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>An Giang - Cần Thơ <span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,500,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> An Giang - Cần Thơ - Chùa Bà Thiên Hậu
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="51">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/51.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Kiên Giang - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">4,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Kiên Giang - Cần Thơ - Đảo Nam Du
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="52">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/52.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Bạc Liêu - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,500,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Bạc Liêu - Cần Thơ - Nhà Công tử Bạc Liêu
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="53">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/53.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Sóc Trăng - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Sóc Trăng - Cần Thơ - Chùa Dơi
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="54">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/54.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Cà Mau - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Cà Mau - Cần Thơ -<br> Đất Mũi
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="55">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/55.webp" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Bến Tre - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,500,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Bến Tre - Cần Thơ -<br> Cồn Lân
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="56">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/56.webp" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Long An - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Long An - Cần Thơ - Khu DLST Vàm Sát
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="57">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/57.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3> Tiền Giang - Cần Thơ<span class="pull-right"
                                                           style="margin-top: 30px;;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tiền Giang - Cần Thơ - Khu DLST Đồng Tháp Mười
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="58">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/58.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Đồng Tháp - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,500,000 - 4,5	00,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đồng Tháp - Cần Thơ - Vườn quốc gia Tràm Chim
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="59">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/59.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>An Giang - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,500,000 - 4,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 4 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> An Giang - Cần Thơ - Khu du lịch sinh thái Núi Sam
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="60">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/60.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Kiên Giang - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Kiên Giang - Cần Thơ - Đảo Phụng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="61">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/61.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Châu Đốc - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Châu Đốc - Cần Thơ - Khu DLST rừng tràm Trà Sư
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="62">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/62.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Mỹ Tho - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,500,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Mỹ Tho - Cần Thơ - Chợ nổi Cái Bè
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="63">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/63.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Bến Tre - Cần Thơ <span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,500,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Bến Tre - Cần Thơ - Cồn Phụng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="64">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/64.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Kiên Giang - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">4,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Kiên Giang - Cần Thơ - Đảo Nam Du
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="65">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/65.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Châu Đốc - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Châu Đốc - Cần Thơ - Khu DLST rừng tràm Trà Sư
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="66">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/66.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>An Giang - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,500,000 - 4,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> An Giang - Cần Thơ - Khu DLST Núi Sam
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="67">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/67.webp" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Long An - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Long An - Cần Thơ - Khu du lịch sinh thái Vàm Sát
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="68">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/68.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tiền Giang - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tiền Giang - Cần Thơ - Khu DLST Đồng Tháp Mười
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="69">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/69.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Bến Tre - Cần Thơ<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">2,500,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Bến Tre - Cần Thơ - Cồn Phụng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="70">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/70.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Cần Thơ - Chợ nổi Cái Răng<span class="pull-right"
                                                                style="margin-top: 8px;;font-size: 15px;">2,500,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Cần Thơ - Chợ nổi Cái <br> Răng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="71">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/71.png" alt="package-place">
                        <div style="height: 270px" class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Hội An<span class="pull-right" style="margin-top: 15px;font-size: 15px;">5,000,000 - 7,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Hội An
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 20px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="72">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/72.png" alt="package-place">
                        <div style="height: 270px" class="single-package-item-txt">
                            <h3>Tour Quảng Bình - Kẻ Gỗ<span class="pull-right"
                                                             style="margin-top: 10px;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Quảng Bình - Kẻ Gỗ
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 20px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="73">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/73.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Huế - Quảng Bình - Đà Nẵng <span class="pull-right"
                                                                                style="margin-top: 10px;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Ngũ Hành Sơn - Bà Nà Hills - Huế - Đại Nội - Chùa Thiên Mụ - Động Thiên Đường - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="74">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/74.png" alt="package-place">
                        <div style="height: 310px" class="single-package-item-txt">
                            <h3>Tour Huế - Đà Nẵng - Hội An<span class="pull-right"
                                                                 style="margin-top: 10px;font-size: 15px;">4,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Huế - Đà Nẵng - Hội An
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 60px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="75">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/75.png" alt="package-place">
                        <div style="height: 310px" class="single-package-item-txt">
                            <h3>Tour Quy Nhơn - Phú Yên<span class="pull-right"
                                                             style="margin-top: 10px;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Quy Nhơn - Phú Yên
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 60px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="76">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/76.png" alt="package-place">
                        <div style="height: 310px" class="single-package-item-txt">
                            <h3>Tour Quảng Nam - Cu Lao Chàm<span class="pull-right"
                                                                  style="margin-top: 10px;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Quảng Nam - Cu Lao Chàm
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 60px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="77">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/77.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Gia Lai - Kon Tum<span class="pull-right"
                                                            style="margin-top: 10px;font-size: 15px;">1,000,000 - 2,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Gia Lai - Kon Tum
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="78">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/78.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Nha Trang - Đảo Hoa Lan<span class="pull-right"
                                                                  style="margin-top: 10px;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Nha Trang - Đảo Hoa Lan
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="79">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/79.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Quảng Bình - Đèo Ngang<span class="pull-right"
                                                                 style="margin-top: 10px;font-size: 15px;">2,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Quảng Bình - Đèo Ngang
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="80">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/80.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Phong Nha<span class="pull-right"
                                                              style="margin-top: 10px;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Huế - Phong Nha
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="81">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/81.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Pleiku - Kon Tum<span class="pull-right" style="margin-top: 10px;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Pleiku - Gia Lai - Kon Tum
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="82">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/82.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Tam Kỳ - Quảng Ngãi<span class="pull-right"
                                                              style="margin-top: 10px;font-size: 15px;">1,000,000 - 2,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tam Kỳ - Quảng Ngãi
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="83">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/83.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Cửa Lò - Nghệ An<span class="pull-right" style="margin-top: 10px;font-size: 15px;">2,000,000 - 2,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Cửa Lò - Nghệ An
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="84">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/84.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Bình Thuận - Phan Thiết<span class="pull-right"
                                                                  style="margin-top: 10px;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Bình Thuận - Phan Thiết
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="85">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/85.png" alt="package-place">
                        <div style="height: 270px" class="single-package-item-txt">
                            <h3>Tour Tam Đảo - Vĩnh Phúc<span class="pull-right"
                                                              style="margin-top: 10px;font-size: 15px;">3,000,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tam Đảo - Vĩnh Phúc
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 20px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="86">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/86.png" alt="package-place">
                        <div style="height: 270px" class="single-package-item-txt">
                            <h3>Tour Tràng An - Ninh Bình<span class="pull-right"
                                                               style="margin-top: 10px;font-size: 15px;">2,000,000 - 2,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tràng An - Ninh Bình
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 20px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="87">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/87.png" alt="package-place">
                        <div style="height: 270px" class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Bà Nà Hills<span class="pull-right"
                                                                style="margin-top: 10px;font-size: 15px;">4,000,000 - 4,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Bà Nà Hills
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 20px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div style="margin-top: 5px" class="col-md-3 col-sm-6" id="88">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/88.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Hội An<span class="pull-right" style="margin-top: 10px;font-size: 15px;">5,000,000 - 7,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Ngũ Hành Sơn - Hội An - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="89">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/89.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Huế - Đà Nẵng<span class="pull-right"
                                                                  style="margin-top: 10px;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Ngũ Hành Sơn - Bà Nà Hills - Huế - Đại Nội - Chùa Thiên Mụ - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="90">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/90.png" alt="package-place">
                        <div style="height: 285px" class="single-package-item-txt">
                            <h3>Tour Huế - Đà Nẵng<span class="pull-right" style="margin-top: 10px;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Huế - Đại Nội - Chùa Thiên Mụ - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 20px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="91">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/91.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Nha Trang - Đà Nẵng<span class="pull-right"
                                                              style="margin-top: 10px;font-size: 15px;">4,000,000 - 6,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Nha Trang - Vinpearl Land - Vinpearl Safari - Đà Nẵng - Mua sắm - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="92">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/92.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Nha Trang - Hội An<span class="pull-right"
                                                             style="margin-top: 10px;font-size: 15px;">5,000,000 - 7,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 4 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Nha Trang - Vinpearl Land - Vinpearl Safari - Hội An - Mua sắm - Hội An
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="93">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/93.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Nha Trang - Đà Nẵng - Hội An<span class="pull-right"
                                                                       style="margin-top: 10px;font-size: 15px;">6,000,000 - 8,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 5 ngày 4 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Nha Trang - Vinpearl Land - Vinpearl Safari - Đà Nẵng - Ngũ Hành Sơn - Bà Nà Hills - Hội An - Mua sắm - Hội An
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="94">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/94.png" alt="package-place">
                        <div style="height: 305px" class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Hội An - Bà Nà Hills<span class="pull-right"
                                                                         style="margin-top: 10px;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Ngũ Hành Sơn - Bà Nà Hills - Hội An - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 40px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="95">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/95.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Huế - Hội An - Bà Nà Hills<span class="pull-right"
                                                                               style="margin-top: 10px;font-size: 15px;">4,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Ngũ Hành Sơn - Bà Nà Hills - Huế - Đại Nội - Chùa Thiên Mụ - Hội An - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="96">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/96.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Huế - Hội An - Cù Lao<span class="pull-right"
                                                                          style="margin-top: 10px;font-size: 15px;">6,000,000 - 7,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 5 ngày 4 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Ngũ Hành Sơn - Bà Nà Hills - Huế - Đại Nội - Chùa Thiên Mụ - Hội An - Cù Lao Chàm - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="97">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/97.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Cù Lao Chàm<span class="pull-right"
                                                                style="margin-top: 10px;font-size: 15px;">2,000,000 - 2,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Ngũ Hành Sơn - Cù Lao Chàm - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                    /p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="98">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/98.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Huế - Hội An - Cù Lao Chàm<span class="pull-right"
                                                                     style="margin-top: 10px;font-size: 15px;">3,000,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Huế - Đại Nội - Chùa Thiên Mụ - Hội An - Cù Lao Chàm - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="99">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/99.jpg" alt="package-place">
                        <div style="height: 290px" class="single-package-item-txt">
                            <h3> Tour Huế - Cù Lao Chàm<span class="pull-right"
                                                             style="margin-top: 30px;font-size: 15px;">1,500,000 - 2,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Huế - Đại Nội - Chùa Thiên Mụ - Cù Lao Chàm - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 30px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="100">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/100.jpg" alt="package-place">
                        <div style="height: 290px" class="single-package-item-txt">
                            <h3>Tour Nha Trang - Vinpearl Land<span class="pull-right"
                                                                    style="margin-top: 10px;font-size: 15px;">1,500,000 - 2,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Nha Trang - Vinpearl Land - Nha Trang
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 30px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="101">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/101.jpg" alt="package-place">
                        <div style="height: 280px 	" class="single-package-item-txt">
                            <h3>Tour Nha Trang - Vinpearl Safari<span class="pull-right"
                                                                      style="margin-top: 10px;font-size: 15px;">1,500,000 - 2,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Nha Trang - Vinpearl Safari - Nha Trang
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 15px 	" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="102">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/102.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Nha Trang - Vinpearl Land - Vinpearl Safari<span class="pull-right"
                                                                                      style="margin-top: 10px;font-size: 15px;">3,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Nha Trang - Vinpearl Land - Vinpearl Safari - Nha Trang
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="103">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/103.jpg" alt="package-place">
                        <div style="height: 280px 	" class="single-package-item-txt">
                            <h3>Tour Quy Nhơn - Eo Gió<span class="pull-right"
                                                            style="margin-top: 10px;font-size: 15px;">2,000,000 - 2,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i>2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Quy Nhơn - Eo Gió - Quy Nhơn
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 15px 	" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="104">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/104.jpg" alt="package-place">
                        <div style="height: 280px 	" class="single-package-item-txt">
                            <h3>Tour Quy Nhơn - Kỳ Co 2 ngày 1 đêm<span class="pull-right"
                                                                        style="margin-top: 10px;font-size: 15px;">2,000,000 - 2,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Quy Nhơn - Kỳ Co - Quy Nhơn
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 15px 	" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="105">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/105.jpg" alt="package-place">
                        <div style="height: 335px	" class="single-package-item-txt">
                            <h3>Tour Quy Nhơn - Gành Đá Dĩa<span class="pull-right"
                                                                 style="margin-top: 10px;font-size: 15px;">2,000,000 - 2,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i>2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Quy Nhơn - Gành Đá Dĩa - Quy Nhơn
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 70px	" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="106">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/106.jpg" alt="package-place">
                        <div style="height: 335px	" class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Huế - Hội An - Quảng Bình<span class="pull-right"
                                                                              style="margin-top: 10px;font-size: 15px;">6,000,000 - 7,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 5 ngày 4 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Ngũ Hành Sơn - Bà Nà Hills - Huế - Đại Nội - Chùa Thiên Mụ - Động Thiên Đường - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 30px	" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="107">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/107.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Huế - Hội An - Phong Nha - Kẻ Bàng<span class="pull-right"
                                                                                       style="margin-top: 10px;font-size: 15px;">7,000,000 - 8,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 7 ngày 6 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Ngũ Hành Sơn - Bà Nà Hills - Huế - Đại Nội - Chùa Thiên Mụ - Động Thiên Đường - Phong Nha - Kẻ Bàng - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div style="margin-top: 5px	" class="col-md-3 col-sm-6" id="108">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/108.jpg" alt="package-place">
                        <div style="height: 335px	" class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Hội An - Đà Lạt <span class="pull-right"
                                                                     style="margin-top: 10px;font-size: 15px;">6,000,000 - 7,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Ngũ Hành Sơn - Bà Nà Hills - Đà Lạt - chợ Đà Lạt - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 55px	" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="109">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/109.jpg" alt="package-place">
                        <div style="height: 300px	" class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Hội An - Đà Lạt<span class="pull-right"
                                                                    style="margin-top: 10px;font-size: 15px;">7,500,000 - 8,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 6 ngày 5 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Ngũ Hành Sơn - Bà Nà Hills - Đà Lạt - chợ Đà Lạt - Thác Datanla - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 20px	" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="110">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/110.jpg" alt="package-place">
                        <div style="height: 300px	" class="single-package-item-txt">
                            <h3>Tour Huế - Quảng Bình - Đà Nẵng<span class="pull-right"
                                                                     style="margin-top: 10px;font-size: 15px;">6,000,000 - 7,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Huế - Đại Nội - Chùa Thiên Mụ - Động Thiên Đường - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 20px	" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="111">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/111.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Huế - Quảng Bình - Đà Nẵng<span class="pull-right"
                                                                     style="margin-top: 10px;font-size: 15px;">7,000,000 - 7,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 6 ngày 5 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Huế - Đại Nội - Chùa Thiên Mụ - Động Thiên Đường - Phong Nha - Kẻ Bàng - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="112">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/112.jpg" alt="package-place">
                        <div style="height: 300px	" class="single-package-item-txt">
                            <h3>Tour Huế - Đà Lạt<span class="pull-right" style="margin-top: 10px;font-size: 15px;">4,000,000 - 4,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Huế - Đại Nội - Chùa Thiên Mụ - Đà Lạt - chợ Đà Lạt
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 30px	" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="113">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/113.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Huế - Đà Lạt <span class="pull-right" style="margin-top: 10px;font-size: 15px;">5,000,000 - 5,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 6 ngày 5 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Huế - Đại Nội - Chùa Thiên Mụ - Đà Lạt - chợ Đà Lạt - Thác Datanla
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="114">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/114.jpg" alt="package-place">
                        <div style="height: 290px	" class="single-package-item-txt">
                            <h3>Tour Quảng Bình - Đà Nẵng<span class="pull-right"
                                                               style="margin-top: 10px;font-size: 15px;">3,000,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Động Thiên Đường - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 20px	" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="115">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/115.jpg" alt="package-place">
                        <div style="height: 290px	" class="single-package-item-txt">
                            <h3>Tour Quảng Bình - Đà Nẵng<span class="pull-right"
                                                               style="margin-top: 10px;font-size: 15px;">4,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Động Thiên Đường - Phong Nha - Kẻ Bàng - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 20px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div style="margin-top: 5px" class="col-md-3 col-sm-6" id="116">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/116.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Đà Lạt - Nha Trang<span class="pull-right"
                                                             style="margin-top: 10px;font-size: 15px;">5,000,000 - 5,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Lạt - chợ Đà Lạt - Thác Datanla - Nha Trang - Vinpearl Land
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="117">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/117.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Đà Lạt - Nha Trang<span class="pull-right"
                                                             style="margin-top: 10px;font-size: 15px;">6,000,000 - 6,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Lạt - chợ Đà Lạt - Thác Datanla - Nha Trang - Vinpearl Land - Vinpearl Safari - Nha Trang
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="118">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/118.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Đà Lạt - Nha Trang<span class="pull-right"
                                                             style="margin-top: 10px;font-size: 15px;">7,000,000 - 7,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 6 ngày 5 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Lạt - chợ Đà Lạt - Thác Datanla - Nha Trang - Vinpearl Land - Vinpearl Safari - Đà Lạt
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="119">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/119.jpg" alt="package-place">
                        <div style="height: 310px" class="single-package-item-txt">
                            <h3>Tour Phú Yên - Đà Nẵng<span class="pull-right"
                                                            style="margin-top: 10px;font-size: 15px;">2,000,000 - 2,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Phú Yên - Tuy Hòa - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 40px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="120">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/120.jpg" alt="package-place">
                        <div style="height: 310px" class="single-package-item-txt">
                            <h3>Tour Phú Yên - Đà Nẵng<span class="pull-right"
                                                            style="margin-top: 10px;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Phú Yên - Tuy Hòa - Gành Đá Đĩa - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 40px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="121">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/121.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Ngũ Hành Sơn<span class="pull-right"
                                                                 style="margin-top: 10px;font-size: 15px;">2,000,000 - 2,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 1 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Ngũ Hành Sơn - Đà Nẵng

											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="122">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/122.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Bà Nà Hills<span class="pull-right"
                                                                style="margin-top: 10px;font-size: 15px;">2,000,000 - 2,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 1 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Bà Nà Hills - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="123">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/123.jpg" alt="package-place">
                        <div style="height: 270px" class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Hội An<span class="pull-right" style="margin-top: 10px;font-size: 15px;">2,000,000 - 2,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Hội An - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 20px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div style="margin-top: 5px" class="col-md-3 col-sm-6" id="124">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/124.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Cù Lao Chàm<span class="pull-right"
                                                                style="margin-top: 10px;font-size: 15px;">1,500,000 - 2,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 1 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Cù Lao Chàm - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="125">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/125.jpg" alt="package-place">
                        <div style="height: 290px" class="single-package-item-txt">
                            <h3>Tour Huế - Đại Nội<span class="pull-right" style="margin-top: 10px;font-size: 15px;">2,000,000 - 2,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 1 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Huế - Đại Nội - Huế
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 40px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="126">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/126.jpg" alt="package-place">
                        <div style="height: 290px" class="single-package-item-txt">
                            <h3>Tour Huế - Chùa Thiên Mụ<span class="pull-right"
                                                              style="margin-top: 10px;font-size: 15px;">2,000,000 - 2,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 1 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Huế - Chùa Thiên Mụ - Huế
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 40px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="127">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/127.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Huế - Phong Nha - Kẻ Bàng<span class="pull-right"
                                                                    style="margin-top: 10px;font-size: 15px;">3,000,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Huế - Động Thiên Đường - Phong Nha - Kẻ Bàng - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="128">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/128.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Huế - Quảng Bình - Đà Nẵng<span class="pull-right"
                                                                     style="margin-top: 10px;font-size: 15px;">4,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Huế - Động Thiên Đường - Phong Nha - Kẻ Bàng - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="129">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/129.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Quy Nhơn - Eo Gió<span class="pull-right"
                                                            style="margin-top: 10px;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Quy Nhơn - Eo Gió - Quy Nhơn
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="130">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/130.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Quy Nhơn - Kỳ Co<span class="pull-right" style="margin-top: 10px;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Quy Nhơn - Kỳ Co - Quy Nhơn
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="131">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/131.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Quy Nhơn - Gành Đá Dĩa<span class="pull-right"
                                                                 style="margin-top: 10px;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Quy Nhơn - Gành Đá Dĩa - Quy Nhơn
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="132">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/132.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Phú Yên - Gành Đá Đĩa<span class="pull-right"
                                                                style="margin-top: 10px;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Phú Yên - Gành Đá Đĩa - Phú Yên
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="133">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/133.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Phú Yên - Tuy Hòa - Vịnh Vũng Rô<span class="pull-right"
                                                                           style="margin-top: 10px;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Phú Yên - Tuy Hòa - Vịnh Vũng Rô - Phú Yên
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="134">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/134.jpg" alt="package-place">
                        <div style="height: 270px" class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Hội An - Đà Nẵng<span class="pull-right"
                                                                     style="margin-top: 10px;font-size: 15px;">2,500,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Hội An - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 20px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="135">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/135.jpg" alt="package-place">
                        <div style="height: 270px" class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Huế - Đà Nẵng<span class="pull-right"
                                                                  style="margin-top: 10px;font-size: 15px;">3,000,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Huế - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 20px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="136">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/136.jpg" alt="package-place">
                        <div style="height: 270px" class="single-package-item-txt">
                            <h3>Tour Huế - Hội An - Đà Nẵng<span class="pull-right"
                                                                 style="margin-top: 10px;font-size: 15px;">3,000,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Huế - Hội An - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 20px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="137">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/137.jpg" alt="package-place">
                        <div style="height: 325px" class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Huế - Hội An - Cù Lao Chàm<span class="pull-right"
                                                                               style="margin-top: 10px;font-size: 15px;">3,000,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Ngũ Hành Sơn - Bà Nà Hills - Huế - Đại Nội - Chùa Thiên Mụ - Hội An - Cù Lao Chàm - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 20px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="138">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/138.jpg" alt="package-place">
                        <div style="height: 325px" class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Huế - Hội An - Thánh địa Mỹ Sơn - Đà Nẵng<span class="pull-right"
                                                                                              style="margin-top: 10px;font-size: 15px;">3,500,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Ngũ Hành Sơn - Bà Nà Hills - Huế - Đại Nội - Chùa Thiên Mụ - Hội An - Thánh địa Mỹ Sơn - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 10px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="139">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/139.jpg" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Huế - Quảng Bình - Đà Nẵng <span class="pull-right"
                                                                                style="margin-top: 10px;font-size: 15px;">3,500,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 3 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Ngũ Hành Sơn - Bà Nà Hills - Huế - Đại Nội - Chùa Thiên Mụ - Động Thiên Đường - Phong Nha - Kẻ Bàng - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <div class="col-md-3 col-sm-6" id="140">
                    <div style="margin-top: 5px" class="single-package-item">
                        <img class="packageImage" src="../assets/images/item/140.jpg" alt="package-place">
                        <div style="height: 325px" class="single-package-item-txt">
                            <h3>Tour Đà Nẵng - Hội An - Bà Nà Hills - Cù Lao Chàm - Đà Nẵng<span class="pull-right"
                                                                                                 style="margin-top: 10px;font-size: 15px;">3,000,000 - 3,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 2 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Đà Nẵng - Ngũ Hành Sơn - Bà Nà Hills - Hội An - Cù Lao Chàm - Đà Nẵng
											</span>
                                </p>
                                <p>
											<span>
												<i style="margin-top: 30px" class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->


                <div class="col-md-3 col-sm-6" id="141">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/142.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>>Hà Nội - Ninh Binh<span class="pull-right" style="margin-top: 10px;font-size: 15px;">7,000,000 - 9,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 6 ngày 5 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Ha Long - Ninh Binh - Yên Tử
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="142">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/142.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hà Nội - Yên Tử - Hạ Long<span class="pull-right"
                                                               style="margin-top: 10px;font-size: 15px;">10.000.000-12,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 6 ngày 5 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Yên Tử - Hạ Long - Bắc Ninh
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="143">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/143.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hà Nội - Hà Giang - Cao Bằng<span class="pull-right"
                                                                  style="margin-top: 10px;font-size: 15px;">9,899,000 đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 6 ngày 5 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i>  Hà Nội - Cao Bằng - Thác Bản Giốc
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="144">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/144.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hà Nội - Hà Giang - Cao Bằng <span class="pull-right"
                                                                   style="margin-top: 10px;font-size: 15px;">5,000,000 - 8,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 5 ngày 6 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Hà Giang - Đồng Văn
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="145">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/145.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Hạ Long - Yên Tử - Sapa
                                <span class="pull-right"
                                      style="margin-top: 10px;font-size: 15px;">3,899,000 -8,400,000đ</span></h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 3 ngày 2 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Sài Gòn - Hà Nội - Sapa - Yên Tử
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="146">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/146.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hạ Long - Yên Tử - Sapa
                                <span class="pull-right"
                                      style="margin-top: 10px;font-size: 15px;">5,099,000 - 7,799,000 đ</span></h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 4 ngày 3 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Vịnh Hạ Long - Yên Tử - Sapa - Fansipan
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="147">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/147.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hạ Long - Yên Tử - Sapa
                                <span class="pull-right"
                                      style="margin-top: 10px;font-size: 15px;">4,099,000 - 7,799,000 đ</span></h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 4 ngày 3 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Sài Gòn - Hà Nội - Lào Cai - Hạ Long
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="148">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/148.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hà Nội - Yên Tử - Hạ Long - Sapa <span class="pull-right"
                                                                       style="margin-top: 10px;font-size: 15px;">6,099,000 - 9,799,000 đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 6 ngày 5 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Thành phố Hồ Chí Minh - Hà Nội - Yên Tử
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="149">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/149.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hà Nội - Hạ Long - Ninh Bình - Tràng An<span class="pull-right"
                                                                             style="margin-top: 10px;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 5 ngày 4 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Hạ Long - Ninh Bình - Tràng An
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="150">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/150.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Tết Nguyên Đán 2024 - Hà Nội - Hạ Long<span class="pull-right"
                                                                                 style="margin-top: 10px;font-size: 15px;">13,499,000 đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 5 ngày 4 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Hạ Long - Ninh Bình - Hòn Trống
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> 13,14,15/2/2024
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="151">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/151.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Mù Cang Chải - Yên Bái - Sapa
                                <span class="pull-right"
                                      style="margin-top: 10px;font-size: 15px;">5,000,000 - 8,199,000 đ</span></h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 4 ngày 3 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Thành phố Hồ Chí Minh - Cang Chải - Yên Bái
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="152">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/152.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hà Nội - Mộc Châu - Sơn La
                                <span class="pull-right"
                                      style="margin-top: 10px;font-size: 15px;">6,099,000 - 9,799,000 đ</span></h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 4 ngày 3 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Mộc Châu - Cầu Kính Bạch Long
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="153">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/153.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hà Nội - Mộc Châu - Điện Biên<span class="pull-right"
                                                                   style="margin-top: 10px;font-size: 15px;">7,000,000 - 9,199,000 đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 5 ngày 4 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Mộc Châu - Cầu Kính Bạch Long
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="154">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/154.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hà Nội - Tràng An<span class="pull-right" style="margin-top: 10px;font-size: 15px;">8,700,000 - 10,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 6 ngày 5 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i>  Hà Nội - Tràng An - Sapa - Bản Cát Cát
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="155">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/155.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3> Hà Nội - Ninh Bình<span class="pull-right" style="margin-top: 10px;font-size: 15px;">6,000,000 - 9,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 5 ngày 4 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Hạ Long - Ninh Bình - Sapa
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="156">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/156.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3> Hà Nội - Mù Cang Chải<span class="pull-right"
                                                            style="margin-top: 10px;font-size: 15px;">2,120,000 đ - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 3 ngày 2 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Mù Cang Chải - Ngọc Chiến

                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="157">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/157.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hà Nội - Ngọc Chiến dịp Lễ 2/9 từ Hà Nội 2023
                                <span class="pull-right"
                                      style="margin-top: 10px;font-size: 15px;">4,000,000 - 6,000,000đ</span></h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 5 ngày 6 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Mù cang Chải - Ngọc Chiến
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> 1/9/2023
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="158">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/158.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3> Hà Nội - Bản Cát Cát <span class="pull-right"
                                                            style="margin-top: 10px;font-size: 15px;">2,090,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 2 ngày 1 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Sapa - Bản Cát Cát - Check in Moana
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="159">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/159.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hà Nôi - Fansipan<span class="pull-right" style="margin-top: 10px;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 2 ngày 1 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nôi - Sapa - Fansipan - Chùa Bái Đính
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="160">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/160.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Hà Nội - Hàm Rồng dịp Lễ<span class="pull-right"
                                                                      style="margin-top: 10px;font-size: 15px;">2,500,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 4 ngày 3 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Du lịch Hà Nội - Sapa - Hàm Rồng dịp Lễ
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="161">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/161.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Mộc Châu Mùa Hoa Mơ - Hoa Mận<span class="pull-right"
                                                                   style="margin-top: 10px;font-size: 15px;">4,000,000 - 6,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 2 ngày 1 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Mộc Châu Mùa Hoa Mơ - Hoa Mận
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="162">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/164.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Mộc Châu 2 ngày<span class="pull-right"
                                                             style="margin-top: 10px;font-size: 15px;">8,000,000 - 22,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 2 ngày 1 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i>  HÀ NỘI - MỘC CHÂU - MAI CHÂU - HÀ NỘI
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="163">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/162.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch dương lịch 2024 - Tour Mộc Châu<span class="pull-right"
                                                                             style="margin-top: 10px;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 2 ngày 1 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i>Hà Nội - Mộc Châu - Cầu Kính Bạch Long
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> 31/12/2023
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="164">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/163.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>HÀ NỘI - CÁT CÁT - HÀM RỒNG<span class="pull-right"
                                                                 style="margin-top: 10px;font-size: 15px;">5,799,000 - 8,399,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 3 ngày 2 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i>HÀ NỘI - CÁT CÁT - HÀM RỒNG - FANSIPAN - HÀ NỘI
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="165">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/165.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3> Hà Nội - Sapa - Bản Cát Cát<span class="pull-right"
                                                                  style="margin-top: 10px;font-size: 15px;">4,600,000 - 7,200,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 3 ngày 2 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Sapa - Bản Cát Cát - Hàm Rồng - Fansipan
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="166">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/166.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Fansipan dịp Lễ 20/11<span class="pull-right"
                                                                   style="margin-top: 10px;font-size: 15px;">4,000,000 - 8,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 2 ngày 1 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i>Tour Lễ 20/11 - Hà Nội - Sapa - Bản Cát Cát
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="167">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/167.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tết Nguyên Đán Sin Suối Hồ 2024<span class="pull-right"
                                                                     style="margin-top: 10px;font-size: 15px;">6,000,000 - 8,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 4 ngày 3 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Sapa - Lai Châu - Sin Suối Hồ
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> 10/2/2024
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="168">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/168.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Fansipan - Hà Nội<span class="pull-right" style="margin-top: 10px;font-size: 15px;">8,000,000 - 11,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 2 ngày 1 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i>Hà Nội - Sapa - Fansipan - Hàm Rồng
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="169">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/169.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Sapa 3 ngày 2 đêm giá tốt<span class="pull-right"
                                                                    style="margin-top: 10px;font-size: 15px;">2,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 4 ngày 3 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Sapa - Cát Bát - Hàm Rồng - Fanxipang
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="170">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/170.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Sapa Tết Dương Lịch<span class="pull-right"
                                                                 style="margin-top: 10px;font-size: 15px;">13,000,000 - 15,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 4 ngày 3 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> SAPA - CÁT CÁT - HÀM RỒNG - FANXIPANG
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="171">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/171.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Tây Bắc Tết Dương lịch 2024<span class="pull-right"
                                                                         style="margin-top: 10px;font-size: 15px;">3,600,000 - 6,300,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 4 ngày 3 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Tây Bắc - Hà Nội - Mộc Châu - Cầu Kính Bạch Long
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="172">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/172.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Phú Thọ - Đền Hùng<span class="pull-right"
                                                                style="margin-top: 10px;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 1 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Hà Nội - Đền Hùng - Phú Thọ -Hà Nội
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->

                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="173">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/173.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Tây Thiên<span class="pull-right" style="margin-top: 30px;;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> Vĩnh Phúc - Tam Đảo - Tây Thiên
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->

                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="174">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/174.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Tết Âm lịch Tour Hà Nội <span class="pull-right"
                                                                      style="margin-top: 10px;font-size: 15px;">3,000,000 - 5,399,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 6 ngày 5 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Bắc Ninh - Đền Đô - Hạ Long
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="175">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/175.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Miền Bắc Tết Âm lịch - Hà Nội<span class="pull-right"
                                                                           style="margin-top: 10px;font-size: 15px;">4,799,000 - 5,800,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 6 ngày 5 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i>  Hà Nội - Yên Tử - Hạ Long - Đền Đô
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="176">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/176.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Miền Bắc Tết Dương lịch<span class="pull-right"
                                                                     style="margin-top: 10px;font-size: 15px;">2,699,000 - 7,400,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 6 ngày 5 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Ninh Bình - Chùa Bái Đính - Tràng An
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="177">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/178.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3> Chùa Bái Đính - Tràng An<span class="pull-right"
                                                               style="margin-top: 10px;font-size: 15px;">700,000 - 1,799,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 1 ngày 0 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Bái Đính - Tràng An - Hà Nội
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="178">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/177.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Chùa Tam Chúc - Tuyệt Tình Cốc<span class="pull-right"
                                                                    style="margin-top: 10px;font-size: 15px;">3,400,000 - 6,799,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 4 ngày 3 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Chùa Tam Chúc - Ninh Bình - Tuyệt Tình Cốc
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="179">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/179.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hà Nội - Tam Cốc<span class="pull-right" style="margin-top: 10px;font-size: 15px;">700,000 - 5,490,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 1 ngày 0 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Hoa Lư - Tam Cốc - Sapa - Đền Hùng
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="180">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/180.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hà Nội - Hoa Lư<span class="pull-right" style="margin-top: 10px;font-size: 15px;">700,000 - 2,400,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 1 ngày 1 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Bái Đính - Tràng An - Hoa Lư
						</span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="181">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/181.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hoa Lư - Hang Múa<span class="pull-right" style="margin-top: 10px;font-size: 15px;">890,000 - 3,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 1 ngày 0 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i>  Hà Nội - Hang Múa
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="182">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/182.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Bắc Hà Nội - Chùa Hương<span class="pull-right"
                                                             style="margin-top: 10px;font-size: 15px;">700,000 - 999,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 1 ngày 2 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Bắc Hà Nội - Chùa Hương
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="183">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/183.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hà Nội - Yên Tử 1 ngày từ Hà Nội<span class="pull-right"
                                                                      style="margin-top: 10px;font-size: 15px;">3,000,000 - 5,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 2 ngày 1 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Yên Tử
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="184">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/184.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Miền Bắc Hà Nội - City Tour Hà Nội 1 ngày<span class="pull-right"
                                                                               style="margin-top: 10px;font-size: 15px;">3,000,000 - 7,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 4 ngày 3 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="185">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/186.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Chùa Tam Chúc - Chùa Bà Đanh<span class="pull-right"
                                                                  style="margin-top: 10px;font-size: 15px;">6,666,000 - 9,999,999 đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 2 ngày 3 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Chùa Tam Chúc - Chùa Bà Đanh
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <!-- ------------------------------------------------------------------- -->
                <div class="col-md-3 col-sm-6" id="186">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/185.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Miền Bắc Hà Nội - City Tour Hà Nội 1 ngày<span class="pull-right"
                                                                               style="margin-top: 10px;font-size: 15px;">1,500,000 - 6,500,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 2 ngày 1 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - City Hà Nội - Hồ Gươm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="187">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/187.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Thanh Hóa<span class="pull-right" style="margin-top: 10px;font-size: 15px;">2,600,000 - 5,600,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 6 ngày 5 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Đền Sòng Sơn - Đền Cô Chín - Suối Cá
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="188">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/188.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Du lịch Thanh Hóa<span class="pull-right"
                                                            style="margin-top: 10px;font-size: 15px;">5,400,000 - 8,400,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 4 ngày 3 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i>  thanh Hóa - Yên Tử - Tràng An
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="189">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/189.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Thanh Hóa - Pù Luông<span class="pull-right"
                                                                  style="margin-top: 10px; font-size: 15px;">7,000,000 - 9,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 4 ngày 3 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i>  Pù Luông - Vịnh Hạ Long - Yên Tử
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="190">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/190.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Hà Nội - Thung Nai<span class="pull-right"
                                                                style="margin-top: 10px; font-size: 15px;">8,000,000 - 9,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 1 ngày 0 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Thung Nai - Suối khoáng Kim Bồi - Hòa Bình
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="191">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/191.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Du lịch Sapa<span class="pull-right" style="margin-top: 10px; font-size: 15px;">4,000,000 - 6,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 5 ngày 6 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Sa Pa - Bản Cát Cát - Hàm Rồng
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="192">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/192.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour Du lịch Sapa<span class="pull-right" style="margin-top: 10px;font-size: 15px;">3,000,000 - 8,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 3 ngày 2 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Tour Du lịch Sapa - Bản Cát Cát
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="193">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/193.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Miền Bắc Tour Du lịch Sapa<span class="pull-right"
                                                                        style="margin-top: 10px;font-size: 15px;">4,000,000 - 7,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 3 ngày 2 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Sapa - Chinh Phục Đỉnh Fansipan
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="194">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/194.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour mùa Thu 2023 <span class="pull-right" style="margin-top: 10px;font-size: 15px;">7,000,000 - 9,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 3 ngày 2 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Hàm Rồng - Chinh Phục Đỉnh Fansipan
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="195">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/195.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Miền Bắc - Trung Quốc<span class="pull-right"
                                                                   style="margin-top: 10px;font-size: 15px;">4,000,000 - 7,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 3 ngày 2 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Trung Quốc - Hà Khẩu - Sapa
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="196">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/196.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Đông Bắc mùa Hoa Tam Giác Mạch<span class="pull-right"
                                                                    style="margin-top: 10px;font-size: 15px;">2,000,000 - 4,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 4 ngày 3 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Giang - Quản Bạ - Đồng Văn
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> 25/12/2023
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="197">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/197.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Đông Bắc - Hà Nội - Hà Giang<span class="pull-right"
                                                                          style="margin-top: 10px;font-size: 15px;">7,000,000 - 9,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 4 ngày 3 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i>  Hà Nội - Hà Giang - Quản Bạ - Sơn La
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="198">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/198.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Tour du lịch Mộc Châu Tết Dương Lịch<span class="pull-right"
                                                                          style="margin-top: 10px;font-size: 15px;">5,000,000 - 8,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 2 ngày 1 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i>  Mộc Châu - Mai Châu - Hà Nội
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> 30/12/2023
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="199">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/199.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Tết Nguyên Đán Hà Giang<span class="pull-right"
                                                                     style="margin-top: 10px;font-size: 15px;">3,000,000 - 6,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 5 ngày 4 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Giang - Đồng Văn - Cao Bằng
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i>Mùng 2 Tết
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="200">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/200.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Hà Giang<span class="pull-right" style="margin-top: 10px; font-size: 15px;">7,000,000 - 9,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 3 ngày 2 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> HÀ NỘI - ĐỒNG VĂN - CỘT CỜ LŨNG CÚ
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="201">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/201.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Land Tour Vịnh Hạ Long<span class="pull-right"
                                                            style="margin-top: 10px; font-size: 15px;">6,000,000 - 8,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 4 ngày 3 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Vịnh Hạ Long - Yên Tử - Sapa
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="202">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/202.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Yên Tử - Ba Vàng<span class="pull-right"
                                                              style="margin-top: 10px; font-size: 15px;">5,000,000 - 7,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 1 ngày 0 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Yên Tử - Ba Vàng - Mai Châu
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="203">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/203.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Miền Bắc Hà Nội - Hạ Long<span class="pull-right"
                                                                       style="margin-top: 10px;font-size: 15px;"> 5,000,000 - 8,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 2 ngày 1 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Hạ Long - Hang Múa - Bái Đính
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="204">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/204.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Miền Bắc Hà Nội - Hạ Long<span class="pull-right"
                                                                       style="margin-top: 10px;font-size: 15px;">3,400,000 - 6,799,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 2 ngày 1 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> Hà Nội - Hạ Long - Đảo Bạch Long Vĩ
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="205">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/205.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Hồ Ba Bể - Thác Bản Giốc 3 ngày<span class="pull-right"
                                                                             style="margin-top: 10px; font-size: 15px;">7,000,000 - 8,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 3 ngày 2 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> HÀ NỘI - HỒ BA BỂ - THÁC BẢN GIỐCHà Nội
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> 20/11/2023
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="206">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/206.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hà Nội chùa Thầy - chùa Tây Phương<span class="pull-right"
                                                                        style="margin-top: 10px; font-size: 15px;">6,000,000 - 9,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 1 ngày 0 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> HÀ NỘI – CHÙA THẦY – CHÙA TÂY PHƯƠNG
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="207">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/207.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Bắc Ninh 1 ngày<span class="pull-right"
                                                             style="margin-top: 10px; font-size: 15px;">5,000,000 - 9,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 1 ngày 0 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> HÀ NỘI – BẮC NINH – ĐỀN ĐÔ
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="208">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/208.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Tam Đảo - Đền Chúa Thượng<span class="pull-right"
                                                                       style="margin-top: 10px;font-size: 15px;">5,000,000 - 8,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 1 ngày 0 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i> TAM ĐẢO - THÁC BẠC - ĐỀN CHÚA THƯỢNG NGÀN
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="209">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/209.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Hà Nội - Aquamarine Du Thuyền Ngủ<span class="pull-right"
                                                                       style="margin-top: 10px;font-size: 15px;">3,000,000 - 7,000,000đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 3 ngày 2 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i>  Hà Nội - Hạ Long - Đảo Tuần Châu - Hòn Đinh Hương
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i> Hàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->

                <div class="col-md-3 col-sm-6" id="210">
                    <div class="single-package-item">                         <p style="font-size: 30px;color: #00d8ff;font-family: Arial" class="overlay-text">chi tiết</p>
                        <img class="packageImage" src="../assets/images/item/210.png" alt="package-place">
                        <div class="single-package-item-txt">
                            <h3>Du lịch Tết Nguyên Đán Hà Giang<span class="pull-right"
                                                                     style="margin-top: 10px;font-size: 15px;">3,500,000 - 9,999,999đ</span>
                            </h3>
                            <div class="packages-para">
                                <p>
                        <span>
                            <i class="fa fa-clock-o"></i> 3 ngày 2 đêm
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa fa-location-arrow"></i>  Hà Nội - Hà Giang - Sông Nho Quế
                        </span>
                                </p>
                                <p>
                        <span>
                            <i class="fa-solid fa-calendar-days"></i>  Mùng 4 TếtHàng Ngày
                        </span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn">
                                <button class="about-view packages-btn">
                                    Đặt Tour
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->
                    </div><!--/.single-package-item-->
                </div><!--/.col-->
                <!--			End Mb 141-210			-->

            </div><!--/.row-->
            <div class="pagination">
                <nav class="pagination-container">
                    <div class="pagination">
                        <a class="pagination-newer" href="#pack" onclick="previousPage()">
                            <i class="fa-solid fa-chevron-left"></i></a>
                        <span class="pagination-inner">
								<a class="pagination-active" href="#pack" onclick="changePage(1)">1</a>
								<a href="#pack" onclick="changePage(2)">2</a>
								<a href="#pack" onclick="changePage(3)">3</a>
								<a href="#pack" onclick="changePage(4)">4</a>
								<a href="#pack" onclick="changePage(5)">5</a>
								<a href="#pack" onclick="changePage(6)">6</a>
								<a href="#pack" onclick="changePage(7)">7</a>
								<a href="#pack" onclick="changePage(8)">8</a>
								<a href="#pack" onclick="changePage(9)">9</a>
								<a href="#pack" onclick="changePage(10)">10</a>
								<a href="#pack" onclick="changePage(11)">11</a>
								<a href="#pack" onclick="changePage(12)">12</a>
								<a href="#pack" onclick="changePage(13)">13</a>
								<a href="#pack" onclick="changePage(14)">14</a>
							</span>
                        <a class="pagination-older" href="#pack" onclick="nextPage()">
                            <i class="fa-solid fa-chevron-right"></i>
                        </a>
                    </div>
                </nav>
            </div>

        </div>
    </div>
</section>
<!--/.packages-->
<!--packages end-->


<!--blog start-->
<section id="blog" class="blog">
    <div class="container">
        <div class="blog-details">
            <div class="gallary-header text-center">
                <h2>
                    Tin tức gần đây
                </h2>
                <p>
                    Các dữ liệu mới nhất được thu thập về tình hình du lịch.
                </p>
            </div>
            <!--/.gallery-header-->
            <div class="blog-content">
                <div class="row">

                    <div class="col-sm-4 col-md-4">
                        <div class="thumbnail">
                            <h2>tin mới <span> tháng 11 - 2023</span></h2>
                            <div class="thumbnail-img">
                                <img src="../assets/images/blog/b1.jpg" alt="blog-img" style="height:220px">
                                <div class="thumbnail-img-overlay"></div><!--/.thumbnail-img-overlay-->

                            </div><!--/.thumbnail-img-->

                            <div class="caption">
                                <div class="blog-txt">
                                    <h3>
                                        <a href="https://www.gso.gov.vn/du-lieu-va-so-lieu-thong-ke/2023/08/doanh-thu-dich-vu-tang-manh-trong-mua-cao-diem-du-lich-he-2023/" style="color: #00d8fe!important;" target="_blank">
                                            Lượng khách du lịch trong nước tăng mạnh.
                                        </a>
                                    </h3>
                                    <p>
                                        Theo số liệu thống kê của Tổng cục Du lịch, lượng khách du lịch nội địa trong tháng 11 năm 2023 đạt 7,5 triệu lượt, tăng 20% so với cùng kỳ năm trước.
                                        <br>
                                        Trong đó, khách nội địa đến các điểm du lịch biển, đảo tăng mạnh, đặc biệt là Nha Trang, Phú Quốc, Đà Nẵng,...
                                    </p>
                                    <a href="#">Read More</a>
                                </div><!--/.blog-txt-->
                            </div><!--/.caption-->
                        </div><!--/.thumbnail-->

                    </div><!--/.col-->

                    <div class="col-sm-4 col-md-4">
                        <div class="thumbnail">
                            <h2>tin mới <span> tháng 11 - 2023</span></h2>
                            <div class="thumbnail-img">
                                <img src="../assets/images/item/70.jpg" alt="blog-img" style="height:220px; width: 110%;">
                                <div class="thumbnail-img-overlay"></div><!--/.thumbnail-img-overlay-->

                            </div><!--/.thumbnail-img-->
                            <div class="caption">
                                <div class="blog-txt">
                                    <h3>
                                        <a href="https://vinpearl.com/vi/tron-bo-kinh-nghiem-du-lich-mien-tay-nam-bo-day-du-nhat" style="color: #00d8fe!important;" target="_blank">
                                            Các tour du lịch miền Tây Nam Bộ được nhiều du khách lựa chọn.
                                        </a>
                                    </h3>
                                    <p>
                                        Là một trong những điểm đến du lịch nổi tiếng của Việt Nam,
                                        với những cảnh đẹp sông nước, những món ăn ngon đặc sản và con người thân thiện.
                                        <br>
                                        Du lịch miền Tây được nhiều du khách lựa chọn, đặc biệt là các tour khám phá rừng tràm Trà Sư, Chợ nổi Cái Răng,...
                                    </p>
                                    <a href="#">Read More</a>
                                </div><!--/.blog-txt-->
                            </div><!--/.caption-->
                        </div><!--/.thumbnail-->

                    </div><!--/.col-->

                    <div class="col-sm-4 col-md-4">
                        <div class="thumbnail">
                            <h2>tin mới <span> tháng 11 - 2023</span></h2>
                            <div class="thumbnail-img">
                                <img src="../assets/images/item/14.jpg" alt="blog-img" style="height:220px; width: 110%;">
                                <div class="thumbnail-img-overlay"></div><!--/.thumbnail-img-overlay-->

                            </div><!--/.thumbnail-img-->
                            <div class="caption">
                                <div class="blog-txt">
                                    <h3><a href="https://vinpearl.com/vi/du-lich-bien-diem-danh-10-bai-bien-dep-bac-nhat-viet-nam" style="color: #00d8fe!important;" target="_blank">
                                        Các tour du lịch nghỉ dưỡng biển được ưu tiên.
                                    </a></h3>
                                    <p>
                                        Với thời tiết mát mẻ, dễ chịu, các tour du lịch nghỉ dưỡng biển được nhiều du khách ưu tiên lựa chọn trong tháng 11 năm 2023.
                                        <br>
                                        Các điểm du lịch biển nổi tiếng như Nha Trang,  Vũng Tàu,  Phú Quốc,  Đà Nẵng,...
                                        <br>đều có lượng khách tăng cao trong tháng này.
                                    </p>
                                    <a href="#">Read More</a>
                                </div><!--/.blog-txt-->
                            </div><!--/.caption-->
                        </div><!--/.thumbnail-->

                    </div><!--/.col-->

                </div><!--/.row-->
            </div><!--/.blog-content-->
        </div><!--/.blog-details-->
    </div><!--/.container-->

</section><!--/.blog-->
<!--blog end-->


<!-- testemonial Start -->
<section id="feedback" class="testemonial">
    <div class="container">

        <div class="gallary-header text-center">
            <h2>Đánh giá khách hàng</h2>
            <p>
                Đánh giá của khách hàng là tiêu chí quan trọng nhất để cải thiện dịch vụ.
            </p>

        </div><!--/.gallery-header-->

        <div class="owl-carousel owl-theme" id="testemonial-carousel">

            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img">
                        <img src="../assets/images/client/1.jpg" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            Tôi rất hài lòng với chuyến tour này và sẽ khuyên bạn bè và người thân tham gia.
                            Tôi muốn cảm ơn đội ngũ tổ chức tour đã tạo ra một kỷ niệm đáng nhớ.
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                Chị Kiều
                            </a>
                        </h3>
                        <h4>Mỹ Tho, Tiền Giang</h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->

            </div><!--/.item-->

            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img">
                        <img src="../assets/images/client/2.jpg" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            Tôi không thể hài lòng hơn với chuyến tour này. Từ đầu đến cuối, mọi thứ đều vượt quá mong
                            đợi của tôi.
                            Tôi đã có một trải nghiệm tuyệt vời và không thể quên.
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                Nguyễn Thanh Hằng
                            </a>
                        </h3>
                        <h4>Hà Nội, Việt Nam</h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->

            </div><!--/.item-->

            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img">
                        <img src="../assets/images/client/3.jpg" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            Hướng dẫn viên của chúng tôi là người tuyệt vời. Anh ấy không chỉ am hiểu về địa điểm mà còn
                            rất nhiệt tình và cởi mở.
                            Tôi rất thích chuyến đi.
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                Trần Minh Tuấn
                            </a>
                        </h3>
                        <h4>Đà Lạt, Việt Nam</h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->

            </div><!--/.item-->

            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img">
                        <img src="../assets/images/client/4.png" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            Các địa điểm du lịch mà chúng tôi đã thăm đều rất độc đáo và đẹp mắt.
                            Tôi đã có cơ hội khám phá những di sản văn hóa và thiên nhiên tuyệt vời.
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                Lê Thị Mai Anh
                            </a>
                        </h3>
                        <h4>Phú Quốc, Việt Nam</h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->

            </div><!--/.item-->

            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img">
                        <img src="../assets/images/client/5.png" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            Chất lượng dịch vụ trong chuyến tour này rất ấn tượng. Từ các nhà hàng đến chỗ ở và phương
                            tiện di chuyển,
                            mọi thứ đều rất chuyên nghiệp và đáng tin cậy.
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                Hoàng Văn Trường
                            </a>
                        </h3>
                        <h4>Nha Trang, Việt Nam</h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->

            </div><!--/.item-->

            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img">
                        <img src="../assets/images/client/3.png" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            Mặc dù chuyến tour tổ chức tốt. Tuy nhiên,
                            việc cung cấp thêm thông tin chi tiết về các hoạt động tùy chọn sẽ giúp khách hàng lựa chọn
                            tốt hơn.
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                Ngô Thị Hương Lan
                            </a>
                        </h3>
                        <h4>Huế, Việt Nam</h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->

            </div><!--/.item-->

            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img">
                        <img src="../assets/images/client/1.jpg" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            Tôi rất hài lòng với cách mà công ty tổ chức tour du lịch này đã liên lạc và giao tiếp với
                            khách hàng.
                            Điều này tạo ra sự tin tưởng cho chúng tôi trong suốt chuyến đi.
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                Trần Đức Minh
                            </a>
                        </h3>
                        <h4>Sapa, Việt Nam</h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->

            </div><!--/.item-->

            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img">
                        <img src="../assets/images/client/3.png" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            Chuyến tour này mang lại cho tôi một giá trị tuyệt vời. Với mức giá mà tôi trả, tôi thực sự
                            cảm thấy hài lòng về những gì chúng tôi nhận được.
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                Phạm Thị Linh
                            </a>
                        </h3>
                        <h4> Hội An, Việt Nam</h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->

            </div><!--/.item-->

            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img">
                        <img src="../assets/images/client/4.png" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            Mọi thứ đã được sắp xếp một cách rõ ràng và thông minh.
                            Tôi không phải lo lắng về bất kỳ chi tiết nào và có thể tận hưởng một chuyến đi trọn vẹn.
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                Võ Minh Hải
                            </a>
                        </h3>
                        <h4> Đà Nẵng, Việt Nam</h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->

            </div><!--/.item-->

        </div><!--/.testemonial-carousel-->
    </div><!--/.container-->

</section><!--/.testimonial-->
<!-- testemonial End -->

<!--service start-->
<section id="service" class="service">
    <div class="container">

        <div class="service-counter text-center">
            <div class="gallary-header text-center" style="margin-bottom: 66px">
                <h2 style="text-transform: none">
                    Vì sao nên chọn TourNest ?
                </h2>
                <p>
                    Chúng tôi có tất cả dịch vụ bạn cần.
                </p>
            </div>
            <div class="col-md-3 col-sm-3">
                <div class="single-service-box">
                    <div class="service-img">
                        <img src="../assets/images/service/icons8-map-50.png" alt="service-icon"/>
                    </div><!--/.service-img-->
                    <div class="service-content">
                        <h2>
                            <a href="#">
                                Nhiều tour hấp dẫn
                            </a>
                        </h2>
                        <p>Các điểm đến hot trong nước.</p>
                    </div><!--/.service-content-->
                </div><!--/.single-service-box-->
            </div><!--/.col-->

            <div class="col-md-3 col-sm-3">
                <div class="single-service-box">
                    <div class="service-img">
                        <img src="../assets/images/service/icons8-company-50.png" alt="service-icon"/>
                    </div><!--/.service-img-->
                    <div class="service-content">
                        <h2>
                            <a href="#">
                                Đội ngũ nhân viên
                            </a>
                        </h2>
                        <p>Được đào tạo bài bản với trình độ chuyên môn cao.</p>
                    </div><!--/.service-content-->
                </div><!--/.single-service-box-->
            </div><!--/.col-->

            <div class="col-md-3 col-sm-3">
                <div class="single-service-box">
                    <div class="statistics-img">
                        <img src="../assets/images/service/icons8-coin-50.png" alt="service-icon"/>
                    </div><!--/.service-img-->
                    <div class="service-content">

                        <h2>
                            <a href="#">
                                Chi phí
                            </a>
                        </h2>
                        <p>Luôn có mức giá tốt nhất với nhiều ưu đãi.</p>
                    </div><!--/.service-content-->
                </div><!--/.single-service-box-->
            </div><!--/.col-->

            <div class="col-md-3 col-sm-3">
                <div class="single-service-box">
                    <div class="statistics-img">
                        <img src="../assets/images/service/icons8-service-50.png" alt="service-icon"/>
                    </div><!--/.service-img-->
                    <div class="service-content">
                        <h2>
                            <a href="#">
                                Dịch vụ
                            </a>
                        </h2>
                        <p>Đa dạng – Chất lượng – An toàn.</p>
                    </div><!--/.service-content-->
                </div><!--/.single-service-box-->
            </div><!--/.col-->

        </div><!--/.statistics-counter-->
    </div><!--/.container-->

</section><!--/.service-->
<!--service end-->

<!--subscribe start-->
<section id="subs" class="subscribe">
    <div class="container">

        <div class="service-counter text-center">
            <div class="gallary-header text-center" style="margin-bottom: 66px">
                <h2 style="text-transform: none;color: whitesmoke">
                    Hãy tận hưởng chuyến đi của bạn tại TourNest
                </h2>
                <p>
                    trải nghiệm - tin tưởng - chia sẻ - du lịch
                </p>
            </div>

        </div><!--/.statistics-counter-->

        <form>
            <div class="row">
                <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="custom-input-group">
                        <input class="form-control" placeholder="Gửi mail cho chúng tôi về góp ý đánh giá">
                        <button class="appsLand-btn subscribe-btn" onclick="sendMail()">Gửi mail</button>
                        <div class="clearfix"></div>
                        <i class="fa fa-envelope"></i>
                    </div>

                </div>
            </div>
        </form>
    </div><!--/.container-->

</section>
<!--subscribe end-->

<!-- footer-copyright start -->
<footer class="footer-copyright">
    <div class="container">
        <div class="footer-content">
            <div class="row">

                <div class="col-sm-3">
                    <div class="single-footer-item">
                        <div class="footer-logo">
                            <a href="index.html">
                                tour<span>Nest</span>
                            </a>
                            <p>
                                best travel tour guide
                            </p>
                        </div>
                    </div><!--/.single-footer-item-->
                </div><!--/.col-->

                <div class="col-sm-3">
                    <div class="single-footer-item">
                        <h2>Đối tác hợp tác</h2>
                        <div class="single-footer-txt">
                            <p><a href="https://www.traveloka.com/vi-vn/" target=”_blank”>traveloka</a></p>
                            <p><a href="https://www.ivivu.com/" target=”_blank”>ivivu</a></p>
                            <p><a href="https://www.saigontourist.net/" target=”_blank”>saigon tourist</a></p>
                            <p><a href="https://travel.com.vn/" target=”_blank”>travel</a></p>
                            <p><a href="https://www.vietnambooking.com/" target=”_blank”>vietnam booking</a></p>
                            <p><a href="https://dulichviet.com.vn/" target=”_blank”>dulichviet</a></p>
                        </div><!--/.single-footer-txt-->
                    </div><!--/.single-footer-item-->

                </div><!--/.col-->

                <div class="col-sm-3">
                    <div class="single-footer-item">
                        <h2>Điểm du lịch nổi tiếng</h2>
                        <div class="single-footer-txt">
                            <p><a href="#">hà nội</a></p>
                            <p><a href="#">tp hồ chí minh</a></p>
                            <p><a href="#">vũng tàu</a></p>
                            <p><a href="#">đà lạt</a></p>
                            <p><a href="#">nha trang</a></p>
                        </div><!--/.single-footer-txt-->
                    </div><!--/.single-footer-item-->
                </div><!--/.col-->

                <div class="col-sm-3">
                    <div class="single-footer-item text-center">
                        <h2 class="text-left">contacts</h2>
                        <div class="single-footer-txt text-left">
                            <p><i class="fa-solid fa-phone"></i> (+84) 249 999 16</p>
                            <p class="foot-email" style="text-transform:none;">
                                <a href="https://maps.app.goo.gl/FGwPZ4BdY2CuKke98" target="_blank"><i class="fa-solid fa-map-location-dot"></i></i> 31 Đ. Số 6, Đông Hoà, Thủ Đức, Thành phố Hồ Chí Minh</a></p>
                            <p>Võ Minh Thịnh</p>
                            <p class="foot-email" style="text-transform:none;">
                                <a href="mailto:21130549@st.hcmuaf.edu.vn"><i class="fa-solid fa-envelope"></i> 21130549@st.hcmuaf.edu.vn</a></p>
                            <p>Mai Xuân Thức</p>
                            <p class="foot-email" style="text-transform:none;">
                                <a href="mailto:21130558@st.hcmuaf.edu.vn"><i class="fa-solid fa-envelope"></i> 21130558@st.hcmuaf.edu.vn</a></p>
                            <p>Trần Quang Vũ</p>
                            <p class="foot-email" style="text-transform:none;">
                                <a href="mailto:21130615@st.hcmuaf.edu.vn"><i class="fa-solid fa-envelope"></i> 21130615@st.hcmuaf.edu.vn</a></p>
                        </div><!--/.single-footer-txt-->
                    </div><!--/.single-footer-item-->
                </div><!--/.col-->

            </div><!--/.row-->

            <hr>
            <div class="foot-icons ">
                <ul class="footer-social-links list-inline list-unstyled">
                    <li><a href="https://www.facebook.com/TourNest.org" target="_blank" class="foot-icon-bg-1"><i
                            class="fa-brands fa-facebook fa-xl"></i></a>
                    </li>
                    <li><a href="https://twitter.com/tournest_io" target="_blank" class="foot-icon-bg-2"><i
                            class="fa-brands fa-twitter fa-xl"></i></a>
                    </li>
                    <li><a href="https://www.instagram.com/tournest.io/" target="_blank" class="foot-icon-bg-3"><i class="fa-brands fa-instagram fa-xl"></i></a>
                    </li>
                </ul>
                <p>&copy; 2023-2024 <a href="https://github.com/MinhThinhrine/Do_An_Web" target="_blank">Nhóm 18</a>. All Right Reserved.</p>

            </div><!--/.foot-icons-->
            <div id="scroll-Top">
                <i class="fa fa-angle-double-up return-to-top" id="scroll-top top" data-toggle="tooltip"
                   data-placement="top"
                   title="" data-original-title="Back to Top" aria-hidden="true"></i>
            </div><!--/.scroll-Top-->
        </div><!-- /.container-->
    </div>
</footer><!-- /.footer-copyright-->
<!-- footer-copyright end -->


<script src="../assets/js/jquery.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->

<!--modernizr.min.js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>


<!--bootstrap.min.js-->
<script src="../assets/js/bootstrap.min.js"></script>

<!-- bootsnav js -->
<script src="../assets/js/bootsnav.js"></script>

<!-- jquery.filterizr.min.js -->
<script src="../assets/js/jquery.filterizr.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

<!--jquery-ui.min.js-->
<script src="../assets/js/jquery-ui.min.js"></script>

<!-- counter js -->
<script src="../assets/js/jquery.counterup.min.js"></script>
<script src="../assets/js/waypoints.min.js"></script>

<!--owl.carousel.js-->
<script src="../assets/js/owl.carousel.min.js"></script>

<!-- jquery.sticky.js -->
<script src="../assets/js/jquery.sticky.js"></script>

<!--datepicker.js-->
<script src="../assets/js/datepicker.js"></script>

<!--Custom JS-->
<script src="../assets/js/custom.js"></script>
<script src="../assets/js/modify.js"></script>

</body>
</html>
