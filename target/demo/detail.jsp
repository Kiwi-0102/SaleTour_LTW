<%@ page import="vn.edu.hcmuaf.bean.User" %>
<!doctype html>
<html lang="vi">
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="common/tablib.jsp" %>
<%@ page import="java.util.Objects" %>
<%@ page import="vn.edu.hcmuaf.bean.Tour" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="vn.edu.hcmuaf.bean.valies" %>
<%@ page import="java.util.ArrayList" %>
<% Tour t = (Tour) request.getAttribute("tour");%>
<head>
    <!-- META DATA -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!--font-family-->
    <link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet"/>

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet"/>
    <link rel="stylesheet" href="assets/css/detail.css">

    <!-- TITLE OF SITE -->
    <title>Chi tiết</title>

    <!-- favicon img -->
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>

    <!--font-awesome.min.css-->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>

    <!--animate.css-->
    <link rel="stylesheet" href="assets/css/animate.css"/>

    <!--hover.css-->
    <link rel="stylesheet" href="assets/css/hover-min.css">

    <!--datepicker.css-->
    <link rel="stylesheet" href="assets/css/datepicker.css">

    <!--owl.carousel.css-->
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css"/>

    <!-- range css-->
    <link rel="stylesheet" href="assets/css/jquery-ui.min.css"/>

    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>

    <!-- bootsnav -->
    <link rel="stylesheet" href="assets/css/bootsnav.css"/>

    <!--style.css-->
    <link rel="stylesheet" href="assets/css/style.css"/>

    <!--responsive.css-->
    <link rel="stylesheet" href="assets/css/responsive.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<%--<!--[if lte IE 9]>--%>
<%--<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade--%>
<%--    your browser</a> to improve your experience and security.</p>--%>
<%--<![endif]-->--%>

<!-- main-menu Start -->
<header class="top-area" style="background-color: #4d4e53;margin-top: -120px;">
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <div class="logo">
                        <a href="index.jsp">
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
                                <li class="smooth-menu"><a href="index.jsp#home">Trang Chủ</a></li>
                                <li class="smooth-menu"><a href="index.jsp#spo">Ưu Đãi</a></li>
                                <li class="smooth-menu"><a href="index.jsp#gallery">Tour Hot</a></li>
                                <li><a href="CategorieServlet">Sản Phẩm</a></li>
                                <li class="smooth-menu"><a href="index.jsp#blog">Tin Tức</a></li>
                                <li class="smooth-menu"><a href="index.jsp#feedback">Đánh Giá</a></li>
                                <li class="smooth-menu"><a href="index.jsp#service">Liên Hệ</a></li>
                                <%
                                    User user = (User) session.getAttribute("user");
                                    ArrayList<valies> vali_List = (ArrayList<valies>) session.getAttribute("vali-List");
                                    int touronvali;
                                    if(vali_List==null){
                                        touronvali = 0;
                                    }else {
                                        touronvali = vali_List.size();
                                    }
                                %>
                                <% if (Objects.nonNull(user)) { %>
                                <li class="navbar-toggle"><a href="vali.jsp" id="myTour"><i
                                        class="fa fa-suitcase-rolling fa-2x"
                                        style="margin-top: -10px;color: #00d8fe"><sub style="padding: 3px 5px;
                                                        font-size: 12px;
                                                        color: #fff6f6;
                                                        margin: -7px -5px 0px;
                                                        border-radius: 50%;
                                                        background-color: rgb(21 62 138);"><%=touronvali%></sub></i></a>
                                </li>
                                <!-- Hiển thị icon và tên người dùng -->
                                <li id="icon-user" class="smooth-menu">
                                    <i class="fa-regular fa-circle-user" style="color: #ffffff;"></i>
                                    <ul id="service_account">
                                        <li><a id="myInfor" href="infor.jsp">Tài Khoản</a></li>
                                        <li><a id="bill" href="bill.jsp">Hóa Đơn </a></li>
                                        <li>
                                            <form action="login" method="get">
                                                <button type="submit" name="action" id="logout" value="logout">Đăng Xuất</button>
                                            </form></li>
                                    </ul>
                                    <span class="username"><%= user.getUserName() %></span>
                                </li>
                                <% } else { %>
                                <!-- Hiển thị nút đăng nhập -->
                                <li>
                                    <button class="book-btn" id="buttonTour" style="margin-top: -2px;">
                                        <a href="login.jsp">Đăng Nhập</a>
                                    </button>
                                </li>
                                <% } %>

                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.main-menu-->
                </div><!-- /.col-->
            </div><!-- /.row -->
            <div class="home-border"></div><!-- /.home-border-->
        </div><!-- /.container-->
    </div><!-- /.header-area -->
