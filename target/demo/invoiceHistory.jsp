<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.DAO.BillDAO" %>
<%@ page import="vn.edu.hcmuaf.DAO.BookingDAO" %>
<%@ page import="vn.edu.hcmuaf.DAO.TourDao" %>
<%@ page import="vn.edu.hcmuaf.DAO.CustomerDAO" %>
<%@ page import="vn.edu.hcmuaf.bean.*" %>
<%@ page import="vn.edu.hcmuaf.serice.Const" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 5/1/2024
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1"/>
    <link rel="stylesheet" href="assets/css/invoiceHistory.css">
    <%--    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap" rel="stylesheet" />--%>
    <%--    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css?display=swap" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css?display=swap" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous"/>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="manifest" href="/manifest.json"/>
    <title>TourNest</title>

    <style>
        .backgroudhover {
            background-color: #0dcaf0;
        }
        .hover:hover{
            background-color: aliceblue;
        }
        .none{
            display: none;
        }
        #pills-all-tab{
            color: black;!important;
        }#pills-wait-tab{
             color: black;!important;
         }#pills-destroy-tab{
              color: black;!important;
          }#pills-complete-tab{
               color: black;!important;
           }
        .container .wrapper .info .info-wrapper{
            padding: 26px;
            border: solid black 2px;
            border-radius: 10px;
            margin-left: -15px;
        }
        .container .wrapper .profile-links{
            width: 90%;
            border: solid black 2px;
            border-radius: 10px;
            padding: 10px 30px;
        }
        .container .wrapper .profile-links .mb-1 a{
            margin-top: 10px;
            margin-bottom: 10px;
            color: black;
            text-decoration: none;
            text-align: center;
            width: 100%;
            background-color: #f8f8f8;
            padding: 15px 5px 15px 30px;
        }
        .container .wrapper .profile-links .mb-1 a:hover{
            background-color: #d5d5d5;
        }
        .btndetail{
            border-radius: 3px;
            padding: 5px 10px;
            color: black;
            background-color: white;
        }
        .btnhuydon{
            border-radius: 3px;
            padding: 5px 15px;
            border: none;
            background-color: white;
            color: red;
        }
        .btnhuydon:hover{
            background-color: #d5d5d5;
        }
    </style>
</head>
<%
    User use = (User) session.getAttribute("user");
    ArrayList<Bill> choxacnhan = (ArrayList<Bill>) request.getAttribute("choxacnhan");
    ArrayList<Bill> daxacnhan = (ArrayList<Bill>) request.getAttribute("daxacnhan");
    ArrayList<Bill> dahuy = (ArrayList<Bill>) request.getAttribute("dahuy");
    ArrayList<Bill> daxong = (ArrayList<Bill>) request.getAttribute("daxong");
