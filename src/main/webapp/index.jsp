<%@ page import="vn.edu.hcmuaf.bean.Tour" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="vn.edu.hcmuaf.DAO.indexDao" %>
<%@ page import="vn.edu.hcmuaf.bean.Feedback" %>
<%@ page import="java.util.Random" %>
<%@ page import="vn.edu.hcmuaf.bean.news" %>
<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored= "false"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    indexDao ind = new indexDao();
    List<Feedback> fback = ind.getFeedbacks() ;
    List<news> news = ind.getAllNews();
%>
<%@include file="common/tablib.jsp" %>

<html class="no-js" lang="vi">

<%--head--%>
<%@include file="common/head.jsp" %>
<%--<%     List<Tour> toursli = (List<Tour>) request.getAttribute("tours"); %>--%>
<title>TourNest</title>
<%--End head--%>
<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade
    your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- main-menu Start -->
<%@include file="common/header.jsp" %>
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
                                    <a href="CategorieServlet" style="width: 200px; padding: 20px;height: 60px;">Khám
                                        phá ngay</a>
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
                        <form action="SearchController" method="post"> <!-- form search-->
                            <input type="text" name="action" value="searchByLocation" style="display: none">
                            <div class="tab-content">

                                <div role="tabpanel" class="tab-pane active fade in" id="tours">
                                    <div class="tab-para">

                                        <div class="row">
                                            <div class="col-lg-6 col-md-4 col-sm-12">
                                                <div class="single-tab-select-box">

                                                    <h2>Điểm đi</h2>

                                                    <div class="travel-select-icon">
                                                        <select class="form-control" name="dxp">
                                                            <option value="">Tất cả điểm xuất phát </option>
                                                            <!-- Nam -->
                                                            <option name="dxp" value="Tp Hồ Chí Minh">Tp Hồ Chí Minh</option>
                                                            <option name="dxp" value="Hà Nội">Hà Nội</option>
                                                            <option disabled value="nam"><-- Nam --></option>

                                                            <option name="dxp" value="An Giang">An Giang</option>
                                                            <option name="dxp" value="Bạc Liêu">Bạc Liêu</option>
                                                            <option name="dxp" value="Bến Tre">Bến Tre</option>
                                                            <option name="dxp" value="Bình Định">Bình Định</option>
                                                            <option name="dxp" value="Bình Phước">Bình Phước</option>
                                                            <option name="dxp" value="Bình Thuận">Bình Thuận</option>
                                                            <option name="dxp" value="Cà Mau">Cà Mau</option>
                                                            <option name="dxp" value="Cần Thơ">Cần Thơ</option>
                                                            <!-- Các tỉnh khác ở Nam -->
                                                            <option name="dxp" value="Bình Dương">Bình Dương</option>
                                                            <option name="dxp" value="Tây Ninh">Tây Ninh</option>
                                                            <option name="dxp" value="Vũng Tàu">Vũng Tàu</option>
                                                            <option name="dxp" value="Tiền Giang">Tiền Giang</option>
                                                            <option name="dxp" value="Đồng Tháp">Đồng Tháp</option>

                                                            <!-- Trung -->
                                                            <option disabled value="trung"><-- Trung --></option>

                                                            <option name="dxp" value="Đà Nẵng">Đà Nẵng</option>
                                                            <option name="dxp" value="Hà Tĩnh">Hà Tĩnh</option>
                                                            <option name="dxp" value="Nghệ An">Nghệ An</option>
                                                            <option name="dxp" value="Quảng Bình">Quảng Bình</option>
                                                            <option name="dxp" value="Quảng Nam">Quảng Nam</option>
                                                            <option name="dxp" value="Quảng Ngãi">Quảng Ngãi</option>
                                                            <option name="dxp" value="Quảng Trị">Quảng Trị</option>
                                                            <option name="dxp" value="Thanh Hóa">Thanh Hóa</option>
                                                            <!-- Các tỉnh khác ở Trung -->
                                                            <option name="dxp" value="Phú Yên">Phú Yên</option>
                                                            <option name="dxp" value="Lâm Đồng">Lâm Đồng</option>
                                                            <option name="dxp" value="Hà Tĩnh">Hà Tĩnh</option>
                                                            <option name="dxp" value="Quảng Bình">Quảng Bình</option>


                                                            <!-- Bắc -->
                                                            <option disabled value="bac"><-- Bắc --></option>
                                                            <option name="dxp" value="Bắc Ninh">Bắc Ninh</option>

                                                            <option name="dxp" value="Bắc Giang">Bắc Giang</option>
                                                            <option name="dxp" value="Bắc Kạn">Bắc Kạn</option>
                                                            <option name="dxp" value="Cao Bằng">Cao Bằng</option>
                                                            <option name="dxp" value="Hà Giang">Hà Giang</option>
                                                            <option name="dxp" value="Lai Châu">Lai Châu</option>
                                                            <option name="dxp" value="Lạng Sơn">Lạng Sơn</option>
                                                            <option name="dxp" value="Nam Định">Nam Định</option>
                                                            <option name="dxp" value="Phú Thọ">Phú Thọ</option>
                                                            <option name="dxp" value="Quảng Ninh">Quảng Ninh</option>
                                                            <option name="dxp" value="Thái Bình">Thái Bình</option>
                                                            <option name="dxp" value="Thái Nguyên">Thái Nguyên</option>
                                                            <option name="dxp" value="Tuyên Quang">Tuyên Quang</option>
                                                            <option name="dxp" value="Yên Bái">Yên Bái</option>



                                                        </select><!-- /.select-->

                                                    </div><!-- /.travel-select-icon -->
                                                    <h2>Điểm đến</h2>
                                                    <div class="travel-select-icon">
                                                        <select class="form-control" name="diemden">
                                                            <option value="">Tất cả đểm đến</option>
                                                            <!-- Nam -->
                                                            <option name="diemden" value="Tp Hồ Chí Minh">Tp Hồ Chí
                                                                Minh
                                                            </option>
                                                            <option name="diemden" value="Hà Nội">Hà Nội</option>
                                                            <option disabled value="nam"><-- Nam --></option>

                                                            <option name="diemden" value="Bình Phước">Bình Phước</option>
                                                            <option name="diemden" value="Bình Dương">Bình Dương</option>
                                                            <option name="diemden" value="Đồng Nai">Đồng Nai</option>
                                                            <option name="diemden" value="Tây Ninh">Tây Ninh</option>
                                                            <option name="diemden" value="Tiền Giang">Tiền Giang</option>
                                                            <option name="diemden" value="Đồng Tháp">Đồng Tháp</option>

                                                            <option name="diemden" value="An Giang">An Giang</option>
                                                            <option name="diemden" value="Bạc Liêu">Bạc Liêu</option>
                                                            <option name="diemden" value="Bến Tre">Bến Tre</option>
                                                            <option name="diemden" value="Bình Định">Bình Định</option>
                                                            <option name="diemden" value="Bình Phước">Bình Phước
                                                            </option>
                                                            <option name="diemden" value="Bình Thuận">Bình Thuận
                                                            </option>
                                                            <option name="diemden" value="Cà Mau">Cà Mau</option>
                                                            <option name="diemden" value="Cần Thơ">Cần Thơ</option>
                                                            <option name="diemden" value="Đồng Nai">Đồng Nai</option>
                                                            <option name="diemden" value="Đồng Tháp">Đồng Tháp</option>
                                                            <option name="diemden" value="Hậu Giang">Hậu Giang</option>
                                                            <option name="diemden" value="Kiên Giang">Kiên Giang
                                                            </option>
                                                            <option name="diemden" value="Sóc Trăng">Sóc Trăng</option>
                                                            <option name="diemden" value="Tây Ninh">Tây Ninh</option>
                                                            <option name="diemden" value="Vĩnh Phúc">Vĩnh Phúc</option>
                                                            <option name="diemden" value="Vũng Tàu">Vũng Tàu</option>
                                                            <!-- Trung -->
                                                            <option disabled name="diemden" value="trung"><-- Trung
                                                                -->
                                                            </option>

                                                            <option name="diemden" value="Đà Nẵng">Đà Nẵng</option>
                                                            <option name="diemden" value="Hà Tĩnh">Hà Tĩnh</option>
                                                            <option name="diemden" value="Nghệ An">Nghệ An</option>
                                                            <option name="diemden" value="Quảng Bình">Quảng Bình
                                                            </option>
                                                            <option name="diemden" value="Quảng Nam">Quảng Nam</option>
                                                            <option name="diemden" value="Quảng Ngãi">Quảng Ngãi
                                                            </option>
                                                            <option name="diemden" value="Quảng Trị">Quảng Trị</option>
                                                            <option name="diemden" value="Thanh Hóa">Thanh Hóa</option>
                                                            <option name="diemden" value="Phú Yên">Phú Yên</option>
                                                            <option name="diemden" value="Lâm Đồng">Lâm Đồng</option>
                                                            <option name="diemden" value="Hà Tĩnh">Hà Tĩnh</option>
                                                            <option name="diemden" value="Quảng Bình">Quảng Bình</option>
                                                            <option name="diemden" value="Thừa Thiên Huế">Thừa Thiên Huế</option>
                                                            <option name="diemden" value="Gia Lai">Gia Lai</option>
                                                            <option name="diemden" value="Bình Định">Bình Định</option>
                                                            <!-- Bắc -->
                                                            <option disabled value="bac"><-- Bắc --></option>

                                                            <option name="diemden" value="Bắc Giang">Bắc Giang</option>
                                                            <option name="diemden" value="Bắc Kạn">Bắc Kạn</option>
                                                            <option name="diemden" value="Cao Bằng">Cao Bằng</option>
                                                            <option name="diemden" value="Hà Giang">Hà Giang</option>
                                                            <option name="diemden" value="Lai Châu">Lai Châu</option>
                                                            <option name="diemden" value="Lạng Sơn">Lạng Sơn</option>
                                                            <option name="diemden" value="Nam Định">Nam Định</option>
                                                            <option name="diemden" value="Phú Thọ">Phú Thọ</option>
                                                            <option name="diemden" value="Quảng Ninh">Quảng Ninh
                                                            </option>
                                                            <option name="diemden" value="Thái Bình">Thái Bình</option>
                                                            <option name="diemden" value="Thái Nguyên">Thái Nguyên
                                                            </option>
                                                            <option name="diemden" value="Tuyên Quang">Tuyên Quang
                                                            </option>
                                                            <option name="diemden" value="Yên Bái">Yên Bái</option>
                                                            <option name="diemden" value="Hải Phòng">Hải Phòng</option>
                                                            <option name="diemden" value="Hải Dương">Hải Dương</option>

                                                        </select><!-- /.select -->

                                                    </div><!-- /.travel-select-icon -->

                                                </div><!--/.single-tab-select-box-->
                                            </div><!--/.col-->

                                            <div class="col-lg-6 col-md-1 col-sm-6" style="height: 130px">
                                            </div>

                                            <div class="col-lg-6 col-md-1 col-sm-6">
                                                <div class="about-btn travel-mrt-0 pull-right">
                                                    <button id="searchButton" type="submit"
                                                            class="about-view travel-btn">
                                                        <a
                                                                style="text-decoration: none; text-transform: uppercase;width: 180px; padding: 20px;height: 60px;">tìm
                                                            kiếm
                                                            <i class="fa-solid fa-magnifying-glass"></i>
                                                        </a>
                                                    </button>
                                                    <!--/.travel-btn-->
                                                </div>
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

                                    </div><!--/.tab-para-->

                                </div><!--/.tabpannel-->

                            </div><!--/.tab content-->
                        </form><!--/.form search-->
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
                            <img src="assets/images/offer/offer-shape.png" alt="offer-shape">
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
                                    <img src="assets/images/item/2.jpg" alt="portfolio image"/>
                                    <div class="item-title">
                                        <a href="DetailsServlet?id=2">
                                            Phú Quốc
                                        </a>
                                        <p><span>tours hằng ngày</span><br><span>7 địa điểm</span></p>
                                    </div><!-- /.item-title -->
                                </div><!-- /.filtr-item -->
                            </div><!-- /.col -->

                            <div class="col-md-6">
                                <div class="filtr-item" style="height: 310px;width: 555px;">
                                    <img src="assets/images/item/193.png" alt="portfolio image"/>
                                    <div class="item-title">
                                        <a href="DetailsServlet?id=193">
                                            Sapa
                                        </a>
                                        <p><span>tours hằng ngày</span><br><span>4 địa điểm</span></p>
                                    </div> <!-- /.item-title-->
                                </div><!-- /.filtr-item -->
                            </div><!-- /.col -->

                            <div class="col-md-4">
                                <div class="filtr-item">
                                    <img src="assets/images/item/63.jpg" alt="portfolio image" style="object-fit: cover;height: 650px"/>
                                    <div class="item-title">
                                        <a href="DetailsServlet?id=63">
                                            Hạ Long
                                        </a>
                                        <p>Tour Hàng Ngày </br>
                                            <span>10 Địa Điểm</span></p>
                                    </div><!-- /.item-title -->
                                </div><!-- /.filtr-item -->
                            </div><!-- /.col -->

                            <div class="col-md-4">
                                <div class="filtr-item" style="height: 310px;width: 360px;">
                                    <img src="assets/images/item/70.jpg" alt="portfolio image"/>
                                    <div class="item-title">
                                        <a href="DetailsServlet?id=70" style="width: 215px">
                                            Chợ Nổi Cái Răng
                                        </a>
                                        <p><span>tours hằng ngày</span><br><span>7 địa điểm</span></p>
                                    </div> <!-- /.item-title-->
                                </div><!-- /.filtr-item -->
                            </div><!-- /.col -->

                            <div class="col-md-4">
                                <div class="filtr-item" style="height: 310px;width: 360px;">
                                    <img src="assets/images/item/204.png" alt="portfolio image"/>
                                    <div class="item-title">
                                        <a href="DetailsServlet?id=204">
                                            Hạ Long
                                        </a>
                                        <p><span>tours hằng ngày</span><br><span>12 địa điểm</span></p>
                                    </div> <!-- /.item-title-->
                                </div><!-- /.filtr-item -->
                            </div><!-- /.col -->

                            <div class="col-md-8">
                                <div class="filtr-item" style="height: 310px;width: 750px;">
                                    <img src="assets/images/item/14.jpg" alt="portfolio image"/>
                                    <div class="item-title">
                                        <a href="DetailsServlet?id=14">
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
                    <% for (news n : news) { %>
                    <div class="col-sm-4 col-md-4">
                        <div class="thumbnail">
                            <h2>tin mới <span><%= n.getDate() %></span></h2>
                            <div class="thumbnail-img">
                                <a href="<%= n.getNewsLink() %>" style="cursor: pointer">
                                    <img src="assets/images/blog/<%= n.getImage()%>" alt="blog-img" style="height:220px">
                                </a>
                                <div class="thumbnail-img-overlay"></div><!--/.thumbnail-img-overlay-->
                            </div><!--/.thumbnail-img-->
                            <div class="caption">
                                <div class="blog-txt">
                                    <h3>
                                        <a style="color: #00d8fe!important;">
                                            <%= n.getTitle() %>
                                        </a>
                                    </h3>
                                    <p style="height: 300px;text-align: justify"><%= n.getContent() %>
                                    </p>
                                    <a href="<%= n.getNewsLink() %>" style="color: #b20909!important;">Read More</a>
                                </div><!--/.blog-txt-->
                            </div><!--/.caption-->
                        </div><!--/.thumbnail-->
                    </div><!--/.col-->
                    <% } %>

                </div><!--/.row-->
            </div><!--/.blog-content-->
        </div><!--/.blog-details-->
    </div><!--/.container-->