</header>
<!-- main-menu End -->

<div id="contentbody">
    <div class="wrapcont">
        <div class="wrapperr">
            <div class="mod-content row" style="margin-top: 120px;">

                <div id="vnt-main" class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div id="vnt-slide-thumbnail" class="slick-init slick-initialized slick-slider">
                        <div class="slick-list draggable">
                            <div class="slick-track" style="opacity: 1; width: 774px;">
                                <div class="slick-slide slick-current slick-active" data-slick-index="0"
                                     aria-hidden="false"
                                     style="width: 774px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;">
                                    <div>
                                        <div class="item" style="width: 700px;height: 515px; display: inline-block;">
                                            <div class="img"><img
                                                    src="assets/images/item/<%=t.getImage()%>"
                                                    alt="Du lịch <%=t.getName()%>" style="width: 700px;height: 515px;">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="hidden-lg hidden-md">
                        <div class="boxPrice">
                            <div class="price">
                                <div class="txt">Giá từ:</div>
                                <div class="red" id="gia_mb"><%=t.getPrice()%></div>
                            </div>
                            <div class="bot">
                                <div class="btn-booking dt">
                                    <button type="button" class="render-form btn-contact-tour">Thêm vào</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <p id="flag1" style="height: 80px;text-transform: capitalize;font-size: 30px"> Hãy tận hưởng chuyến
                        đi của bạn tại Tour<span style="color: #00d8fe">Nest</span></p>
                    <div class="boxTour">
                        <div class="title"><span> <i class="fa fa-info-circle"></i> Điểm nhấn hành trình</span></div>
                        <div class="content">
                            <table border="0" cellpadding="15" cellspacing="15" style="width:100%;">
                                <tbody>
                                <tr>
                                    <td style="width: 15%;"><span
                                            style="color:#555555;"><strong>Hành trình</strong></span></td>
                                    <td>
                                        <span style="color:#555555;"><strong><%=t.getName()%></strong></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><span style="color:#555555;"><strong>Lịch trình</strong></span></td>
                                    <td><span style="color:#555555;"><strong><%=t.getDuration()%></strong></span></td>
                                </tr>
                                <tr>
                                    <td><span style="color:#555555;"><strong>Khởi hành</strong></span></td>
                                    <td><strong><span style="color:#555555;"><%=t.getStartTime()%></span></strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td><span style="color:#555555;"><strong>Vận chuyển</strong></span></td>
                                    <td><span style="color:#555555;">
                                <strong>Xe du lịch đời mới</strong></span></td>
                                </tr>
                                </tbody>
                            </table>
                            <p style="text-align: justify;"><em><strong>Tour <%=t.getName()%> - </strong><%=t.getDescription()%></em></p>
                            <div class="linkMore text-right"><a href="javascript:void(0)" id="xemthem" data-id="16764"
                                                                data-table="tour"><span>Xem thêm »</span></a></div>
                        </div>
                    </div>
                    <div class="boxTour">
                        <div class="title"><span><i class="fa fa-map-o"></i> Lịch trình</span></div>
                        <div class="content">
                            <div class="listDay">
                                <% String schedule =t.getSchedule().trim();
                                    String[] parts = schedule.split("-");
                                %>

                                   <% for (int i = 0; i < parts.length; i++) {
                                       String part = parts[i];
                                       String dk = part.trim().toLowerCase();
                                       String[] ctent = part.split("/");
                                       String ctPart = "";
                                       if(part.contains("/")){
                                           part = ctent[0];
                                           ctPart = ctent[1];
                                       }
                                        if(dk.startsWith("ngày")) {
                                   %>

                                <div class="day active">
                                    <div class="titDay"><span><%=part%></span></div>
                                    <div class="arrow-up"></div>
                                    <div class="contDay" style="display: block;">
                                        <div class="the-content desc">
                                            <%=ctPart%>
                                        </div>
                                    </div>
                                </div>
                                <% } else {
                                    int d = i+1; %>
                                <div class="day active">
                                    <div class="titDay"><span>NGÀY <%=d%> : <%=part%></span></div>
                                    <div class="arrow-up"></div>
                                    <div class="contDay" style="display: block;">
                                        <div class="the-content desc">
                                            <%=ctPart%>
                                        </div>
                                    </div>
                                </div>
                                <% } } %>
                                <div id="flag3"></div>
                            </div>
                        </div>
                    </div>
                    <div class="boxTour">
                        <div class="title service-more" style="cursor:pointer"><span><i class="fa fa-paperclip"></i> Dịch vụ bao gồm và không bao gồm</span>
                            <span class="xemthem" style="font-size:16px;padding-left:0">(Xem Thêm)</span></div>
                        <div class="content service-more-content" style="display: none">
                            <div class="the-content desc">
                                <p>Giờ bay có thể thay đổi theo quy định của hàng không. TOURNEST sẽ thay đổi chương
                                    trình cho phù hợp với giờ bay mới nhưng sẽ không chịu trách nhiệm về các khoản chi
                                    phí phát sinh<br>
                                    <strong><u>Giá tour bao gồm:</u></strong></p>
                                <ul>
                                    <li>Vé máy bay khứ hồi TP.HCM – HÀ NỘI – TP.HCM (Vietjet Air, BamBoo, …)</li>
                                    <li>Xe tham quan (xe 16 chỗ, 29 chỗ, 35 chỗ, 45 chỗ) tùy theo số lượng khách thực tế
                                        trên chuyến đi.
                                    </li>
                                    <li>Khách sạn 4 sao tại điểm du lịch hoặc tương đương.</li>
                                    <li>Khách sạn đầy đủ tiện nghi 2 khách người lớn/ phòng, nếu lẻ người thứ 3, đóng
                                        phụ phí phòng đơn hoặc ngủ ghép phòng 3 khách.
                                    </li>
                                    <li>Ăn uống theo chương trình:</li>
                                </ul>
                                <p>+&nbsp;&nbsp; Ăn phụ: 2 bữa buffet sáng tại khách sạn.<br> +&nbsp;&nbsp; Ăn chính: 5
                                    bữa chính tiêu chuẩn 120.000 đồng/bữa.</p>
                                <ul>
                                    <li>Vé tham quan theo chương trình.</li>
                                    <li>Hướng dẫn viên tiếng Việt vui vẻ nhiệt tình suốt chuyến đi.</li>
                                    <li>Bảo hiểm với mức bồi thường tối đa 100.000.000 đồng/trường hợp.
                                        Không áp dụng cho khách từ 80 tuổi trở lên.
                                    </li>
                                    <li>Quà tặng: nón du lịch, nước, khăn lạnh.</li>
                                    <li>Thuế VAT.</li>
                                </ul>
                                <p>
                                    <strong id="flag4"><u>Không bao gồm:</u></strong></p>
                                <ul>
                                    <li>Bia hay nước ngọt trong các bữa ăn.</li>
                                    <li>Chi phí cá nhân: điện thoại, giặt ủi…</li>
                                    <li>Chi phí tham quan, mua sắm ngoài chương trình.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="boxTour">
                        <div class="title note-more" style="cursor:pointer"><span><i class="fa fa-sticky-note-o"></i> Ghi chú</span>
                            <span style="font-size:16px;padding-left:0">(Xem Thêm)</span></div>
                        <div class="content note-more-content" style="display: none">
                            <div class="the-content desc">
                                <p>&nbsp;</p>
                                <ul></ul>
                                <p><strong><u>Giá vé dành cho trẻ em:</u></strong></p>
                                <ul>
                                    <li>Trẻ em dưới 02 tuổi: miễn phí giá tour, giá vé máy bay theo quy định hãng hàng
                                        không.
                                        Cha, Mẹ hoặc người thân đi kèm tự lo các chi phí ăn, ngủ, tham quan (nếu có) cho
                                        bé.
                                    </li>
                                    <li>Trẻ em từ 02 – dưới 05 tuổi: 100% giá vé máy bay; miễn giá tour. Cha, Mẹ hoặc
                                        người thân đi kèm tự lo các chi phí ăn,
                                        ngủ, tham quan (nếu có) cho bé. Hai người lớn chỉ kèm 1 trẻ em dưới 5 tuổi, trẻ
                                        em thứ 2 trở lên phải mua ½ vé tour.
                                    </li>
                                    <li>Trẻ em từ 05 – dưới 11 tuổi: 100% giá vé máy bay; 40% giá tour. Bao gồm các dịch
                                        vụ ăn uống,
                                        ghế ngồi trên xe và ngủ chung với gia đình. Hai người lớn chỉ được kèm 1 trẻ em
                                        từ 5 đến dưới 11 tuổi,
                                        trẻ em thứ 2 trở lên Cha, Mẹ mua thêm 1 suất giường đơn hoặc 1 vé người lớn.
                                    </li>
                                    <li>Từ 11 tuổi trở lên: 100% giá tour và tiêu chuẩn như người lớn.</li>
                                </ul>
                                <p><strong><u>Quy định thanh toán, hủy vé:</u></strong></p>
                                <ul>
                                    <li>Sau khi xác nhận và thanh toán (ít nhất 50% tiền cọc giữ chỗ và thanh toán đủ
                                        100% tổng giá trị tiền tour trước 10 ngày khởi hành).
                                    </li>
                                    <li>&nbsp;Khi đến ngày thanh toán đủ 100% tổng giá trị tiền tour, nếu Quý khách
                                        không thanh toán đúng hạn và đúng số tiền được xem như Quý khách tự ý huỷ tour
                                        và mất hết số tiền đã đặt cọc giữ chỗ.
                                    </li>
                                    <li>Vé Máy Bay / vé xe lửa / vé tàu cao tốc được xuất ngay sau khi quý khách đóng
                                        tiền và có xác nhận sự chính xác về họ, tên (đúng từng ký tự ghi trong hộ chiếu
                                        hoặc CMND), ngày-tháng-năm sinh … của hành khách theo yêu cầu của hãng vận
                                        chuyển.
                                        Mọi sự thay đổi liên quan đến vé đã xuất: ngày giờ đi, tên hành khách, hủy vé,
                                        quý khách vui lòng chịu chi phí theo qui định sau:
                                    </li>
                                </ul>
                                <p><strong>*&nbsp;&nbsp;&nbsp; Ngay sau khi Quý khách đăng ký tour nếu hủy sẽ bị phạt
                                    tiền tour và vé máy bay:&nbsp; </strong></p>
                                <ul>
                                    <li>Ngay sau khi đặt cọc hoặc thanh toán hoặc trước 15 ngày: phí hủy 10% tiền tour+
                                        100% Vé máy bay.
                                    </li>
                                    <li>Hủy 10 ngày trước ngày khởi hành: phí hủy 50% tiền tour + 100% vé máy bay.</li>
                                    <li>Hủy 07 ngày trước ngày khởi hành: phí hủy 70% tiền tour&nbsp; + 100% vé máy
                                        bay.
                                    </li>
                                    <li>Hủy&nbsp; 05 ngày trước ngày khởi hành: phí hủy 100% tiền tour&nbsp; + 100% vé
                                        máy bay.
                                    </li>
                                    <li>Trường hợp quý khách đến trễ giờ khởi hành được tính là hủy 5 ngày trước ngày
                                        khởi hành.
                                    </li>
                                    <li>Do tính chất là đoàn ghép khách lẻ, Du Lịch Việt sẽ có trách nhiệm nhận khách
                                        đăng ký cho đủ đoàn (10 khách người lớn trở lên)
                                        thì đoàn sẽ khởi hành đúng lịch trình. Nếu số lượng đoàn dưới 10 khách, công ty
                                        có trách nhiệm thông báo cho khách trước ngày khởi hành 3 ngày và sẽ thỏa thuận
                                        lại ngày khởi hành mới hoặc hoàn trả toàn bộ số tiền đã đặt cọc tour.
                                    </li>
                                    <li>Việc huỷ bỏ chuyến đi phải được thông báo trực tiếp với Công ty hoặc qua fax,
                                        email, tin nhắn và phải được Công ty xác nhận. Việc huỷ bỏ bằng điện thoại không
                                        được chấp nhận.
                                    </li>
                                    <li>Các ngày đặt cọc, thanh toán, huỷ và dời tour: không tính thứ 7, Chủ Nhật.</li>
                                    <li>Trong những trường hợp bất khả kháng như: khủng bố, bạo động, thiên tai, lũ lụt…
                                        Tuỳ theo tình hình thực tế và sự thuận tiện, an toàn của khách hàng, công ty Du
                                        Lịch sẽ chủ động thông báo cho khách hàng sự thay đổi như sau: huỷ hoặc thay thế
                                        bằng một chương trình mới với chi phí tương đương chương trình tham quan trước
                                        đó. Trong trường hợp chương trình mới có phát sinh thì Khách hàng sẽ thanh toán
                                        khoản phát sinh này. Tuy nhiên, mỗi bên có trách nhiệm cố gắng tối đa, giúp đỡ
                                        bên bị thiệt hại nhằm giảm thiểu các tổn thất gây ra vì lý do bất khả kháng.…
                                    </li>
                                    <li>Đối với sự thay đổi lịch trình, giờ bay do lỗi của hãng hàng không, tàu hoả, tàu
                                        thuỷ, Du Lịch Việt sẽ không chịu trách nhiệm bất kỳ phát sinh nào do lỗi trên
                                        như: phát sinh bữa ăn, nhà hàng, khách sạn, phương tiện di chuyển, hướng dẫn
                                        viên, ….
                                    </li>
                                </ul>
                                <p><strong><u>Lưu ý</u></strong>&nbsp;:</p>
                                <ul>
                                    <li>Khi đăng ký tour khách hàng bắt buộc phải gởi giấy tờ tùy thân cho đơn vị du
                                        lịch để vào tên xuất vé và mua bảo hiểm du lịch. Những giấy tờ cá nhân của khách
                                        hàng (CMND hoặc Passport) thuộc về trách nhiệm của khách hàng. Mọi vấn đề như
                                        hình ảnh, thông tin giấy tờ trong bản gốc bị mờ, không rõ ràng; Passport, CMND
                                        hết hạn
                                        ,… không đúng quy định của pháp luật Việt Nam, Du Lịch Việt sẽ không chịu trách
                                        nhiệm và sẽ không hoàn trả bất cứ chi phí phát sinh nào.
                                    </li>
                                    <li>Đối với khách Nước ngoài/Việt Kiều: Khi đi tour phải mang theo đầy đủ Passport
                                        (Hộ Chiếu), Visa Việt Nam bản chính còn hạn sử dụng làm thủ tục lên máy bay theo
                                        qui định hàng không.&nbsp;
                                    </li>
                                    <li>Trẻ em (dưới 12 tuổi) khi đi du lịch mang theo giấy khai sinh (bản chính hoặc
                                        sao y có thị thực còn hạn sử dụng) để&nbsp; làm thủ tục hàng không.
                                    </li>
                                    <li>Quý khách từ 14 tuổi bắt buộc phải có CMND hoặc Passport (còn hạn sử dụng),
                                        KHÔNG SỬ DỤNG GIẤY KHAI SINH. Nếu Quý khách từ 14 tuổi chưa có CMND hoặc
                                        Passport bắt buộc phải có Giấy xác nhận nhân thân (Có xác nhận chính quyền (còn
                                        hạn sử dụng)) + Giấy khai sinh.
                                    </li>
                                    <li>Một số thứ tự, chi tiết trong chương trình; giờ bay; giờ xe lửa; giờ tàu cao tốc
                                        có thể thay đổi để phù hợp với tình hình thực tế của chuyến đi (thời tiết, giao
                                        thông…)
                                    </li>
                                    <li>Qui định nhận &amp; trả phòng tại các khách sạn/resort: nhận phòng sau 14H00 và
                                        trả phòng trước 12H00 .
                                    </li>
                                    <li>Hành lý và tư trang du khách tự bảo quản trong quá trình du lịch .</li>
                                    <li>Vì lý do sức khỏe và an toàn vệ sinh thực phẩm, Quý Khách vui lòng không mang
                                        thực phẩm từ bên ngoài vào nhà hàng, khách sạn. Đối với thức uống khi mang vào
                                        phải có sự đồng ý của nhà hàng, khách sạn và bị tính phí nếu có.
                                    </li>
                                </ul>
                                <p align="center"><strong>KÍNH CHÚC QUÝ KHÁCH CHUYẾN ĐI THÚ VỊ VÀ BỔ ÍCH !</strong></p>
                            </div>
                        </div>
                    </div>

                    <div class="vnt-form mda-quick-contact">
                        <h3><span class="fa-phone">ĐỂ LẠI SỐ ĐIỆN THOẠI CHÚNG TÔI SẼ GỌI ĐIỆN TƯ VẤN</span></h3>
                        <div id="form-quick-contact">
                            <input type="hidden" class="department" value="7"/>
                            <input type="tel" name="phone" class="phonequick" value placeholder="Nhập số điện thoại!"/>
                            <button type="button" class="btn-quick-contact">Gửi thông tin!</button>
                        </div>
                        <div class="mda-box-loading text-center"></div>
                        <div id="contact-success" style="display:none"><h3>Thông tin số điện thoại đã được gửi đi thành
                            công cho nhân viên tư vấn. Cám ơn quý khách!</h3></div>
                    </div>


                    <div id="flagEnd"></div>
                </div>


                <div id="vnt-sidebar" class="col-lg-4 col-md-4 col-sm-12 col-xs-12 hidden-sm hidden-xs">
                    <div class="boxDesign1">
                        <div class="name">Du lịch <%=t.getName() %></div>
                        <div class="attr">
                            <ul>
                                <li>
                                    <div class="at">Mã tour</div>
                                    <div class="as"># <%=t.getId() %> &nbsp;</div>
                                </li>
                                <li>
                                    <div class="at">Thời gian:</div>
                                    <div class="as"><%=t.getDuration() %></div>
                                </li>
                                <li>
                                    <div class="at">Khởi hành:</div>
                                    <div class="as"><%=t.getStartTime()%></div>
                                </li>
                                <li>
                                    <div class="at">Vận Chuyển:</div>
                                    <div class="as">
                                        Xe du lịch đời mới
                                    </div>
                                </li>
                                <li>
                                    <div class="at">Xuất phát:</div>
                                    <div class="as">Từ Hồ Chí Minh</div>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="mnfixed_wrap">
                        <div class="mnfixed_self mnfixed_fixed_fixed">
                            <div class="boxFix">
                                <div class="boxPrice">
                                    <div class="price">
                                        <div class="txt">Giá từ:</div>
                                        <div class="red" id="giactt"><span class="pull-right" style="margin-top: 25px;">
                                                <%int number = t.getPrice();
                                DecimalFormat decimalFormat = new DecimalFormat("#,###");
                                String formattedString = decimalFormat.format(number);%>
                                        </span> <%=formattedString%></div>
                                    </div>
                                    <div class="bot">
                                        <div class="btn-booking dt">
                                            <input type="hidden" name="tourid" id="tourid" value="16764">
                                            <input type="hidden" name="con" id="con" value="10">
                                            <input type="hidden" name="hasvisa" id="hasvisa" value="">
                                            <button type="button" class="render-form btn-contact-tour">
                                                <a href="ServiceServlet?id=<%=t.getId()%>" style="text-decoration: none; text-transform: uppercase">Book Now</a>
                                            </button>
                                            <button type="button" class="render-form btn-contact-tour" style="background-color: #bbbbbb!important;">
                                                <a href="ValiServlet?id=<%=t.getId()%>" style="text-decoration: none; text-transform: uppercase;color: #00d8fe!important;">Thêm Vào Vali</a>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="boxDesign2">
                                    <ul>
                                        <li class="active"><a href="#flag1"><span><i class="fa fa-info-circle"></i> Điểm nhấn hành trình</span></a>
                                        </li>
                                        <li class=""><a href="#flag2"><span><i class="fa fa-map"></i> Lịch trình</span></a>
                                        </li>
                                        <li class=""><a href="#flag3"><span><i class="fa fa-paperclip"></i> Dịch vụ bao gồm và không bao gồm</span></a>
                                        </li>
                                        <li class=""><a href="#flag4"><span><i
                                                class="fa fa-sticky-note"></i> Ghi chú</span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="boxHome">
                <div class="titleHome">
                    <h2>Các Tour Khác</h2>
                </div>
                <div class="contentHome">
                    <div class="vnt-tour grid">
                        <div class="slideFluid width2 owl-carousel owl-loaded owl-drag">
                            <div class="owl-stage-outer">
                                <div class="owl-stage"
                                     style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1190px;">
                                    <div class="owl-item active" style="width: auto; margin-right: 10px;">
                                        <div class="item col">
                                            <div class="mda-box-item">
                                                <div class="mda-box-img">
                                                    <a href="catelogy.jsp"><img class="lazy"
                                                                                src="assets/images/item/9.jpg"
                                                                                alt="Tiền Giang - Cai Lậy"
                                                                                data-original="2.jpg" style=""></a>
                                                    <div class="mda-box-lb">Từ Hồ Chí Minh</div>
                                                    <div class="mda-box-fig">
                                                        <div class="des">Tiền Giang - Cai Lậy</div>
                                                        <div class="link"><a href="catelogy.jsp"
                                                                             title="Tiền Giang - Cai Lậy"><span>Xem thêm +</span></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mda-caption">
                                                    <div class="mda-box-n">
                                                        <a class="mda-box-name" href="catelogy.jsp">Tiền Giang - Cai
                                                            Lậy</a>
                                                        <p class="mda-box-des">Tp Hồ Chí Minh - Tiền Giang - Cai Lậy</p>
                                                        <p class="mda-time">
                                                            <span>Thời gian</span>
                                                            <span>4 ngày 3 đêm</span>
                                                        </p>
                                                    </div>
                                                    <div class="mda-info mda-grid">
                                                        <h2 class="mda-name"><a href="catelogy.jsp">Tp Hồ Chí Minh -
                                                            Tiền Giang - Cai Lậy</a></h2>
                                                        <div class="mda-img-box-wrap">
                                                            <p class="mda-time-grid">4 ngày 3 đêm</p>
                                                            <p class="mda-schedule" data-toggle="tooltip" title=""
                                                               data-original-title="01,08,15,22,29/11; 06/12/2023">Khởi
                                                                hành hằng ngày</p>
                                                            <p class="mda-price">
                                <span class="mda-distcoun">
                                <span class="mda-dis"><span class="mda-money">7,799,000</span> đ</span> <span
                                        class="mda-pre"><span class="mda-money">8,099,000</span> đ</span> </span>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-item active" style="width: auto; margin-right: 10px;">
                                        <div class="item col">
                                            <div class="mda-box-item">
                                                <div class="mda-box-img">
                                                    <a href="catelogy.jsp"><img class="lazy"
                                                                                src="assets/images/item/2.jpg"
                                                                                alt="Du lịch Hà Nội - Hạ Long - Ninh Bình - Tràng An - Sapa mùa Thu từ Sài Gòn 2023"
                                                                                data-original="../images/bandidau/NOI-DIA/Ninh-Binh/mua-thu-ninh-binh-du-lich-viet.jpg"
                                                                                style=""></a>
                                                    <div class="mda-box-lb">Từ Hồ Chí Minh</div>
                                                    <div class="mda-box-fig">
                                                        <div class="des">Thành Phố Hồ Chí Minh - Phú Quốc</div>
                                                        <div class="link"><a href="catelogy.jsp"
                                                                             title="Thành Phố Hồ Chí Minh - Phú Quốc"><span>Xem thêm +</span></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mda-caption">
                                                    <div class="mda-box-n">
                                                        <a class="mda-box-name" href="catelogy.jsp">Thành Phố Hồ Chí
                                                            Minh - Phú Quốc</a>
                                                        <p class="mda-box-des">Thành Phố Hồ Chí Minh - Phú Quốc</p>
                                                        <p class="mda-time">
                                                            <span>Thời gian</span>
                                                            <span>5 ngày 4 đêm</span>
                                                        </p>
                                                    </div>
                                                    <div class="mda-info mda-grid">
                                                        <h2 class="mda-name"><a href="catelogy.jsp">Thành Phố Hồ Chí
                                                            Minh - Phú Quốc</a></h2>
                                                        <div class="mda-img-box-wrap">
                                                            <p class="mda-time-grid">5 ngày 4 đêm</p>
                                                            <p class="mda-schedule" data-toggle="tooltip" title=""
                                                               data-original-title="28/10; 04,11,18,25/11; 02/12/2023">
                                                                01/01/2024</p>
                                                            <p class="mda-price">
                                        <span class="mda-distcoun">
                                            <span class="mda-dis"><span
                                                    class="mda-money">9,099,000</span> đ</span> <span
                                                class="mda-pre"><span
                                                class="mda-money">9,399,000</span> đ</span> </span>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-item active" style="width: auto; margin-right: 10px;">
                                        <div class="item col">
                                            <div class="mda-box-item">
                                                <div class="mda-box-img">
                                                    <a href="catelogy.jsp"><img class="lazy"
                                                                                src="assets/images/item/3.jpg"
                                                                                alt="Du lịch mùa Thu Hà Nội - Mai Châu - Mộc Châu - Ninh Bình - Tràng An từ Sài Gòn 2023"
                                                                                data-original="../images/bandidau/NOI-DIA/Trang-An/trang-an-mua-thu-du-lich-viet.jpg"
                                                                                style=""></a>
                                                    <div class="mda-box-lb">Từ Hồ Chí Minh</div>
                                                    <div class="mda-box-fig">
                                                        <div class="des">Hành trình Mai Châu - Mộc Châu - Ninh Bình -
                                                            Chùa Bái Đính - Tràng An Lịch trình 4 ngày 3 đêm Khởi hành
                                                            25/10; 01,08,15,22,29/11; 06/12/2023 Di chuyển Xe du lịch
                                                            đời mới &amp; Máy Bay khứ hồi Du lịch mùa Thu Hà Nội - Mai
                                                            Châu -...
                                                        </div>
                                                        <div class="link"><a href="catelogy.jsp"
                                                                             title="Du lịch mùa Thu Hà Nội - Mai Châu - Mộc Châu - Ninh Bình - Tràng An từ Sài Gòn 2023"><span>Xem thêm +</span></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mda-caption">
                                                    <div class="mda-box-n">
                                                        <a class="mda-box-name" href="catelogy.jsp">Cần Thơ - Cồn
                                                            Sơn-Cồn Ấu</a>
                                                        <p class="mda-box-des">Hành trình: Tour mùa Thu - Mai Châu - Mộc
                                                            Châu - Ninh Bình - Chùa Bái Đính - Tràng An</p>
                                                        <p class="mda-time">
                                                            <span>Thời gian</span>
                                                            <span>4 ngày 3 đêm</span>
                                                        </p>
                                                    </div>
                                                    <div class="mda-info mda-grid">
                                                        <h2 class="mda-name"><a href="catelogy.jsp">Cần Thơ - Cồn
                                                            Sơn-Cồn Ấu</a></h2>
                                                        <div class="mda-img-box-wrap">
                                                            <p class="mda-time-grid">4 ngày 3 đêm</p>
                                                            <p class="mda-schedule" data-toggle="tooltip" title=""
                                                               data-original-title="25/10; 01,08,15,22,29/11; 06/12/2023">
                                                                Diễn ra trong tháng 12</p>
                                                            <p class="mda-price">
                                <span class="mda-distcoun">
                                <span class="mda-dis"><span class="mda-money">8,399,000</span> đ</span> <span
                                        class="mda-pre"><span class="mda-money">8,699,000</span> đ</span> </span>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-item active" style="width: auto; margin-right: 10px;">
                                        <div class="item col">
                                            <div class="mda-box-item">
                                                <div class="mda-box-img">
                                                    <a href="catelogy.jsp"><img class="lazy"
                                                                                src="assets/images/item/4.jpg"
                                                                                alt="Du lịch Tây Bắc - Hà Nội - Mộc Châu - Điện Biên - Sapa mùa Hoa Cải Trắng từ Sài Gòn 2023"
                                                                                data-original="../images/bandidau/NOI-DIA/Moc-Chau/tour-moc-chau-mua-hoa-cai-trang-du-lich-viet.jpg"
                                                                                style=""></a>
                                                    <div class="mda-box-lb">Từ Hồ Chí Minh</div>
                                                    <div class="mda-box-fig">
                                                        <div class="des"></div>
                                                        <div class="link"><a href="catelogy.jsp"
                                                                             title="Du lịch Tây Bắc - Hà Nội - Mộc Châu - Điện Biên - Sapa mùa Hoa Cải Trắng từ Sài Gòn 2023"><span>Xem thêm +</span></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mda-caption">
                                                    <div class="mda-box-n">
                                                        <a class="mda-box-name" href="catelogy.jsp"></a>
                                                        <p class="mda-box-des"></p>
                                                        <p class="mda-time">
                                                            <span>Thời gian</span>
                                                            <span>5 ngày 4 đêm</span>
                                                        </p>
                                                    </div>
                                                    <div class="mda-info mda-grid">
                                                        <h2 class="mda-name"><a href="catelogy.jsp">Tp Hồ Chí Minh - Mỹ
                                                            Tho - Bến Tre</a></h2>
                                                        <div class="mda-img-box-wrap">
                                                            <p class="mda-time-grid">5 ngày 4 đêm</p>
                                                            <p class="mda-schedule" data-toggle="tooltip" title=""
                                                               data-original-title="07,14,21,28/10/2023">
                                                                21,28/03/2024</p>
                                                            <p class="mda-price">
                                <span class="mda-distcoun">
                                <span class="mda-dis"><span class="mda-money">9,199,000</span> đ</span> </span>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

