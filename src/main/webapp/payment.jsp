<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="java.util.Objects" %>
<%@ page import="vn.edu.hcmuaf.bean.Tour" %>
<%@ page import="vn.edu.hcmuaf.bean.valies" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.DecimalFormat" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 12/4/2023
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
<html class="no-js" lang="vi">
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="common/tablib.jsp" %><html lang="vi">
<%
    Tour t = (Tour) request.getAttribute("tour");
    String date = (String) request.getAttribute("date");
%>
<head>
    <meta charset="utf-8">
    <title>Thanh toán - TourNest</title>
    <link rel="stylesheet" href="assets/css/payment.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="assets/js/payment.js"></script>
    <script src="assets/js/jquery-3.5.1.slim.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!--font-family-->
    <link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet"/>

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.js"></script>

    <%--head--%>
    <%@include file="common/head.jsp" %>
    <%--End head--%>
    <style>
        .hardCode {
            /*display: block;*/
            background-color: gold;
            display: none !important;
        }
    </style>
</head>

<body>

<main role="main">
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
                    <li class="navbar-toggle"><a href="vali.jsp" id="myTour"><i
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

    <form action="BillController" method="post">
    <div class="checkout">
        <section class="checkout-head">
            <div class="container">
                <div class="row">
                    <ul class="head col-12">
                        <li class="checked"><a href="ServiceServlet?id=1" style="color: #00d8fe!important;">1. Dịch vụ và thông tin</a></li>
                        <li class="checked"><i class="fa-solid fa-arrow-right"></i></li>
                        <li class="checked"><a href="#" style="color: #00d8fe!important;">2. Hình thức thanh toán</a>
                        <li class="checked"><i class="fa-solid fa-arrow-right"></i></li>
                        <li class="checked"><a href="" style="color: #bbbbbb!important;">3. Hóa đơn</a>
                        </li>

                    </ul>
                </div>
            </div>
        </section>


        <section class="checkout-main">
            <div class="container">
                <div class="row">
                    <h2>Thanh toán</h2>
                    <div class="col-md-8 col-12 left" style="border: 1px solid #d5d5d5;border-radius: 5px">
                        <div class="payments-warp">
                            <h3>Các hình thức thanh toán</h3>
                            <div class="payments">
                                <!-- ck -->
                                <div class="payment-item active">
                                    <div class="pm-head">
                                        <input class="check" type="radio" id="chuyenkhoan" name="pay" value="chuyenkhoan">
                                        <div class="pm-head-icon" style="margin-left: 20px">
                                            <h4>Chuyển khoản qua ngân hàng</h4>
                                            <i class="fa-solid fa-building-columns" style="margin-left: 20px"></i>
                                        </div>

                                    </div>
                                    <div class="pm-des">
                                        <div class="pm-txt">
                                            <h4>Sau khi thực hiện việc chuyển khoản thành công TourNest sẽ gửi hóa đơn
                                                điện tử cho quý khách qua email.</h4>
                                            <br>
                                            <div style="text-align:justify">Tên Tài Khoản : Võ Minh Thịnh</div>
                                            <div style="text-align:justify">Số Tài khoản :
                                                <strong>30110300003770</strong></div>
                                            <div style="text-align:justify">Ngân hàng : MB Bank - Ngân hàng Quân Đội
                                            </div>
                                            <br>
                                            <div style="text-align:justify">Nội dung chuyển khoản: <br> MaTour-Email-(50% or 100%)</div>
                                            <div style="text-align:justify">Ví dụ: <br> 1-21130549@st.hcmuaf.edu.vn-50</div>
                                        </div>
                                        <div class="qrcode">
                                            <img src="assets/images/service/mbbank.jpg" alt="qrcode" srcset="">
                                        </div>
                                    </div>
                                </div>
                                <div class="payment-item">
                                    <div class="pm-head">
                                        <input class="check" type="radio" id="vnpay" name="pay" value="momo">
                                        <div class="pm-head-icon" style="margin-left: 20px">
                                            <h4>Chuyển khoản qua MoMo</h4>
                                            <i class="fa-solid fa-wallet" style="margin-left: 50px"></i>
                                        </div>
                                    </div>
                                    <p class="text-danger mt-2"></p>
                                    <div class="pm-des">
                                        <div class="pm-txt">
                                            <h4>Sau khi thực hiện việc chuyển khoản thành công TourNest sẽ gửi hóa đơn
                                                điện tử cho quý khách qua email.</h4>
                                            <br>
                                            <div style="text-align:justify">Tên Tài Khoản : Võ Minh Thịnh</div>
                                            <div style="text-align:justify">Số Tài khoản : <strong>0783833770</strong>
                                            </div>
                                            <div style="text-align:justify">Qua App: Ví điện tử MoMo</div>
                                            <br>
                                            <div style="text-align:justify">Nội dung chuyển khoản: <br> MaTour-Email-(50% or 100%)</div>
                                            <div style="text-align:justify">Ví dụ: <br> MT13646-21130549@st.hcmuaf.edu.vn-50</div>

                                        </div>

                                        <div class="qrcode">
                                            <img src="assets/images/service/momo.jpg" alt="qrcode" srcset=""
                                                 style="max-width: 100%;">
                                        </div>

                                    </div>
                                </div>

                            </div>
                            <!-- end tienmat -->
                            <div class="payments" style="width: 48%">
                                <!-- momo -->
                                <div class="payment-item">
                                    <div class="pm-head">
                                        <input name="pay" type="radio" class="check" value="hoadon50">
                                        <div class="pm-head-icon" style="margin-left: 20px">
                                            <h4>Thanh toán 50% hóa đơn</h4>
                                            <i class="fa-solid fa-circle-half-stroke" style="margin-left: 20px"></i>
                                        </div>
                                    </div>
                                </div>
                                <!-- end momo -->
                            </div>
                            <div class="payments" style="width: 48%">
                                <!-- momo -->
                                <div class="payment-item">
                                    <div class="pm-head">
                                        <input name="pay" type="radio" class="check" value="hoadon100">
                                        <div class="pm-head-icon" style="margin-left: 20px">
                                            <h4>Thanh toán 100% hóa đơn</h4>
                                            <i class="fa-solid fa-circle" style="margin-left: 20px"></i>
                                        </div>
                                    </div>
                                </div>
                                <!-- end momo -->
                            </div>
                        </div>
                        <div class="terms">
                            <h3>Điều khoản bắt buộc khi đăng ký online</h3>
                            <div class="term-content">
                                <input type="text" name="tour" value="<%=t.getId()%>" style="display: none">
                                <input type="text" name="date" value="<%=date%>" style="display: none">


                                <title></title>


                                <p style="text-align:center"><span style="color:#444444"><strong>ĐỌC
                                                VÀ ĐỒNG Ý NỘI DUNG TRƯỚC KHI ĐĂNG KÝ ONLINE DU LỊCH TRONG
                                                NƯỚC</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>Tôi đã hiểu rõ và
                                                đồng ý với các nội dung như sau:</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>I. GIÁ VÉ DU
                                                LỊCH</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Giá vé du lịch được tính
                                            theo tiền Đồng (Việt Nam - VNĐ). Trường hợp khách thanh toán bằng USD sẽ
                                            được quy đổi ra VNĐ theo tỉ giá của ngân hàng Đầu Tư và Phát Triển Việt Nam
                                            - Chi nhánh TP.HCM tại thời điểm thanh toán.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">Giá vé chỉ bao gồm những
                                            khoản được liệt kê một cách rõ ràng trong phần “Bao gồm” trong các chương
                                            trình du lịch. TourNest không có nghĩa vụ thanh toán bất cứ chi phí nào
                                            không nằm trong phần “Bao gồm”.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>II. GIÁ DÀNH CHO
                                                TRẺ EM</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">- Trẻ em dưới 5
                                            tuổi:&nbsp; không thu phí dịch vụ, bố mẹ tự lo cho bé và thanh toán các chi
                                            phí phát sinh (đối với các dịch vụ tính phí theo chiều cao…). Hai người lớn
                                            chỉ được kèm 1 trẻ em dưới 5 tuổi, trẻ em thứ 2 sẽ đóng phí theo qui định
                                            dành cho độ tuổi từ 5 đến dưới 12 tuổi và phụ thu phòng đơn.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">- Trẻ em từ 5 tuổi đến
                                            dưới 12 tuổi:&nbsp; 40% giá tour người lớn đối với tuyến xe. Hai
                                            người lớn chỉ được kèm 1 trẻ em từ 5 - dưới 12 tuổi, em thứ hai trở lên phải
                                            mua 1 suất giường đơn.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">- Trẻ em từ 12 tuổi trở
                                            lên: mua một vé như người lớn.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>III. THANH
                                                TOÁN</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Quý khách
                                            vui lòng cung cấp đầy đủ thông tin và đặt cọc ít nhất 50% tổng số tiền tour
                                            để giữ chỗ.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">Thanh toán chuyển khoản tới tài khoản ngân hàng của TourNest.</span></p>
                                <div style="text-align:justify">
                                    <div style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">Tên
                                        Tài Khoản : Võ Minh Thịnh
                                    </div>
                                    <div style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">Số
                                        Tài khoản : <strong>30110300003770</strong></div>
                                    <div style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">Ngân
                                        hàng : MB Bank - Ngân Hàng Quân Đội
                                    </div>
                                </div>
                                <p style="text-align:justify"><span style="color:#444444">Việc thanh toán được xem
                                            là hoàn tất khi TourNest nhận được đủ tiền vé du lịch trước lúc khởi hành
                                            hoặc theo hợp đồng thỏa thuận giữa hai bên. Bất kỳ sự thanh toán chậm trễ
                                            dẫn đến việc hủy dịch vụ không thuộc trách nhiệm của TourNest.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">Khách hàng có nhu cầu xuất
                                            hóa đơn, vui lòng cung cấp thông tin xuất hóa đơn ngay tại thời điểm đăng
                                            ký. TourNest có trách nhiệm xuất hóa đơn cho khách hàng trong vòng 07 ngày
                                            sau khi tour kết thúc.&nbsp;&nbsp;</span></p>
                                <p style="text-align:justify"><span style="color:#444444">Khi thực hiện việc chuyển
                                            khoản, Quý khách vui lòng ghi rõ tên họ, số điện thoại và nội dung chuyển
                                            khoản cho chương trình du lịch cụ thể đã được Quý khách chọn đăng ký.</span>
                                </p>
                                <p style="text-align:justify"><span style="color:#444444">Sau khi thực hiện việc
                                            chuyển khoản, Quý khách vui lòng gửi ủy nhiệm chi về Công ty TourNest theo
                                            địa chỉ email sales@TourNest.com và liên hệ với nhân viên phụ trách tuyến
                                            để nhận được Vé du lịch chính thức từ Công ty TourNest.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">*<u>Lưu ý</u>: Quý khách
                                            vui lòng điền đầy đủ thông tin theo yêu cầu khi đăng ký tour qua mạng bán
                                            tour của TourNest và chịu trách nhiệm về tính chính xác của những thông tin đã
                                            cung cấp. TourNest sẽ sử dụng những thông tin này để cung cấp cho các đối
                                            tác dịch vụ và tiến hành các thủ tục cần thiết cho chuyến đi. Nếu có sự khác
                                            biệt giữa thông tin mà Quý khách cung cấp so với thực tế dẫn đến việc phải
                                            điều chỉnh thì Quý khách vui lòng thanh toán các khoản chi phí phát sinh
                                            (nếu có).</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>IV. HỦY VÉ VÀ PHÍ
                                                HỦY VÉ DU LỊCH</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>1. Trường hợp bị
                                                hủy bỏ do TourNest:</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Nếu TourNest không thực
                                            hiện được chuyến du lịch, TourNest phải báo ngay cho khách hàng biết và
                                            thanh toán lại cho khách hàng toàn bộ số tiền khách hàng đã đóng trong vòng
                                            3 ngày kể từ lúc việc thông báo hủy chuyến du lịch bằng tiền mặt hoặc chuyển
                                            khoản.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>2. Trường hợp bị
                                                hủy bỏ do khách hàng:</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Sau khi đóng tiền, nếu Quý
                                            khách muốn chuyển/hủy tour xin vui lòng mang Vé Du Lịch đến văn phòng đăng
                                            ký tour để làm thủ tục chuyển/hủy tour và chịu mất phí theo quy định của
                                            TourNest. Không giải quyết các trường hợp liên hệ chuyển/hủy tour qua điện
                                            thoại.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>• Đối với ngày
                                                thường:</strong></span></p>
                                <div style="text-align:justify"><span style="color:#444444">- Được chuyển sang các
                                            tuyến du lịch khác trước ngày khởi&nbsp; hành 20 ngày : Không mất chi
                                            phí.&nbsp;</span></div>
                                <p style="text-align:justify"><span style="color:#444444">- Hủy hoặc chuyển sang các
                                            chuyến du lịch khác ngay sau khi đăng ký đến từ 15 - 19 ngày trước ngày khởi
                                            hành: Chi phí chuyển/hủy tour: 50% tiền cọc tour.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>• Đối với ngày lễ,
                                                Tết:&nbsp; </strong></span></p>
                                <div style="text-align:justify"><span style="color:#444444">- Được chuyển sang các
                                            tuyến du lịch khác trước ngày khởi &nbsp;hành 30 ngày : Không mất chi
                                            phí.</span></div>
                                <p style="text-align:justify"><span style="color:#444444">- Hủy hoặc chuyển sang các
                                            chuyến du lịch khác ngay sau khi đăng ký đến từ 25 - 29 ngày trước ngày khởi
                                            hành: Chi phí chuyển/hủy tour: 50% tiền cọc tour.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">* Các tour ngày lễ, Tết là
                                            các tour có thời gian diễn ra rơi vào một trong các ngày lễ, Tết theo quy
                                            định.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">* Thời gian hủy tour được
                                            tính cho ngày làm việc, không tính Thứ 7, Chủ Nhật và các ngày lễ,
                                            Tết.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">* Khách hàng hủy Vé du
                                            lịch trong thời điểm ngày thường và lễ Tết theo đúng những quy định trên,
                                            trong trường hợp khách thanh toán trực tuyến, nếu hủy Vé du lịch khách hàng
                                            sẽ chịu toàn bộ phí ngân hàng cho việc thanh toán tiền Vé du lịch. Việc hoàn
                                            trả tiền cho khách sẽ được TourNest thực hiện ngay sau khi ngân hàng thông
                                            báo tiền đã vào tài khoản của TourNest.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>3. Trường hợp bất
                                                khả kháng:</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Nếu chương trình du lịch
                                            bị hủy bỏ hoặc thay đổi bởi một trong hai bên vì một lý do bất khả kháng
                                            (hỏa hoạn, thời tiết, tai nạn, thiên tai, chiến tranh, dịch bệnh, hoãn, dời,
                                            hủy chuyến hoặc thay đổi khác của các phương tiện vận chuyển công cộng hoặc
                                            các sự kiến bất khả kháng khác theo quy định pháp luật…), thì hai bên sẽ
                                            không chịu bất kỳ nghĩa vụ bồi hoàn các tổn thất đã xảy ra và không chịu bất
                                            kỳ trách nhiệm pháp lý nào. Tuy nhiên mỗi bên có trách nhiệm cố gắng tối đa
                                            để giúp đỡ bên bị thiệt hại nhằm giảm thiểu các tổn thất gây ra vì lý do bất
                                            khả kháng. Thời gian hoàn tiền dịch vụ do hủy tour vì trường hợp bất khả
                                            kháng sẽ được hoàn tất trong vòng 60 – 90 ngày phụ thuộc điều kiện các đối
                                            tác cung ứng dịch vụ.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>4. Thay đổi lộ
                                                trình:&nbsp; </strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Tùy theo tình hình thực
                                            tế, TourNest giữ quyền thay đổi lộ trình, sắp xếp lại thứ tự các điểm tham
                                            quan hoặc hủy bỏ chuyến đi du lịch bất cứ lúc nào mà TourNest thấy cần
                                            thiết vì sự thuận tiện hoặc an toàn cho khách hàng.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>V. NHỮNG YÊU CẦU
                                                ĐẶC BIỆT TRONG CHUYẾN DU LỊCH</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Các yêu cầu đặc biệt của
                                            Quý khách phải được báo trước cho TourNest ngay tại thời điểm đăng ký.
                                            TourNest sẽ cố gắng đáp ứng những yêu cầu này trong khả năng của mình song
                                            sẽ không chịu trách nhiệm về bất kỳ sự từ chối cung cấp dịch vụ từ phía các
                                            nhà vận chuyển, khách sạn, nhà hàng và các nhà cung cấp dịch vụ độc lập
                                            khác.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>VI. KHÁCH
                                                SẠN</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Khách sạn được cung cấp
                                            trên cơ sở những phòng có hai giường đơn (TWN) hoặc một giường đôi (DBL) tùy
                                            theo cơ cấu phòng của các khách sạn. Khách sạn do TourNest đặt cho các
                                            chương trình tham quan có tiêu chuẩn tương ứng với các mức giá vé mà khách
                                            chọn khi đăng ký đi du lịch. Nếu cần thiết thay đổi về bất kỳ lý do nào,
                                            khách sạn thay thế sẽ tương đương với tiêu chuẩn của khách sạn ban đầu và sẽ
                                            được báo cho du khách trước khi khởi hành. Những yêu cầu đặc biệt của khách
                                            hàng nếu thông báo trước cho TourNest sẽ được đáp ứng tùy theo khả năng
                                            cung cấp của khách sạn và khách hàng phải trả thêm tiền đối với các yêu cầu
                                            này (nếu có). TourNest có quyền không đáp ứng những yêu cầu này nếu khách
                                            sạn từ chối cung cấp dịch vụ. Thời gian nhận phòng theo qui định tại các
                                            khách sạn là sau 14:00 và phải trả phòng trước 12:00. Đối với các trường hợp
                                            khách lưu trú tại hệ thống khách sạn/Resort 5 sao (Vinpearl, FLC, Grand Ho
                                            Tram Strip…) tuân thủ theo điều kiện hủy phạt của khách sạn/Resort cho từng
                                            thời điểm.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>VII. VẬN
                                                CHUYỂN</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Phương tiện vận chuyển tùy
                                            thuộc theo từng chương trình du lịch.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">Với chương trình đi bằng
                                            xe: xe máy lạnh (4, 7, 15, 25, 35, 45 chỗ) sẽ được TourNest sắp xếp tùy
                                            theo số lượng khách từng đoàn, phục vụ suốt chương trình tham quan.</span>
                                </p>

                                <p style="text-align:justify"><span style="color:#444444">TourNest không chịu trách
                                            nhiệm bồi hoàn và trách nhiệm pháp lý với những thiệt hại về vật chất lẫn
                                            tinh thần do việc chậm trễ, thay đổi giờ giấc khởi hành của các phương tiện
                                            vận chuyển công cộng hoặc sự chậm trễ do chính hành khách gây ra. TourNest
                                            chỉ thực hiện hành vi giúp đỡ để giảm bớt tổn thất cho hành khách.</span>
                                </p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>VIII. HÀNH
                                                LÝ</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Hành lý gọn nhẹ, với các
                                            chương trình sử dụng dịch vụ hàng không, hành lý miễn cước sẽ do các hãng
                                            hàng không qui định. TourNest không chịu trách nhiệm về sự thất lạc, hư
                                            hỏng hành lý hoặc bất kỳ vật dụng gì của du khách trong suốt chuyến đi, du
                                            khách tự bảo quản hành lý của mình. Nếu khách hàng bị mất hay thất lạc hành
                                            lý thì TourNest sẽ giúp hành khách liên lạc và khai báo với các bộ phận
                                            liên quan truy tìm hành lý bị mất hay thất lạc. Việc bồi thường hành lý bị
                                            mất hay thất lạc sẽ theo qui định của các đơn vị cung cấp dịch vụ hoặc các
                                            đơn vị bảo hiểm (nếu có).</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>IX. BẢO HIỂM DU
                                                LỊCH</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Giá dịch vụ du lịch trọn
                                            gói đã bao gồm bảo hiểm du lịch trong nước với mức đền bù cao nhất là
                                            120.000 VNĐ/khách Việt Nam/vụ cho nhân mạng và 12.000 VNĐ/khách Việt
                                            Nam/vụ cho hành lý.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">Điều kiện, điều khoản bảo
                                            hiểm: Theo quy tắc bảo hiểm khách du lịch trong nước QĐ số: 001321/2006 –
                                            BM/BHCN.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>Lưu ý: </strong>Vé
                                            du lịch cùng các văn bản kèm theo (biên nhận tour, chương trình tour) được
                                            xem như là bộ Hợp đồng lữ hành có giá trị ràng buộc với các bên và được lập
                                            thành 2 bản, mỗi bên giữ một bản, có giá trị pháp lý như nhau. Do tính chất
                                            tour dành cho khách lẻ (cá nhân / nhóm gia đình) nên khách hàng (người đăng
                                            ký và người đi cùng nhóm) được coi là chấp thuận toàn bộ nội dung trong Vé
                                            du lịch và các văn bản kèm theo kể từ thời điểm đặt cọc, không phụ thuộc vào
                                            việc khách hàng có ký tên trên Vé du lịch, biên nhận tour hay chương trình
                                            tour hay không.</span></p>
                                <div style="text-align:justify"><span style="color:#444444">Trong quá trình thực
                                            hiện, nếu xảy ra tranh chấp sẽ được giải quyết trên cơ sở thương lượng trong
                                            thời hạn 30 ngày kể từ ngày một trong hai bên đưa tranh chấp ra thương
                                            lượng. Hết thời hạn này nếu tranh chấp không được giải quyết hoặc một trong
                                            hai bên không đồng ý với kết quả thương lượng thì có quyền đưa tranh chấp ra
                                            giải quyết tại Tòa án thẩm quyền.</span></div>
                            </div>
                            <label class="checker">
                                Tôi đồng ý với các điều kiện trên
                                <input type="checkbox" id="DieuKien">
                                <span class="checkmark"></span>
                            </label>
                        </div>
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
                                        <input class="timestart" name="date" style="font-size: 15px;display: none" value="<%=date%>" >
                                        <p class="from"></p>
                                    </div>
                                </div>
                                <div class="end">
                                    <i class="fa-solid fa-calendar-days"></i>
                                    <div class="start-content">
                                        <h4>Kết thúc chuyến đi</h4>
                                        <p class="timeend" style="font-size: 15px;">Chủ Nhật, 3 Tháng 12, 2023</p>
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
                                        <%
                                            Integer quantity = (Integer) session.getAttribute("quatity");
                                            int quatity = (quantity != null) ? quantity.intValue() : 1;
                                            session.setAttribute("quatity",quatity);

                                            Integer quantitycc = (Integer) session.getAttribute("quatitycc");
                                            int quatitycc = (quantitycc != null) ? quantitycc.intValue() : 1;
                                            session.setAttribute("quatitycc",quatitycc);
                                        %>
                                        <td class="t-price text-right"><%=quatity%></td>
                                    </tr>
                                    <tr>
                                        <td>Trẻ em (40%) </td>
                                        <td class="t-price text-right"><%=quatitycc%></td>
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
                                    <button class="btn btn-primary btn-order" style="width:100% "
                                            onclick="kiemTraDieuKien()">
                                        <a href="BillServlet?id=<%=t.getId()%>"></a> Hóa đơn
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
            </div>
        </section>

    </div>
    </form>