</section><!--/.blog-->

<!--blog end-->


<!-- feedback -->
<!-- feedback Start -->

<section id="feedback" class="testemonial">
    <div class="container">

        <div class="gallary-header text-center">
            <h2>Đánh giá khách hàng</h2>
            <p>
                Đánh giá của khách hàng là tiêu chí quan trọng nhất để cải thiện dịch vụ.
            </p>

        </div><!--/.gallery-header-->

        <div class="owl-carousel owl-theme" id="testemonial-carousel">
            <% for (Feedback f : fback) { %>
            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img"><% Random random = new Random();%>
                        <img src="assets/images/client/<%=random.nextInt(3)+1%>.png" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            <%=f.getText()%>
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                <% String uN = ind.getUserNameById(f.getUserId()); %>
                                <%=uN%>
                            </a>
                        </h3>
                        <h4><%=f.getDate()%>></h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->
            </div><!--/.item-->
            <% } %>

        </div><!--/.testemonial-carousel-->
    </div><!--/.container-->

</section><!--/.testimonial-->


<!-- feedback End -->



<!-- feedback -->

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
                        <img src="assets/images/service/icons8-map-50.png" alt="service-icon"/>
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
                        <img src="assets/images/service/icons8-company-50.png" alt="service-icon"/>
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
                        <img src="assets/images/service/icons8-coin-50.png" alt="service-icon"/>
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
                        <img src="assets/images/service/icons8-service-50.png" alt="service-icon"/>
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
<%--feedback--%>
        <div id="customAlert"></div>

        <style>
            #customAlert {
                position: fixed;
                top: 10px;
                right: 10px;
                display: none;
                padding: 10px;
                background-color: #f0f0f0;
                border: 1px solid #ccc;
                border-radius: 5px;
                z-index: 9999;
            }
        </style>

        <form action="FeedServlet" method="post" onsubmit="return validateForm()">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="custom-input-group">
                        <input class="form-control" id="danhgiaInput" name="danhgia" value="" placeholder="Gửi cho chúng tôi về góp ý đánh giá" minlength="3">
                        <button class="appsLand-btn subscribe-btn" type="submit">Gửi</button>
                        <div class="clearfix"></div>
                        <i class="fa fa-envelope"></i>
                    </div>
                </div>
            </div>
        </form>

        <script>
            function validateForm() {
                var danhgiaInput = document.getElementById('danhgiaInput').value;

                if (danhgiaInput.trim() === '') {
                    // Nếu giá trị của input là rỗng sau khi loại bỏ khoảng trắng
                    var customAlertDiv = document.getElementById("customAlert");
                    customAlertDiv.innerHTML = 'Vui lòng nhập nội dung đánh giá trước khi gửi.';
                    customAlertDiv.style.display = "block";

                    // Tự động ẩn hộp thoại sau 3 giây
                    setTimeout(function () {
                        customAlertDiv.style.display = "none";
                    }, 3000);

                    return false; // Ngăn chặn form được gửi
                }

                return true; // Cho phép form được gửi
            }

        </script>

        <script>
            <% String ketqua = (String) session.getAttribute("errorfeed");
                ketqua = (ketqua == null || ketqua.equals("null")) ? "" : ketqua;
                System.out.println(ketqua+"jsp");
            %>
            var danhgiaInput = '<%= ketqua %>';
            if ( danhgiaInput != ''){

                // Đối với trang mới
                var customAlertDiv = document.getElementById("customAlert");


                customAlertDiv.innerHTML = danhgiaInput;
                customAlertDiv.style.display = "block";
                // Tự động ẩn hộp thoại sau 3 giây

                setTimeout(function () {
                    customAlertDiv.style.display = "none";
                }, 3000);
                <%session.removeAttribute("errorfeed");%>
                // window.location.href = "http://localhost:8080/Do_An_Web/index.jsp";
            }
        </script>


    </div><!--/.container-->
    <%--feedback--%>

