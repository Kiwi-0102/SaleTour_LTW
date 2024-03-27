<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="java.util.Objects" %>
<%@ page import="vn.edu.hcmuaf.DAO.indexDao" %>
<%@ page import="vn.edu.hcmuaf.bean.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    indexDao indx = new indexDao();
//service_tours sv = (service_tours) request.getAttribute("service");
    Tour t = (Tour) request.getAttribute("tour");
//    ArrayList<service_tours> sv_list = (ArrayList<service_tours>) indx.service();

    User userdk = (User) session.getAttribute("userdk");
    ArrayList<Customer> dscus = (ArrayList<Customer>) session.getAttribute("dskh");

    String pay = (String) request.getAttribute("pay");
    String date = (String) request.getAttribute("date");
    Integer quantity = (Integer) session.getAttribute("quatity");
    int quatity = (quantity != null) ? quantity.intValue() : 1;
    session.setAttribute("quatity",quatity);

    Integer quantitycc = (Integer) session.getAttribute("quatitycc");
    int quatitycc = (quantitycc != null) ? quantitycc.intValue() : 1;
    session.setAttribute("quatitycc",quatitycc);

    int toltal = quantitycc+quantity;
//    session.removeAttribute("userdk");
//    session.removeAttribute("dskh");
//    session.removeAttribute("quatitycc");
//    session.removeAttribute("quatity");

%>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css?display=swap" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <title>Thông tin và dịch vụ</title>
    <link rel="shortcut icon" type="image/icon" href="../assets/logo/favicon.png"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <link rel="stylesheet" href="assets/css/payment.css">

    <!-- range css-->
    <link rel="stylesheet" href="  assets/css/jquery-ui.min.css"/>

    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="  assets/css/bootstrap.min.css"/>

    <!-- bootsnav -->
    <link rel="stylesheet" href="  assets/css/bootsnav.css"/>

    <!--style.css-->
    <link rel="stylesheet" href="  assets/css/style.css"/>

    <!--responsive.css-->
    <link rel="stylesheet" href="  assets/css/responsive.css"/>