</body>
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
<%--<script src="assets/js/custom.js"></script>--%>
<script src="assets/js/modify.js"></script>

<script defer type="text/javascript">
    var check = Math.max(document.documentElement.scrollHeight, document.body.scrollHeight) - 1380;/*980*/
    $("#xemthem").click(function (event) {
        $(this).hide();
        obj = $(this).parent();
        id = $(this).data("id");
        tb = $(this).data("table");
        jQuery.get(ROOT + 'user/showmore.php', {mid: id, mtb: tb}, function (data, textStatus, xhr) {
            obj.after(data);
        });
    });

    $(".service-more").click(function (event) {
        $(".service-more-content").toggle();

        if ($(".service-more-content").is(":visible")) {
            check = check + 500;
        } else {
            check = check - 500;
        }
    });

    $(".note-more").click(function (event) {
        $(".note-more-content").toggle();

        if ($(".note-more-content").is(":visible")) {
            check = check + 1140;
        } else {
            // Nếu ẩn đi, trừ giá trị
            check = check - 1140;
        }
    });

    $(window).on('scroll', function () {
        var scrollTop = $(this).scrollTop();
        if (scrollTop > 500 && scrollTop < check) {
            $('.mnfixed_wrap').css({
                'position': 'fixed',
                'top': '0',
                'margin-top': '80px'
            });

        } else {
            $('.mnfixed_wrap').css({
                'position': 'relative',
                'top': 'auto'
            });

        }

    });

</script>
<script>
    // Lấy danh sách các nút trong ul
    var navItems = document.querySelectorAll('ul li');
    // Lặp qua từng nút và gán sự kiện click
    navItems.forEach(function (item) {
        item.addEventListener('click', function () {
            // Xóa lớp "active" khỏi tất cả các nút
            navItems.forEach(function (navItem) {
                navItem.classList.remove('active');
            });

            // Thêm lớp "active" vào nút được nhấp
            item.classList.add('active');
        });
    });
</script>
</html>