%>
<body>
<div id="root">

    <div class="header__placeholder"></div>
    <main role="main">
        <div class="profile">
            <div class="container">
                <div class="row py-4">
                    <div class="col-md-3 col-12 left">
                        <div class="wrapper p-4">
                            <div class="info d-flex align-items-center mb-md-3">
                                <div class="image me-3">
                                    <a class="" href="/profile/info"><img class="rounded-circle"
                                                                          src=""
                                                                          alt=""/></a>
                                </div>
                                <div class="info-wrapper">
                                    <div>
                                        <h5 class="fw-bold"><%=use.getUserName()%>
                                        </h5>
                                        <small><%=use.getEmail()%>
                                        </small>
                                    </div>
                                    <span id="toggle-profile-menu" class="d-lg-none"><i
                                            class="icon icon--chevron-down"></i></span>
                                </div>
                            </div>
                            <nav class="profile-links py-3 d-block">
                                <ul class="list-unstyled mb-0 py-3 pt-md-1">
                                    <li class="mb-1">
                                        <a aria-expanded="false"
                                           class="d-inline-flex align-items-center rounded collapsed"
                                           href="index.jsp"><h6 class="fw-bold">Trang chủ</h6></a>
                                        <div id="getting-started-collapse" class="collapse show">
                                            <ul class="list-unstyled fw-normal pb-1 small">
                                                <li><a class="d-inline-flex align-items-center rounded"
                                                       href="index.jsp#spo">Ưu đãi</a></li>
                                                <li><a class="d-inline-flex align-items-center rounded"
                                                       href="index.jsp#gallery">Tour Hot</a></li>
                                                <li><a class="d-inline-flex align-items-center rounded"
                                                       href="CategorieServlet">Sản Phẩm</a></li>
                                                <li><a class="d-inline-flex align-items-center rounded"
                                                       href="index.jsp#blog">Tin tức</a></li>
                                                <li><a class="d-inline-flex align-items-center rounded"
                                                       href="index.jsp#feedback">Liên hệ</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-md-9 col-12 right ps-md-4">
                        <div class="wrapper order"
                             style="background: rgb(255, 255, 255); border-radius: 10px; box-sizing: border-box; border: none;">
                            <div class="tab" style="box-sizing: border-box;">
                                <ul class="nav py-3 tab flex-sm-row mb-3" role="tablist">
                                    <li class="nav-item flex-sm-fill text-sm-center hover backgroudhover" style="cursor: pointer;color: black;border-radius: 5px" onclick="show(this.id)" id="choxacnhan" role="presentation">
                                        <a id="pills-all-tab" class="nav-link " aria-controls="pills-all" aria-selected="true" role="tab">
                                            Chờ xác nhận
                                        </a>
                                    </li>
                                    <li class="nav-item flex-sm-fill text-sm-center hover" style="cursor: pointer;color: black;border-radius: 5px" onclick="show(this.id)" id="daxacnhan" role="presentation">
                                        <a id="pills-wait-tab" class="nav-link" aria-controls="pills-wait" aria-selected="false" role="tab">
                                            Đã xác nhận
                                        </a>
                                    </li>
                                    <li class="nav-item flex-sm-fill text-sm-center hover" style="cursor: pointer;color: black;border-radius: 5px" onclick="show(this.id)" id="dahuy" role="presentation">
                                        <a id="pills-destroy-tab" class="nav-link" aria-controls="pills-complete" aria-selected="false" role="tab">
                                            Đã hủy
                                        </a>
                                    </li>
                                    <li class="nav-item flex-sm-fill text-sm-center hover" style="cursor: pointer;color: black;border-radius: 5px" onclick="show(this.id)" id="daxong" role="presentation">
                                        <a id="pills-complete-tab" class="nav-link" aria-controls="pills-complete" aria-selected="false" role="tab">
                                            Đã xong
                                        </a>
                                    </li>
                                </ul>
                                <div class="form-search mb-4">
                                    <form action="#" method="get" style="border: 1px solid #d8d8d8; border-radius: 5px; overflow: hidden; height: 50px; position: relative;">
                                        <input id="myInput" class="form-control px-5" type="text" placeholder="Tìm kiếm theo tên tour/ tourCode hoặc số booking" aria-label="Tìm kiếm" style="overflow: visible; font-size: 1rem; line-height: 1.5; background-color: #ffffff; border-radius: 0.25rem; transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out; display: block; width: 100%; height: 100%; border: none; color: #2d4271; font-weight: 400; padding: 0.375rem 3rem;">
                                        <i class="icon icon--search" style="position: absolute; top: 50%; left: 13px; transform: translateY(-50%); z-index: 1; font-size: 18px; color: #2d4271; pointer-events: none;"></i>
                                    </form>
                                </div>
                                <div id="pills-tabContent" class="tab-content" style="box-sizing: border-box;">
                                    <div
                                            id="pills-all"
                                            class="tab-pane result fade active show"
                                            aria-labelledby="pills-all-tab"
                                            role="tabpanel"
                                            style="box-sizing: border-box; transition: opacity 0.15s linear 0s; display: block; color: rgb(45, 66, 113);">

                                        <%--Chờ xác nhận--%>
                                        <div class="choxacnhan" >
                                        <%for (Bill bill : choxacnhan) { %>
                                        <form action="DetailBill" method="post" id="<%=bill.getId()%>">
                                            <div class="item mb-4" class="pills-all-tab" name="itemOrder"
                                                 style="box-sizing: border-box; margin-bottom: 1.5rem;">
                                                <h4 class="fw-bolder"
                                                    style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: calc(1.275rem + 0.3vw); font-weight: 900;"></h4>
                                                <p class="text-muted"
                                                   style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(108, 117, 125);">
                                                    Ngày
                                                    đặt <%=BookingDAO.getBookingbyId(bill.getBookingId()).getDate()%>
                                                </p>

                                                <input name="billid" value="<%=bill.getId()%>"
                                                       style="display: none">


                                                <div
                                                        class="card mb-3 p-md-3"
                                                        style="
                                                            position: relative;
                                                            display: flex;
                                                            flex-direction: column;
                                                            min-width: 0px;
                                                            overflow-wrap: break-word;
                                                            background: rgb(255, 255, 255);
                                                            border: 0.5px solid rgb(213, 213, 213);
                                                            border-radius: 10px;
                                                            box-sizing: border-box;
                                                            margin-bottom: 1rem;
                                                            padding: 1rem;
                                                        "
                                                >
                                                    <div class="row g-0"
                                                         style="box-sizing: border-box; display: flex; flex-wrap: wrap;">
                                                        <div class="col-md-3 col-12"
                                                             style="box-sizing: border-box; max-width: 100%; margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 25%;">
                                                            <div class="image"
                                                                 style="box-sizing: border-box; overflow: hidden; position: relative; padding-top: 68%;">
                                                                <a
                                                                        href="index.jsp"
                                                                        target="_blank"
                                                                        style="box-sizing: border-box; background-color: transparent; text-decoration: none; color: rgb(45, 66, 113);"
                                                                >
                                                                    <img
                                                                    <%--                                                                        <%=BookingDAO.getBookingbyId(bill.getBookingId()).getTourId()%>--%>
                                                                            src="assets/images/item/<%=TourDao.findtourbyid(BookingDAO.getBookingbyId(bill.getBookingId()).getTourId()).getImage()%>"
                                                                            style="
                                                                                box-sizing: border-box;
                                                                                border-style: none;
                                                                                vertical-align: middle;
                                                                                max-width: 100%;
                                                                                border-radius: 10px;
                                                                                transition: transform 200ms ease 0s, -webkit-transform 200ms ease 0s;
                                                                                height: 100%;
                                                                                width: 100%;
                                                                                transform: translate(-50%, -50%);
                                                                                position: absolute;
                                                                                top: 50%;
                                                                                left: 50%;
                                                                                right: unset;
                                                                                bottom: unset;
                                                                                object-fit: cover;
                                                                            "
                                                                    />
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-9 col-12 p-3"
                                                             style="box-sizing: border-box; max-width: 100%; margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 75%; padding: 1rem;">
                                                            <h5 class="card-title h5 h6-sm fw-bolder mb-3"
                                                                style="box-sizing: border-box; margin-top: 0px; line-height: 1.2; font-size: 1.25rem; margin-bottom: 1rem; font-weight: 900;">
                                                                <a
                                                                        href="https://travel.com.vn/du-lich/track-booking-no-210607080237/tra-cuu-booking.aspx"
                                                                        style="box-sizing: border-box; background-color: transparent; text-decoration: none; color: rgb(45, 66, 113);"
                                                                ></a>
                                                            </h5>
                                                            <div
                                                                    class="row align-items-center"
                                                                    style="box-sizing: border-box; display: flex; flex-wrap: wrap; margin-right: calc(-0.75rem); margin-left: calc(-0.75rem); -webkit-box-align: center; align-items: center;"
                                                            >
                                                                <div
                                                                        class="col-md-8 col-7"
                                                                        style="
                                                                            box-sizing: border-box;
                                                                            max-width: 100%;
                                                                            padding-right: calc(0.75rem);
                                                                            padding-left: calc(0.75rem);
                                                                            margin-top: 0px;
                                                                            flex: 0 0 auto;
                                                                            -webkit-box-flex: 0;
                                                                            width: 66.6667%;
                                                                        "
                                                                >
                                                                    <div class="d-flex d-lg-block justify-content-between"
                                                                         style="box-sizing: border-box; -webkit-box-pack: justify; justify-content: space-between; display: block;">
                                                                        <div style="box-sizing: border-box;">
                                                                            <div class="s-rate"
                                                                                 style="box-sizing: border-box; display: flex; -webkit-box-align: center; align-items: center; margin-right: 22px; margin-bottom: 25px;">
                                                                                <div class="s-comment"
                                                                                     style="box-sizing: border-box;">
                                                                                    <h6 class="fw-bold mb-0"
                                                                                        style="box-sizing: border-box; margin-top: 0px; line-height: 1.2; font-size: 1rem; margin-bottom: 0px; font-weight: 700;"></h6>
                                                                                    <p style="box-sizing: border-box; margin: 0px; color: rgb(45, 66, 113);"><%=TourDao.findtourbyid(BookingDAO.getBookingbyId(bill.getBookingId()).getTourId()).getName()%>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                            <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">
                                                                            <span class="text-muted"
                                                                                  style="box-sizing: border-box; color: rgb(108, 117, 125);">Mã hóa đơn: <%=bill.getBookingId()%></span><br
                                                                                    style="box-sizing: border-box;"/>
                                                                                <span class="text-muted"
                                                                                      style="box-sizing: border-box; color: rgb(108, 117, 125);">Mã Tour: <%=TourDao.findtourbyid(BookingDAO.getBookingbyId(bill.getBookingId()).getTourId()).getId()%> </span>
                                                                                <br/>
                                                                                <span class="text-muted"
                                                                                      style="box-sizing: border-box; color: rgb(108, 117, 125);">ngày bắt đầu : <%=BookingDAO.getBookingbyId(bill.getBookingId()).getDateStart()%> </span>
                                                                            </p>
                                                                            <p class="card-text"
                                                                               style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;">
                                                                                <small class="text-muted" id="huyhuydon<%=bill.getId()%>"
                                                                                       style="box-sizing: border-box; font-size: 0.875em; color: red; !important;"><%=bill.getNoteBill() == null ? "" : bill.getNoteBill()%>
                                                                                </small>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div
                                                                        class="col-md-4 col-5 text-end"
                                                                        style="
                                                                            box-sizing: border-box;
                                                                            max-width: 100%;
                                                                            padding-right: calc(0.75rem);
                                                                            padding-left: calc(0.75rem);
                                                                            margin-top: 0px;
                                                                            flex: 0 0 auto;
                                                                            -webkit-box-flex: 0;
                                                                            width: 33.3333%;
                                                                            text-align: right;
                                                                        "
                                                                >
                                                                    <h6
                                                                            class="text-primary"
                                                                            style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1rem; color: rgb(253, 80, 86);">
                                                                        <%=bill.getPaymentMethod()%>
                                                                    </h6>
                                                                    <h5
                                                                            class="text-primary fw-bold"
                                                                            style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: 1.25rem; font-weight: 700; color: rgb(253, 80, 86);">
                                                                        <%=bill.getToltalPrice()%>₫
                                                                    </h5>

                                                                    <button type="submit">Xem chi tiết</button>
                                                                    <%if(bill.getStatus().equalsIgnoreCase(Const.CHOXACNHAN)){%>
                                                                    <button id="huydon<%=bill.getId()%>" onclick="destroybill(<%=bill.getId()%>)">Hủy đơn</button>
                                                                    <%}%>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <%} %>
                                        </div>
                                        <%--end Chờ xác nhận--%>

                                        <%--Đã xác nhận--%>
                                            <div class="daxacnhan none">
                                                <%for (Bill bill : daxacnhan) { %>
                                                <form action="DetailBill" method="post">
                                                    <div class="item mb-4" class="pills-all-tab" name="itemOrder"
                                                         style="box-sizing: border-box; margin-bottom: 1.5rem;">
                                                        <h4 class="fw-bolder"
                                                            style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: calc(1.275rem + 0.3vw); font-weight: 900;"></h4>
                                                        <p class="text-muted"
                                                           style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(108, 117, 125);">
                                                            Ngày
                                                            đặt <%=BookingDAO.getBookingbyId(bill.getBookingId()).getDate()%>
                                                        </p>

                                                        <input name="billid" value="<%=bill.getId()%>"
                                                               style="display: none">


                                                        <div
                                                                class="card mb-3 p-md-3"
                                                                style="
                                                            position: relative;
                                                            display: flex;
                                                            flex-direction: column;
                                                            min-width: 0px;
                                                            overflow-wrap: break-word;
                                                            background: rgb(255, 255, 255);
                                                            border: 0.5px solid rgb(213, 213, 213);
                                                            border-radius: 10px;
                                                            box-sizing: border-box;
                                                            margin-bottom: 1rem;
                                                            padding: 1rem;
                                                        "
                                                        >
                                                            <div class="row g-0"
                                                                 style="box-sizing: border-box; display: flex; flex-wrap: wrap;">
                                                                <div class="col-md-3 col-12"
                                                                     style="box-sizing: border-box; max-width: 100%; margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 25%;">
                                                                    <div class="image"
                                                                         style="box-sizing: border-box; overflow: hidden; position: relative; padding-top: 68%;">
                                                                        <a
                                                                                href="index.jsp"
                                                                                target="_blank"
                                                                                style="box-sizing: border-box; background-color: transparent; text-decoration: none; color: rgb(45, 66, 113);"
                                                                        >
                                                                            <img
                                                                            <%--                                                                        <%=BookingDAO.getBookingbyId(bill.getBookingId()).getTourId()%>--%>
                                                                                    src="assets/images/item/<%=TourDao.findtourbyid(BookingDAO.getBookingbyId(bill.getBookingId()).getTourId()).getImage()%>"
                                                                                    style="
                                                                                box-sizing: border-box;
                                                                                border-style: none;
                                                                                vertical-align: middle;
                                                                                max-width: 100%;
                                                                                border-radius: 10px;
                                                                                transition: transform 200ms ease 0s, -webkit-transform 200ms ease 0s;
                                                                                height: 100%;
                                                                                width: 100%;
                                                                                transform: translate(-50%, -50%);
                                                                                position: absolute;
                                                                                top: 50%;
                                                                                left: 50%;
                                                                                right: unset;
                                                                                bottom: unset;
                                                                                object-fit: cover;
                                                                            "
                                                                            />
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-9 col-12 p-3"
                                                                     style="box-sizing: border-box; max-width: 100%; margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 75%; padding: 1rem;">
                                                                    <h5 class="card-title h5 h6-sm fw-bolder mb-3"
                                                                        style="box-sizing: border-box; margin-top: 0px; line-height: 1.2; font-size: 1.25rem; margin-bottom: 1rem; font-weight: 900;">
                                                                        <a
                                                                                href="https://travel.com.vn/du-lich/track-booking-no-210607080237/tra-cuu-booking.aspx"
                                                                                style="box-sizing: border-box; background-color: transparent; text-decoration: none; color: rgb(45, 66, 113);"
                                                                        ></a>
                                                                    </h5>
                                                                    <div
                                                                            class="row align-items-center"
                                                                            style="box-sizing: border-box; display: flex; flex-wrap: wrap; margin-right: calc(-0.75rem); margin-left: calc(-0.75rem); -webkit-box-align: center; align-items: center;"
                                                                    >
                                                                        <div
                                                                                class="col-md-8 col-7"
                                                                                style="
                                                                            box-sizing: border-box;
                                                                            max-width: 100%;
                                                                            padding-right: calc(0.75rem);
                                                                            padding-left: calc(0.75rem);
                                                                            margin-top: 0px;
                                                                            flex: 0 0 auto;
                                                                            -webkit-box-flex: 0;
                                                                            width: 66.6667%;
                                                                        "
                                                                        >
                                                                            <div class="d-flex d-lg-block justify-content-between"
                                                                                 style="box-sizing: border-box; -webkit-box-pack: justify; justify-content: space-between; display: block;">
                                                                                <div style="box-sizing: border-box;">
                                                                                    <div class="s-rate"
                                                                                         style="box-sizing: border-box; display: flex; -webkit-box-align: center; align-items: center; margin-right: 22px; margin-bottom: 25px;">
                                                                                        <div class="s-comment"
                                                                                             style="box-sizing: border-box;">
                                                                                            <h6 class="fw-bold mb-0"
                                                                                                style="box-sizing: border-box; margin-top: 0px; line-height: 1.2; font-size: 1rem; margin-bottom: 0px; font-weight: 700;"></h6>
                                                                                            <p style="box-sizing: border-box; margin: 0px; color: rgb(45, 66, 113);"><%=TourDao.findtourbyid(BookingDAO.getBookingbyId(bill.getBookingId()).getTourId()).getName()%>
                                                                                            </p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">
                                                                            <span class="text-muted"
                                                                                  style="box-sizing: border-box; color: rgb(108, 117, 125);">Mã hóa đơn: <%=bill.getBookingId()%></span><br
                                                                                            style="box-sizing: border-box;"/>
                                                                                        <span class="text-muted"
                                                                                              style="box-sizing: border-box; color: rgb(108, 117, 125);">Mã Tour: <%=TourDao.findtourbyid(BookingDAO.getBookingbyId(bill.getBookingId()).getTourId()).getId()%> </span>
                                                                                        <br/>
                                                                                        <span class="text-muted"
                                                                                              style="box-sizing: border-box; color: rgb(108, 117, 125);">ngày bắt đầu : <%=BookingDAO.getBookingbyId(bill.getBookingId()).getDateStart()%> </span>
                                                                                    </p>
                                                                                    <p class="card-text"
                                                                                       style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;">
                                                                                        <small class="text-muted"
                                                                                               style="box-sizing: border-box; font-size: 0.875em; color: red;"><%=bill.getNoteBill() == null ? "" : bill.getNoteBill()%>
                                                                                        </small>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div
                                                                                class="col-md-4 col-5 text-end"
                                                                                style="
                                                                            box-sizing: border-box;
                                                                            max-width: 100%;
                                                                            padding-right: calc(0.75rem);
                                                                            padding-left: calc(0.75rem);
                                                                            margin-top: 0px;
                                                                            flex: 0 0 auto;
                                                                            -webkit-box-flex: 0;
                                                                            width: 33.3333%;
                                                                            text-align: right;
                                                                        "
                                                                        >
                                                                            <h6
                                                                                    class="text-primary"
                                                                                    style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1rem; color: rgb(253, 80, 86);">
                                                                                <%=bill.getPaymentMethod()%>
                                                                            </h6>
                                                                            <h5
                                                                                    class="text-primary fw-bold"
                                                                                    style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: 1.25rem; font-weight: 700; color: rgb(253, 80, 86);">
                                                                                <%=bill.getToltalPrice()%>₫
                                                                            </h5>

                                                                            <button type="submit">Xem chi tiết</button>
                                                                            <%if(bill.getStatus().equalsIgnoreCase(Const.CHOXACNHAN)){%>
                                                                            <button type="submit">Hủy đơn</button>
                                                                            <%}%>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                                <%} %>
                                            </div>
                                        <%--end Đã xác nhận--%>

                                            <%--Đã hủy--%>
                                            <div class="dahuy none">
                                                <% for (Bill bill : dahuy) { %>
                                                <form action="DetailBill" method="post">
                                                    <div class="item mb-4 pills-all-tab" name="itemOrder" style="box-sizing: border-box; margin-bottom: 1.5rem;">
                                                        <h4 class="fw-bolder" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: calc(1.275rem + 0.3vw); font-weight: 900;"></h4>
                                                        <p class="text-muted" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(108, 117, 125);">
                                                            Ngày đặt <%= BookingDAO.getBookingbyId(bill.getBookingId()).getDate() %>
                                                        </p>

                                                        <input name="billid" value="<%= bill.getId() %>" style="display: none">

                                                        <div class="card mb-3 p-md-3" style="position: relative; display: flex; flex-direction: column; min-width: 0px; overflow-wrap: break-word; background: rgb(255, 255, 255); border: 0.5px solid rgb(213, 213, 213); border-radius: 10px; box-sizing: border-box; margin-bottom: 1rem; padding: 1rem;">
                                                            <div class="row g-0" style="box-sizing: border-box; display: flex; flex-wrap: wrap;">
                                                                <div class="col-md-3 col-12" style="box-sizing: border-box; max-width: 100%; margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 25%;">
                                                                    <div class="image" style="box-sizing: border-box; overflow: hidden; position: relative; padding-top: 68%;">
                                                                        <a href="index.jsp" target="_blank" style="box-sizing: border-box; background-color: transparent; text-decoration: none; color: rgb(45, 66, 113);">
                                                                            <img src="assets/images/item/<%= TourDao.findtourbyid(BookingDAO.getBookingbyId(bill.getBookingId()).getTourId()).getImage() %>" style="box-sizing: border-box; border-style: none; vertical-align: middle; max-width: 100%; border-radius: 10px; transition: transform 200ms ease 0s, -webkit-transform 200ms ease 0s; height: 100%; width: 100%; transform: translate(-50%, -50%); position: absolute; top: 50%; left: 50%; right: unset; bottom: unset; object-fit: cover;" />
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-9 col-12 p-3" style="box-sizing: border-box; max-width: 100%; margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 75%; padding: 1rem;">
                                                                    <h5 class="card-title h5 h6-sm fw-bolder mb-3" style="box-sizing: border-box; margin-top: 0px; line-height: 1.2; font-size: 1.25rem; margin-bottom: 1rem; font-weight: 900;">
                                                                        <a href="https://travel.com.vn/du-lich/track-booking-no-210607080237/tra-cuu-booking.aspx" style="box-sizing: border-box; background-color: transparent; text-decoration: none; color: rgb(45, 66, 113);"></a>
                                                                    </h5>
                                                                    <div class="row align-items-center" style="box-sizing: border-box; display: flex; flex-wrap: wrap; margin-right: calc(-0.75rem); margin-left: calc(-0.75rem); -webkit-box-align: center; align-items: center;">
                                                                        <div class="col-md-8 col-7" style="box-sizing: border-box; max-width: 100%; padding-right: calc(0.75rem); padding-left: calc(0.75rem); margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 66.6667%;">
                                                                            <div class="d-flex d-lg-block justify-content-between" style="box-sizing: border-box; -webkit-box-pack: justify; justify-content: space-between; display: block;">
                                                                                <div style="box-sizing: border-box;">
                                                                                    <div class="s-rate" style="box-sizing: border-box; display: flex; -webkit-box-align: center; align-items: center; margin-right: 22px; margin-bottom: 25px;">
                                                                                        <div class="s-comment" style="box-sizing: border-box;">
                                                                                            <h6 class="fw-bold mb-0" style="box-sizing: border-box; margin-top: 0px; line-height: 1.2; font-size: 1rem; margin-bottom: 0px; font-weight: 700;"></h6>
                                                                                            <p style="box-sizing: border-box; margin: 0px; color: rgb(45, 66, 113);"><%= TourDao.findtourbyid(BookingDAO.getBookingbyId(bill.getBookingId()).getTourId()).getName() %></p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">
                                                                                        <span class="text-muted" style="box-sizing: border-box; color: rgb(108, 117, 125);">Mã hóa đơn: <%= bill.getBookingId() %></span><br style="box-sizing: border-box;" />
                                                                                        <span class="text-muted" style="box-sizing: border-box; color: rgb(108, 117, 125);">Mã Tour: <%= TourDao.findtourbyid(BookingDAO.getBookingbyId(bill.getBookingId()).getTourId()).getId() %> </span><br />
                                                                                        <span class="text-muted" style="box-sizing: border-box; color: rgb(108, 117, 125);">ngày bắt đầu : <%= BookingDAO.getBookingbyId(bill.getBookingId()).getDateStart() %> </span>
                                                                                    </p>
                                                                                    <p class="card-text" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;">
                                                                                        <small class="text-muted"
                                                                                               style="box-sizing: border-box; font-size: 0.875em; color: red !important;"><%=bill.getNoteBill() == null ? "" : bill.getNoteBill()%>
                                                                                        </small>
                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4 col-5 text-end" style="box-sizing: border-box; max-width: 100%; padding-right: calc(0.75rem); padding-left: calc(0.75rem); margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 33.3333%; text-align: right;">
                                                                            <h6 class="text-primary" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1rem; color: rgb(253, 80, 86);"><%= bill.getPaymentMethod() %></h6>
                                                                            <h5 class="text-primary fw-bold" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: 1.25rem; font-weight: 700; color: rgb(253, 80, 86);"><%= bill.getToltalPrice() %>₫</h5>

                                                                            <button type="submit">Xem chi tiết</button>
                                                                            <% if (bill.getStatus().equalsIgnoreCase(Const.CHOXACNHAN)) { %>
                                                                            <button type="submit">Hủy đơn</button>
                                                                            <% } %>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                                <% } %>
                                            </div>
                                            <%--end Đã hủy--%>

                                            <%--Đã xong--%>
                                            <div class="daxong none">
                                                <% for (Bill bill : daxong) { %>
                                                <form action="DetailBill" method="post">
                                                    <div class="item mb-4 pills-all-tab" name="itemOrder" style="box-sizing: border-box; margin-bottom: 1.5rem;">
                                                        <h4 class="fw-bolder" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: calc(1.275rem + 0.3vw); font-weight: 900;"></h4>
                                                        <p class="text-muted" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(108, 117, 125);">
                                                            Ngày đặt <%= BookingDAO.getBookingbyId(bill.getBookingId()).getDate() %>
                                                        </p>

                                                        <input name="billid" value="<%= bill.getId() %>" style="display: none">

                                                        <div class="card mb-3 p-md-3" style="position: relative; display: flex; flex-direction: column; min-width: 0px; overflow-wrap: break-word; background: rgb(255, 255, 255); border: 0.5px solid rgb(213, 213, 213); border-radius: 10px; box-sizing: border-box; margin-bottom: 1rem; padding: 1rem;">
                                                            <div class="row g-0" style="box-sizing: border-box; display: flex; flex-wrap: wrap;">
                                                                <div class="col-md-3 col-12" style="box-sizing: border-box; max-width: 100%; margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 25%;">
                                                                    <div class="image" style="box-sizing: border-box; overflow: hidden; position: relative; padding-top: 68%;">
                                                                        <a href="index.jsp" target="_blank" style="box-sizing: border-box; background-color: transparent; text-decoration: none; color: rgb(45, 66, 113);">
                                                                            <img src="assets/images/item/<%= TourDao.findtourbyid(BookingDAO.getBookingbyId(bill.getBookingId()).getTourId()).getImage() %>" style="box-sizing: border-box; border-style: none; vertical-align: middle; max-width: 100%; border-radius: 10px; transition: transform 200ms ease 0s, -webkit-transform 200ms ease 0s; height: 100%; width: 100%; transform: translate(-50%, -50%); position: absolute; top: 50%; left: 50%; right: unset; bottom: unset; object-fit: cover;" />
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-9 col-12 p-3" style="box-sizing: border-box; max-width: 100%; margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 75%; padding: 1rem;">
                                                                    <h5 class="card-title h5 h6-sm fw-bolder mb-3" style="box-sizing: border-box; margin-top: 0px; line-height: 1.2; font-size: 1.25rem; margin-bottom: 1rem; font-weight: 900;">
                                                                        <a href="https://travel.com.vn/du-lich/track-booking-no-210607080237/tra-cuu-booking.aspx" style="box-sizing: border-box; background-color: transparent; text-decoration: none; color: rgb(45, 66, 113);"></a>
                                                                    </h5>
                                                                    <div class="row align-items-center" style="box-sizing: border-box; display: flex; flex-wrap: wrap; margin-right: calc(-0.75rem); margin-left: calc(-0.75rem); -webkit-box-align: center; align-items: center;">
                                                                        <div class="col-md-8 col-7" style="box-sizing: border-box; max-width: 100%; padding-right: calc(0.75rem); padding-left: calc(0.75rem); margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 66.6667%;">
                                                                            <div class="d-flex d-lg-block justify-content-between" style="box-sizing: border-box; -webkit-box-pack: justify; justify-content: space-between; display: block;">
                                                                                <div style="box-sizing: border-box;">
                                                                                    <div class="s-rate" style="box-sizing: border-box; display: flex; -webkit-box-align: center; align-items: center; margin-right: 22px; margin-bottom: 25px;">
                                                                                        <div class="s-comment" style="box-sizing: border-box;">
                                                                                            <h6 class="fw-bold mb-0" style="box-sizing: border-box; margin-top: 0px; line-height: 1.2; font-size: 1rem; margin-bottom: 0px; font-weight: 700;"></h6>
                                                                                            <p style="box-sizing: border-box; margin: 0px; color: rgb(45, 66, 113);"><%= TourDao.findtourbyid(BookingDAO.getBookingbyId(bill.getBookingId()).getTourId()).getName() %></p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">
                                                                                        <span class="text-muted" style="box-sizing: border-box; color: rgb(108, 117, 125);">Mã hóa đơn: <%= bill.getBookingId() %></span><br style="box-sizing: border-box;" />
                                                                                        <span class="text-muted" style="box-sizing: border-box; color: rgb(108, 117, 125);">Mã Tour: <%= TourDao.findtourbyid(BookingDAO.getBookingbyId(bill.getBookingId()).getTourId()).getId() %> </span><br />
                                                                                        <span class="text-muted" style="box-sizing: border-box; color: rgb(108, 117, 125);">ngày bắt đầu : <%= BookingDAO.getBookingbyId(bill.getBookingId()).getDateStart() %> </span>
                                                                                    </p>
                                                                                    <p class="card-text" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;">
                                                                                        <small class="text-muted"
                                                                                               style="box-sizing: border-box; font-size: 0.875em; color: red;"><%=bill.getNoteBill() == null ? "" : bill.getNoteBill()%>
                                                                                        </small>                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4 col-5 text-end" style="box-sizing: border-box; max-width: 100%; padding-right: calc(0.75rem); padding-left: calc(0.75rem); margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 33.3333%; text-align: right;">
                                                                            <h6 class="text-primary" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1rem; color: rgb(253, 80, 86);"><%= bill.getPaymentMethod() %></h6>
                                                                            <h5 class="text-primary fw-bold" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: 1.25rem; font-weight: 700; color: rgb(253, 80, 86);"><%= bill.getToltalPrice() %>₫</h5>

                                                                            <button type="submit">Xem chi tiết</button>
                                                                            <% if (bill.getStatus().equalsIgnoreCase(Const.CHOXACNHAN)) { %>
                                                                            <button type="submit">Hủy đơn</button>
                                                                            <% } %>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                                <% } %>
                                            </div>
                                            <%--end Đã xong--%>



                                    </div>
                                    <div id="pills-wait" class="tab-pane fade" aria-labelledby="pills-wait-tab"
                                         role="tabpanel"
                                         style="box-sizing: border-box; transition: opacity 0.15s linear 0s; opacity: 0; display: none;"></div>
                                    <div
                                            id="pills-complete"
                                            class="tab-pane fade"
                                            aria-labelledby="pills-complete-tab"
                                            role="tabpanel"
                                            style="box-sizing: border-box; transition: opacity 0.15s linear 0s; opacity: 0; display: none;"
                                    ></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>