<%--    <script src="https  cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>--%>
    <style>
        /* CSS */
        .customer-notice-right .btn-primary {
            background-color: #00d8fe;
            color: #fff;
            margin-left: 30px;
            padding: 10px 120px;
            border: none;
        }
        .customer-notice-right .btn-primary:hover{
            background: linear-gradient(90deg, #0077fe 0, #f600a8 100%);
        }
        .customer-notice-right .dropdown-toggle::after {
            content: "";
            display: inline-block;
            width: 0;
            height: 0;
            margin-left: .255em;
            vertical-align: .255em;
            border-top: .3em solid;
            border-right: .3em solid transparent;
            border-bottom: 0;
            border-left: .3em solid transparent;
        }
        .customer-notice-right .dropdown-menu {
            background-color: #f8f9fa;
            border: 1px solid rgba(0, 0, 0, 0.15);
            /*padding: 10px;*/
            width: 300px;
        }
        .customer-notice-right .dropdown-item {
            display: flex;
            align-items: center;
            padding: 4px 10px;
            cursor: pointer;
        }
        .customer-notice-right .dropdown-item input{
            font-size: 30px;
            height: 20px;
            width: 20px;
        }
        .customer-notice-right .dropdown-item p{
            padding-left: 10px;
            font-size: 15px;
        }
        .customer-notice-right .dropdown-item:hover {
            background-color: #e9ecef;
        }
    </style>
    <script>
        var dropdownButton = document.getElementById("dropdownButton");
        var dropdownMenu = document.querySelector(".dropdown-menu");
        var checkboxes = dropdownMenu.getElementsByTagName("input");

        var dateInput = document.querySelector("#date input");
        dateInputvalue = dateInput.value;
        var [year, month, day] = dateInputvalue.split("-");
        var newDateValue = `${day}-${month}-${year}`;
        var date = document.getElementById("date");
        date.innerHTML = newDateValue;

        dropdownButton.addEventListener("click", function() {
            dropdownMenu.classList.toggle("show");
        });

        for (var i = 0; i < checkboxes.length; i++) {
            checkboxes[i].addEventListener("click", function(event) {
                event.stopPropagation();
            });
        }</script>
</head>

<body>
<div id="root">
    <div class="row head" style="background-color: #4d4e53">
        <div class="col-sm-1"></div>

        <div class="col-sm-3">
            <div class="logo">
                <a href="index.jsp">
                    tour<span>Nest</span>
                </a>
            </div><!-- /.logo-->
        </div><!-- /.col-->
        <div class="col-sm-8">
            <div class="main-menu">
                <ul class="nav" style="text-align: right;color: black!important;">
                    <li><a href="index.jsp">Trang Chủ</a></li>
                    <li><a href="index.jsp#spo">Ưu Đãi</a></li>
                    <li><a href="index.jsp#gallery">Tour Hot</a></li>
                    <li><a href="CategorieServlet">Sản Phẩm</a></li>
                    <li><a href="index.jsp#blog">Tin Tức</a></li>
                    <li><a href="index.jsp#feedback">Đánh Giá</a></li>
                    <li><a href="index.jsp#service">Liên Hệ</a></li>
                    <%
                        User user = (User) session.getAttribute("user");
                        String url = request.getContextPath().trim();
                        ArrayList<valies> vali_List = (ArrayList<valies>) session.getAttribute("vali-List");
                        int touronvali;
                        if(vali_List==null){
                            touronvali = 0;
                        }else {
                            touronvali = vali_List.size();
                        }
                    %>
                    <% if (Objects.nonNull(user)) { %>
                    <li class="navbar-toggle"><a href="shopcart.jsp" id="myTour"><i
                            class="fa fa-suitcase-rolling fa-2x"
                            style="margin-top: -10px;color: #00d8fe"><sub style="padding: 3px 5px;
                                                        font-size: 12px;
                                                        color: #fff6f6;
                                                        margin: -7px -5px 0px;
                                                        border-radius: 50%;
                                                        background-color: rgb(21 62 138);"><%=touronvali%></sub></i></a>
                    </li>
                    <li id="icon-user" class="smooth-menu">
                        <i class="fa fa fa-user-circle fa-2x" style="color: #ffffff;"></i>
                        <span class="username"><%= user.getUserName() %></span>
                        <ul id="service_account">
                            <li style="text-align: left"><a id="myInfor" href="infor.jsp">Tài Khoản</a></li>
                            <li style="text-align: left"><a id="bill" href="bill.jsp">Hóa Đơn </a></li>
                            <li style="text-align: left">
                                <form action="login" method="get">
                                    <button type="submit" name="action" id="logout" value="logout">Đăng Xuất</button>
                                </form></li>
                        </ul>
                    </li>
                    <% } else { %>
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

    <div class="container">
        <div class="row">
        </div>

    </div>
    <div class="booking-tour">
        <section class="checkout-head d-block d-lg-block">
            <div class="container">
                <div class="row">
                    <ul class="head col-12">
                        <li class="checked"><a href="" style="color: #00d8fe!important;">1. Dịch vụ và thông tin</a></li>
                        <li class="checked"><i class="fa-solid fa-arrow-right"></i></li>
                        <li class="checked"><a href="" style="color: #00d8fe!important;">2. Hình thức thanh toán</a>
                        <li class="checked"><i class="fa-solid fa-arrow-right"></i></li>
                        <li class="checked"><a href="" style="color: #00d8fe!important;">3. Hóa đơn</a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <section class="checkout-main order-tour animate__fadeIn animate__animated">
            <div class="container">
                <div class="row">
                    <h2 class="d-none d-lg-block">Hóa đơn</h2>
                    <section>
                        <div class="container" style="font-size: 18px">
                            <div class="row py-4 flex-md-row flex-column-reverse">
                                <div class="col-md-8 col-12 left" style="border: 1px solid #d5d5d5;border-radius: 5px">
                                    <section>
                                        <div class="contact-info p-4 mb-4" style="border: 1px solid #d5d5d5;border-radius: 5px;margin-top: 30px;height: 250px">
                                            <div class="heading">
                                                <h4 class="fw-bold tieude" style="padding-bottom: 20px">THÔNG TIN LIÊN LẠC</h4>
                                            </div>
                                            <div class="row" style="font-size: 18px!important;">
                                                <div class="col-12 col-md-6" style="padding-bottom: 20px">
                                                    <span class="">Họ tên</span>
                                                    <p class=""><%=userdk.getUserName()%></p>
                                                </div>
                                                <div class="col-md-6 col-12">
                                                    <span class="">Email</span>
                                                    <p class="info">
                                                        <span style="color: #00D8FE"><%=userdk.getEmail()%></span></p>
                                                </div>
                                                <div class="col-md-6 col-12"  style="padding-bottom: 20px">
                                                    <span class="">Địa chỉ</span>
                                                    <p class="">
                                                        <%=userdk.getAddress()%>
                                                    </p>
                                                </div>
                                                <div class="col-md-3 col-6">
                                                    <span class="">Di động</span>
                                                    <p class=""><%=userdk.getPhoneNumber()%></p>
                                                </div>
                                                <div class="col-md-3 col-12 d-none">
                                                    <span class="">Số khách</span>
                                                    <p class="info">
                                                        <%=toltal%>
                                                    </p>
                                                </div>
                                                <div class="col-md-6 col-12">
                                                    <span class="">Ghi chú</span>
                                                    <p class="info">
                                                        Booking từ TourNest
                                                    </p>
                                                </div>
                                            </div>                                        </div>
                                        <div class="booking-detail p-4 mb-4" style="border: 1px solid #d5d5d5;border-radius: 5px;margin-top: 15px">
                                            <div class="heading">
                                                <h4 class="fw-bold tieude" style="padding-bottom: 20px">CHI TIẾT BOOKING</h4>
                                            </div>
<%--                                            <div class="row item">--%>
<%--                                                <div class="col-md-3 col-12 " style="display: none">Số booking</div>--%>
<%--                                                <div class="col-md-9 col-12 ">--%>
<%--                                                    <span class="text-primary fw-bold">231112815769</span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
                                            <div class="row item">
                                                <div class="col-md-3 col-12 " style="display: none">Trị giá booking</div>
                                                <div class="col-md-9 col-12 " style="display: none">6,490,000₫</div>
                                            </div>
                                            <div class="row item">
                                                <div class="col-md-3 col-12 " style="display: none">Số tiền đã thanh toán</div>
                                                <div class="col-md-9 col-12 " style="display: none">6,490,000₫</div>
                                            </div>
                                            <div class="row item">
                                                <div class="col-md-3 col-12 " style="display: none">Số tiền còn lại</div>
                                                <div class="col-md-9 col-12 " style="display: none">3,000,000₫</div>
                                            </div>
                                            <div class="row item">
                                                <div class="col-md-3 col-12 ">Ngày đăng ký</div>
                                                <div class="col-md-9 col-12 ">
                                                    27/1/2024
                                                </div>
                                            </div>
                                            <div class="row item">
                                                <div class="col-md-3 col-12 ">
                                                    Hình thức thanh toán
                                                </div>
                                                <div class="col-md-9 col-12 "><%=pay%></div>
                                            </div>
                                            <div class="row item">
                                                <div class="col-md-3 col-12">Tình trạng</div>
                                                <div class="col-md-9 col-12 ">
                                                    Booking của quý khách đang được xác nhận
                                                </div>
                                            </div>
                                            <div class="row item">
                                                <div class="col-md-3 col-12 label" style="display: none">Thời gian thanh toán</div>
                                                <div class="col-md-9 col-12 text">
                                                    <span class="text-primary fw-bold" style="display: none">13/11/23 23:29:59</span> (Theo giờ Việt Nam)
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                                <div class="col-md-4 col-12 right">
                                    <div class="group-checkout">
                                        <h3>Tóm tắt</h3>
                                        <p class="package-title"><span>Mã Tour</span> # <%=t.getId()%></p>
                                        <div class="product">
                                            <div class="product-image">
                                                <img src="assets/images/item/<%=t.getImage()%>"
                                                     class="img-fluid" alt="image">
                                            </div>
                                            <div class="product-content">
                                                <p class="title"><%=t.getName()%></p>
                                            </div>
                                        </div>
                                        <div class="go-tour">
                                            <div class="start">
                                                <i class="fa-regular fa-calendar"></i>
                                                <div class="start-content">
                                                    <%String rs = t.getDuration().trim();
                                                        String []r =rs.split(" ");%>
                                                    <p id="pr" style="display: none;"><%=r[0].trim()%></p>
                                                    <h4>Bắt đầu chuyến đi</h4>
                                                    <%--                                        <input class="time" style="font-size: 15px;" value="<%=date%>">--%>
                                                    <span class="timestart" name="date" style="font-size: 15px;" ><%=date%></span>
                                                    <p class="from"></p>
                                                </div>
                                            </div>
                                            <div class="end">
                                                <i class="fa-solid fa-calendar-days"></i>
                                                <div class="start-content">
                                                    <h4>Kết thúc chuyến đi</h4>
                                                    <p class="timeend" style="font-size: 15px;">CN, 3 Tháng 12, 2023</p>
                                                    <p class="from"></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="detail">
                                            <table style="width: 100%">
                                                <tbody>
                                                <tr>
                                                    <th class="l1">Hành khách</th>

                                                </tr>
                                                <tr>
                                                    <td> Người lớn</td>
                                                    <td class="t-price text-right"><%=quantity%></td>
                                                </tr>
                                                <tr>
                                                    <td>Trẻ em (40%) </td>
                                                    <td class="t-price text-right"><%=quantitycc%></td>
                                                </tr>
                                                <tr class="total">
                                                    <td>Tổng cộng</td>
                                                    <%
                                                        int rsx = (int) (t.getPrice()*quantity +t.getPrice()*quantitycc*0.6);
                                                        DecimalFormat decimalFormat = new DecimalFormat("#,###");
                                                        String formattedString = decimalFormat.format(rsx) ;
                                                    %>
                                                    <input type="text" style="display: none" name="total" value="<%=rsx%>" id="total">
                                                    <td class="t-price text-right" id="TotalPrice">
                                                        <%=formattedString%> đ
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                            <div>
                                                <button style="display: none" class="btn btn-primary btn-order" style="width:100% "
                                                        onclick="kiemTraDieuKien()">
                                                    <a href="#"></a> Hóa đơn
                                                </button>
                                            </div>
                                            <div>
                                                <a href="mailto:thinh913011@gmail.com?subject=LIÊN HỆ" style="width: 100%">
                                                    <button class="btn btn-primary btn-order"
                                                            style="width:100%;background-color: #f9f9f9!important;color: black ">
                                                        Liên Hệ
                                                    </button>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-none d-lg-block">
                                <div class="passenger-list p-4 mb-4">
                                    <table class="table booking-table">
                                        <thead>
                                        <tr class="fw-bold">
                                            <td>Họ tên</td>
                                            <td class="d-none">Giảm giá?</td>
                                            <td>Ngày sinh</td>
                                            <td>Giới tính</td>
                                            <td>Địa chỉ</td>
                                            <td>Độ tuổi</td>
                                            <td>Phòng đơn</td>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <%for (int i=0;i<dscus.size();i++) { %>
                                        <tr>
                                            <td><%=dscus.get(i).getHoten()%></td>
                                            <td class="d-none">Giảm giá?</td>
                                            <td><%=dscus.get(i).getNgay()%></td>
                                            <td><%=dscus.get(i).getGoitinh()%></td>
                                            <td></td>
                                            <td>Người lớn</td>
                                            <td>Có</td>
                                        </tr>
                                        <% }%>
                                        </tbody>

                                    </table>
                                    <div class="heading">
                                        <h5 class="fw-bold tieude">DANH SÁCH HÀNH KHÁCH</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="d-none d-lg-block2">
                                <div class="passenger-list p-4 mb-4">
                                    <div class="heading">
                                        <h5 class="fw-bold">DANH SÁCH PHIẾU THU</h5>
                                    </div>
                                    <div id="divLoadShowBookingReceipt">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <div class="thanks" style="text-align: center">
                        <h1>Cảm ơn quý khách đã lựa chọn dịch vụ của chúng tôi</h1>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- footer-copyright start -->
    <footer class="footer-copyright">
        <div class="container">
            <div class="footer-content">
                <div class="row">

                    <div class="col-sm-3">
                        <div class="single-footer-item">
                            <div class="footer-logo">
                                <a href="index.jsp">
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
                                <p><a href="https://www.traveloka.com/vi-vn/">traveloka</a></p>
                                <p><a href="https://www.ivivu.com/">ivivu</a></p>
                                <p><a href="https://www.saigontourist.net/">saigon tourist</a></p>
                                <p><a href="https://travel.com.vn/">travel</a></p>
                                <p><a href="https://www.vietnambooking.com/">vietnam booking</a></p>
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
                                <p>(+84) 249999 6916</p>
                                <p class="foot-email" style="text-transform:none;">
                                    <a href="#">21130549@st.hcmuaf.edu.vn</a></p>
                                <p>Võ Minh Thịnh</p>
                                <p class="foot-email" style="text-transform:none;">
                                    <a href="#">21130558@st.hcmuaf.edu.vn</a></p>
                                <p>Mai Xuân Thức</p>
                                <p class="foot-email" style="text-transform:none;">
                                    <a href="#">21130615@st.hcmuaf.edu.vn</a></p>
                                <p>Trần Quang Vũ</p>
                            </div><!--/.single-footer-txt-->
                        </div><!--/.single-footer-item-->
                    </div><!--/.col-->

                </div><!--/.row-->

            </div><!--/.footer-content-->
            <hr>
            <div class="foot-icons ">
                <ul class="footer-social-links list-inline list-unstyled">
                    <li><a href="https://www.facebook.com/TourNest.org" target="_blank" class="foot-icon-bg-1"><i class="fa-brands fa-facebook fa-xl"></i></a>
                    </li>
                    <li><a href="https://twitter.com/tournest_io" target="_blank" class="foot-icon-bg-2"><i class="fa-brands fa-twitter fa-xl"></i></a>
                    </li>
                    <li><a href="https://www.instagram.com/tournest.io/" target="_blank" class="foot-icon-bg-3"><i class="fa-brands fa-instagram fa-xl"></i></a>
                    </li>
                </ul>
                <p>&copy; 2023-2024 <a href="https://github.com/MinhThinhrine/Do_An_Web">Nhóm 18</a>. All Right Reserved.
                </p>

            </div><!--/.foot-icons-->
            <div id="scroll-Top">
                <i class="fa fa-angle-double-up return-to-top" id="scroll-top 1" data-toggle="tooltip" data-placement="top"
                   title="" data-original-title="Back to Top" aria-hidden="true"></i>
            </div><!--/.scroll-Top-->
        </div><!-- /.container-->

    </footer><!-- /.footer-copyright-->
    <!-- footer-copyright end -->
</div>
</body>
<script>
    const dateInput = document.querySelector('span[name="date"]');
    const dateValue = dateInput.value;

    const dateParts = dateValue.split('-');
    const year = dateParts[0];
    const month = dateParts[1];
    const day = dateParts[2];

    const date = new Date(year, month - 1, day);
    const weekdays = ['Chủ nhật', 'Thứ hai', 'Thứ ba', 'Thứ tư', 'Thứ năm', 'Thứ sáu', 'Thứ bảy'];
    const weekday = weekdays[date.getDay()];

    const formattedDate =weekday+', ' + day + ' tháng ' + month + ', ' + year;

    const outputElement = document.querySelector('.from');
    outputElement.textContent = formattedDate;
    // Lấy tham chiếu đến trường input ngày bắt đầu

    var startDate = new Date(dateValue);
    var prElement = document.getElementById("pr");

    // Lấy giá trị của phần tử <p>
    var pr = parseInt(prElement.textContent.trim());
    // Giá trị biến có sẵn
    // Cộng thêm giá trị biến vào ngày bắt đầu
    startDate.setDate(startDate.getDate() + pr);

    // Format ngày kết thúc thành chuỗi "Thứ X, Ngày X Tháng X, Năm XXXX"
    var formattedEndDate = startDate.toLocaleString("vi-VN", {
        weekday: "long",
        day: "numeric",
        month: "long",
        year: "numeric"
    });

    // Gán giá trị ngày kết thúc vào phần tử HTML có class "timeend"
    var timeEndElement = document.querySelector(".timeend");
    timeEndElement.textContent = formattedEndDate;

</script>
</html>