</section>
<!--subscribe end-->

<!-- footer-copyright start -->
<%@include file="common/footer.jsp"%><!-- /.footer-copyright-->
<!-- footer-copyright end -->


<script src="assets/js/jquery.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->

<!--modernizr.min.js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>


<!--bootstrap.min.js-->
<script src="assets/js/bootstrap.min.js"></script>

<!-- bootsnav js -->
<script src="assets/js/bootsnav.js"></script>

<!-- jquery.filterizr.min.js -->
<script src="assets/js/jquery.filterizr.min.js"></script>

<%--<script>--%>
<%--    function validateForm() {--%>
<%--        var inputField = document.getElementById("danhgiaInput");--%>
<%--        if (inputField.value.length < 3) {--%>
<%--            alert("Vui lòng nhập ít nhất 3 ký tự.");--%>
<%--            return false; // Ngăn chặn submit--%>
<%--        }--%>
<%--        return true; // Cho phép submit--%>
<%--    }--%>
<%--</script>--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

<!--jquery-ui.min.js-->
<script src="assets/js/jquery-ui.min.js"></script>

<!-- counter js -->
<script src="assets/js/jquery.counterup.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>

<!--owl.carousel.js-->
<script src="assets/js/owl.carousel.min.js"></script>

<!-- jquery.sticky.js -->
<script src="assets/js/jquery.sticky.js"></script>

<!--datepicker.js-->
<script src="assets/js/datepicker.js"></script>

<!--Custom JS-->
<script src="assets/js/modify.js"></script>
<script src="assets/js/custom.js"></script>

</body>

</html>