<script>
    const show = idclick => {
        // Xóa lớp 'backgroudhover' của tất cả các <li>
        document.getElementById('choxacnhan').classList.remove('backgroudhover');
        document.getElementById('daxacnhan').classList.remove('backgroudhover');
        document.getElementById('dahuy').classList.remove('backgroudhover');
        document.getElementById('daxong').classList.remove('backgroudhover');

        document.querySelector('.choxacnhan').classList.add('none');
        document.querySelector('.daxacnhan').classList.add('none');
        document.querySelector('.dahuy').classList.add('none');
        document.querySelector('.daxong').classList.add('none');

        // Thêm lớp 'backgroudhover' vào <li> được click
        document.getElementById(idclick).classList.add('backgroudhover');
        document.getElementById(idclick).classList.remove('hover');
        document.querySelector('.'+idclick).classList.remove('none');
    }

    function destroybill(id) {
        event.preventDefault();

        var data = new URLSearchParams();
        data.append('id', id);
        data.append('status', '<%=Const.DAHUY%>');
        data.append('action', 'huybill');

        fetch("ListBill", {
            method: 'POST',
            body: data
        })
            .then(response => {
                if (response.ok) {
                    console.log('Sửa thành công');

                    // Lấy thẻ form có id tương ứng
                    const form = document.getElementById(id);

                    // Tìm thẻ với class dahuy để di chuyển form vào
                    const dahuyContainer = document.querySelector('.dahuy');
                    const huyhuydon = document.getElementById('huyhuydon'+id);
                    const bnthuy = document.getElementById('huydon'+id);
                    // Thêm form vào dahuyContainer
                    if (form && dahuyContainer) {
                        dahuyContainer.appendChild(form);
                        huyhuydon.innerText = 'Đã hủy bởi khách hàng'
                        bnthuy.style.display = 'none';
                        // Xóa thẻ form từ dangcho
                        // form.remove();
                    }
                } else {
                    console.log('Có lỗi xảy ra');
                }
            })
            .catch(err => {
                console.log('Lỗi: ' + err);
            });
    }


</script>

</body>
</html>