</main>

<script>
    function kiemTraDieuKien() {
        // Kiểm tra xem checkbox đã được chọn chưa
        var dieuKienCheckbox = document.getElementById("DieuKien");
        if (dieuKienCheckbox.checked) {
            // Nếu đã chọn, chuyển hướng đến trang "bill.html"
            window.location.href = "BillServlet?id=<%=t.getId()%>";
        } else {
            // Nếu chưa chọn, hiển thị thông báo
            alert('Bạn đồng ý với điều khoản đăng ký online.');
        }
    }
</script>

</body>

<!-- footer-copyright start -->
<%@include file="common/footer.jsp"%><!-- /.footer-copyright-->
<!-- footer-copyright end -->
<script>
    const dateInput = document.querySelector('input[name="date"]');
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
<%--<script>--%>
<%--    const pay50 = document.getElementById('pay50');--%>
<%--    const pay100 = document.getElementById('pay100');--%>
<%--    var totalPrice = document.getElementById('TotalPrice');--%>
<%--    var totalx = document.getElementById('total');--%>
<%--    var total = totalx.value();--%>
<%--    pay50.addEventListener('change', function() {--%>
<%--        total/=2;--%>
<%--        totalPrice.textContent = total.toLocaleString()--%>
<%--    });--%>
<%--    pay100.addEventListener('change', function() {--%>
<%--        total*=2;--%>
<%--        totalPrice.textContent = total.toLocaleString()--%>
<%--    });--%>

<%--</script>--%>
</html>
