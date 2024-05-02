<%@ page import="vn.edu.hcmuaf.bean.User" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 5/1/2024
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <link rel="stylesheet" href="assets/css/invoiceHistory.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css?display=swap" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css?display=swap" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link rel="manifest" href="/manifest.json" />
    <title>TourNest</title>
</head>
<%
    User use = (User) session.getAttribute("user");
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
                                    <a class="" href="/profile/info"><img class="rounded-circle" src="https://lh3.googleusercontent.com/a/ACg8ocIFd6kbpE_YrzyEVricdw7xUwQPhmFLxu84QFXXdSBPdaeDTA=s96-c" alt="" /></a>
                                </div>
                                <div class="info-wrapper">
                                    <div>
                                        <h5 class="fw-bold"><%=use.getName()%>></h5>
                                        <small><%=use.getEmail()%></small>
                                    </div>
                                    <span id="toggle-profile-menu" class="d-lg-none"><i class="icon icon--chevron-down"></i></span>
                                </div>
                            </div>
                            <nav class="profile-links py-3 d-block">
                                <ul class="list-unstyled mb-0 py-3 pt-md-1">
                                    <li class="mb-1">
                                        <a aria-expanded="false" class="d-inline-flex align-items-center rounded collapsed" href="/profile/info"><h6 class="fw-bold">Tài khoản</h6></a>
                                        <div id="getting-started-collapse" class="collapse show">
                                            <ul class="list-unstyled fw-normal pb-1 small">
                                                <li><a class="d-inline-flex align-items-center rounded" href="/profile/info">Thông tin cá nhân</a></li>
                                                <li><a class="d-inline-flex align-items-center rounded" href="/profile/change-password">Đổi mật khẩu</a></li>
                                                <li><a class="d-inline-flex align-items-center rounded" href="/profile/payment-info">Thông tin thanh toán</a></li>
                                                <li><a class="d-inline-flex align-items-center rounded" href="/profile/sign-out">Đăng xuất</a></li>
                                                <li><a class="d-inline-flex align-items-center rounded" href="/profile/remove-account">Yêu cầu xóa tài khoản</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="mb-1">
                                        <a aria-current="page" class="d-inline-flex align-items-center rounded active" href="/profile/orders"><h6 class="fw-bold">Đơn đặt chỗ</h6></a>
                                    </li>
                                    <li class="mb-1">
                                        <a class="d-inline-flex align-items-center rounded" href="/profile/my-feedback"><h6 class="fw-bold">Đánh giá của Quý khách</h6></a>
                                    </li>
                                    <li class="mb-1">
                                        <a class="d-inline-flex align-items-center rounded" href="/profile/saved"><h6 class="fw-bold">Yêu thích đã lưu</h6></a>
                                    </li>
                                    <li class="mb-1 d-none">
                                        <a class="d-inline-flex align-items-center rounded" href="https://travel.com.vn/Profile/Compared"><h6 class="fw-bold">Sản phẩm đã so sánh</h6></a>
                                    </li>
                                    <li class="mb-1 d-none">
                                        <a class="d-inline-flex align-items-center rounded" href="https://travel.com.vn/Profile/Voucher"><h6 class="fw-bold">Voucher khuyến mãi của Quý khách</h6></a>
                                    </li>
                                    <li class="mb-1 d-none">
                                        <a class="d-inline-flex align-items-center rounded" href="https://travel.com.vn/Profile/Promotion"><h6 class="fw-bold">Chương trình ưu đãi cho user</h6></a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-md-9 col-12 right ps-md-4">
                        <div class="wrapper order" style="background: rgb(255, 255, 255); border-radius: 10px; box-sizing: border-box; border: none;">
                            <div class="tab" style="box-sizing: border-box;">
                                <ul
                                        class="nav py-3 tab flex-sm-row mb-3"
                                        role="tablist"
                                        style="
                                                margin-top: 0px;
                                                list-style: none;
                                                display: flex;
                                                flex-flow: wrap;
                                                padding-left: 0px;
                                                background: rgb(255, 255, 255);
                                                border: 0.5px solid rgb(213, 213, 213);
                                                border-radius: 10px;
                                                box-sizing: border-box;
                                                margin-bottom: 1rem;
                                                padding-top: 1rem;
                                                padding-bottom: 1rem;
                                                -webkit-box-orient: horizontal;
                                                -webkit-box-direction: normal;
                                            "
                                >
                                    <li class="nav-item flex-sm-fill text-sm-center" role="presentation" style="box-sizing: border-box; flex: 1 1 auto; -webkit-box-flex: 1; text-align: center;">
                                        <a
                                                id="pills-all-tab"
                                                class="nav-link active"
                                                aria-controls="pills-all"
                                                aria-selected="true"
                                                role="tab"
                                                style="
                                                        box-sizing: border-box;
                                                        background-color: transparent;
                                                        padding: 0.5rem 1rem;
                                                        text-decoration: none;
                                                        transition: color 0.15s ease-in-out 0s, background-color 0.15s ease-in-out 0s, border-color 0.15s ease-in-out 0s;
                                                        display: block;
                                                        cursor: pointer;
                                                        color: rgb(45, 66, 113);
                                                        font-weight: 700;
                                                    "
                                        >
                                            Tất cả
                                        </a>
                                    </li>
                                    <li class="nav-item flex-sm-fill text-sm-center" role="presentation" style="box-sizing: border-box; flex: 1 1 auto; -webkit-box-flex: 1; text-align: center;">
                                        <a
                                                id="pills-wait-tab"
                                                class="nav-link"
                                                aria-controls="pills-wait"
                                                aria-selected="false"
                                                role="tab"
                                                style="
                                                        box-sizing: border-box;
                                                        background-color: transparent;
                                                        padding: 0.5rem 1rem;
                                                        text-decoration: none;
                                                        transition: color 0.15s ease-in-out 0s, background-color 0.15s ease-in-out 0s, border-color 0.15s ease-in-out 0s;
                                                        display: block;
                                                        cursor: pointer;
                                                        color: rgb(45, 66, 113);
                                                        font-weight: 700;
                                                    "
                                        >
                                            Chờ xác nhận
                                        </a>
                                    </li>
                                    <li class="nav-item flex-sm-fill text-sm-center" role="presentation" style="box-sizing: border-box; flex: 1 1 auto; -webkit-box-flex: 1; text-align: center;">
                                        <a
                                                id="pills-complete-tab"
                                                class="nav-link"
                                                aria-controls="pills-complete"
                                                aria-selected="false"
                                                role="tab"
                                                style="
                                                        box-sizing: border-box;
                                                        background-color: transparent;
                                                        padding: 0.5rem 1rem;
                                                        text-decoration: none;
                                                        transition: color 0.15s ease-in-out 0s, background-color 0.15s ease-in-out 0s, border-color 0.15s ease-in-out 0s;
                                                        display: block;
                                                        cursor: pointer;
                                                        color: rgb(45, 66, 113);
                                                        font-weight: 700;
                                                    "
                                        >
                                            Đã đặt
                                        </a>
                                    </li>
                                </ul>
                                <div class="form-search mb-4" style="box-sizing: border-box; margin-bottom: 1.5rem;">
                                    <form action="#" method="get" style="box-sizing: border-box; border: 0.5px solid rgb(216, 216, 216); border-radius: 5px; overflow: hidden; height: 50px; position: relative;">
                                        <input
                                                id="myInput"
                                                class="form-control px-5"
                                                type="text"
                                                placeholder="Tìm kiếm theo tên tour/ tourCode hoặc số booking"
                                                aria-label="default input example"
                                                style="
                                                        box-sizing: border-box;
                                                        overflow: visible;
                                                        margin: 0px;
                                                        font-family: inherit;
                                                        padding: 0.375rem 3rem;
                                                        border-radius: 0.25rem;
                                                        transition: border-color 0.15s ease-in-out 0s, box-shadow 0.15s ease-in-out 0s, -webkit-box-shadow 0.15s ease-in-out 0s;
                                                        display: block;
                                                        font-size: 1rem;
                                                        line-height: 1.5;
                                                        background-color: rgb(255, 255, 255);
                                                        background-clip: padding-box;
                                                        appearance: none;
                                                        border: none;
                                                        height: 100%;
                                                        width: 100%;
                                                        color: rgb(45, 66, 113);
                                                        font-weight: 400;
                                                    "
                                        />
                                        <i
                                                class="icon icon--search"
                                                style="
                                                        box-sizing: border-box;
                                                        display: inline-block;
                                                        font-variant: normal;
                                                        font-style: normal;
                                                        font-weight: 400;
                                                        text-transform: none;
                                                        line-height: 1;
                                                        -webkit-font-smoothing: antialiased;
                                                        position: absolute;
                                                        top: 50%;
                                                        left: 13px;
                                                        transform: translateY(-50%);
                                                        z-index: 1;
                                                        pointer-events: none;
                                                        font-size: 18px;
                                                        color: rgb(45, 66, 113);
                                                        font-family: fontsvtv;
                                                    "
                                        ></i>
                                    </form>
                                </div>
                                <div id="pills-tabContent" class="tab-content" style="box-sizing: border-box;">
                                    <div
                                            id="pills-all"
                                            class="tab-pane result fade active show"
                                            aria-labelledby="pills-all-tab"
                                            role="tabpanel"
                                            style="box-sizing: border-box; transition: opacity 0.15s linear 0s; display: block; color: rgb(45, 66, 113);"
                                    >
                                        <div class="item mb-4" name="itemOrder" style="box-sizing: border-box; margin-bottom: 1.5rem;">
                                            <h4 class="fw-bolder" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: calc(1.275rem + 0.3vw); font-weight: 900;"></h4>
                                            <p class="text-muted" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(108, 117, 125);">01/01/0001 - 01/01/0001</p>
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
                                                <div class="row g-0" style="box-sizing: border-box; display: flex; flex-wrap: wrap;">
                                                    <div class="col-md-3 col-12" style="box-sizing: border-box; max-width: 100%; margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 25%;">
                                                        <div class="image" style="box-sizing: border-box; overflow: hidden; position: relative; padding-top: 68%;">
                                                            <a
                                                                    href="https://travel.com.vn/du-lich/track-booking-no-210607080237/tra-cuu-booking.aspx"
                                                                    target="_blank"
                                                                    style="box-sizing: border-box; background-color: transparent; text-decoration: none; color: rgb(45, 66, 113);"
                                                            >
                                                                <img
                                                                        src="https://media.travel.com.vn/"
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
                                                    <div class="col-md-9 col-12 p-3" style="box-sizing: border-box; max-width: 100%; margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 75%; padding: 1rem;">
                                                        <h5 class="card-title h5 h6-sm fw-bolder mb-3" style="box-sizing: border-box; margin-top: 0px; line-height: 1.2; font-size: 1.25rem; margin-bottom: 1rem; font-weight: 900;">
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
                                                                <div class="d-flex d-lg-block justify-content-between" style="box-sizing: border-box; -webkit-box-pack: justify; justify-content: space-between; display: block;">
                                                                    <div style="box-sizing: border-box;">
                                                                        <div class="s-rate" style="box-sizing: border-box; display: flex; -webkit-box-align: center; align-items: center; margin-right: 22px; margin-bottom: 25px;">
                                                                                    <span
                                                                                            style="
                                                                                            box-sizing: border-box;
                                                                                            background: rgb(253, 196, 50);
                                                                                            font-weight: 700;
                                                                                            font-size: 17px;
                                                                                            line-height: 20px;
                                                                                            color: rgb(255, 255, 255);
                                                                                            width: 40px;
                                                                                            height: 40px;
                                                                                            display: flex;
                                                                                            -webkit-box-align: center;
                                                                                            align-items: center;
                                                                                            -webkit-box-pack: center;
                                                                                            justify-content: center;
                                                                                            position: relative;
                                                                                            border-top-left-radius: 5px;
                                                                                            border-top-right-radius: 5px;
                                                                                            border-bottom-right-radius: 5px;
                                                                                            margin-right: 11px;
                                                                                        "
                                                                                    ></span>
                                                                            <div class="s-comment" style="box-sizing: border-box;">
                                                                                <h6 class="fw-bold mb-0" style="box-sizing: border-box; margin-top: 0px; line-height: 1.2; font-size: 1rem; margin-bottom: 0px; font-weight: 700;"></h6>
                                                                                <p style="box-sizing: border-box; margin: 0px; color: rgb(45, 66, 113);">quan tâm</p>
                                                                            </div>
                                                                        </div>
                                                                        <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">
                                                                            <span class="text-muted" style="box-sizing: border-box; color: rgb(108, 117, 125);">Số booking: 210607080237</span><br style="box-sizing: border-box;" />
                                                                            <span class="text-muted" style="box-sizing: border-box; color: rgb(108, 117, 125);">Tour code: </span>
                                                                        </p>
                                                                        <p class="card-text" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;">
                                                                            <small class="text-muted" style="box-sizing: border-box; font-size: 0.875em; color: rgb(108, 117, 125);">1 người, 0 đêm</small>
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
                                                                        style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1rem; color: rgb(253, 80, 86);"
                                                                >
                                                                    Quá hạn thanh toán
                                                                </h6>
                                                                <h5
                                                                        class="text-primary fw-bold"
                                                                        style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: 1.25rem; font-weight: 700; color: rgb(253, 80, 86);"
                                                                >
                                                                    ₫
                                                                </h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item mb-4" name="itemOrder" style="box-sizing: border-box; margin-bottom: 1.5rem;">
                                            <h4 class="fw-bolder" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: calc(1.275rem + 0.3vw); font-weight: 900;"></h4>
                                            <p class="text-muted" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(108, 117, 125);">01/01/0001 - 01/01/0001</p>
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
                                                <div class="row g-0" style="box-sizing: border-box; display: flex; flex-wrap: wrap;">
                                                    <div class="col-md-3 col-12" style="box-sizing: border-box; max-width: 100%; margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 25%;">
                                                        <div class="image" style="box-sizing: border-box; overflow: hidden; position: relative; padding-top: 68%;">
                                                            <a
                                                                    href="https://travel.com.vn/du-lich/track-booking-no-210926716074/tra-cuu-booking.aspx"
                                                                    target="_blank"
                                                                    style="box-sizing: border-box; background-color: transparent; text-decoration: none; color: rgb(45, 66, 113);"
                                                            >
                                                                <img
                                                                        src="https://media.travel.com.vn/"
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
                                                    <div class="col-md-9 col-12 p-3" style="box-sizing: border-box; max-width: 100%; margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 75%; padding: 1rem;">
                                                        <h5 class="card-title h5 h6-sm fw-bolder mb-3" style="box-sizing: border-box; margin-top: 0px; line-height: 1.2; font-size: 1.25rem; margin-bottom: 1rem; font-weight: 900;">
                                                            <a
                                                                    href="https://travel.com.vn/du-lich/track-booking-no-210926716074/tra-cuu-booking.aspx"
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
                                                                <div class="d-flex d-lg-block justify-content-between" style="box-sizing: border-box; -webkit-box-pack: justify; justify-content: space-between; display: block;">
                                                                    <div style="box-sizing: border-box;">
                                                                        <div class="s-rate" style="box-sizing: border-box; display: flex; -webkit-box-align: center; align-items: center; margin-right: 22px; margin-bottom: 25px;">
                                                                                    <span
                                                                                            style="
                                                                                            box-sizing: border-box;
                                                                                            background: rgb(253, 196, 50);
                                                                                            font-weight: 700;
                                                                                            font-size: 17px;
                                                                                            line-height: 20px;
                                                                                            color: rgb(255, 255, 255);
                                                                                            width: 40px;
                                                                                            height: 40px;
                                                                                            display: flex;
                                                                                            -webkit-box-align: center;
                                                                                            align-items: center;
                                                                                            -webkit-box-pack: center;
                                                                                            justify-content: center;
                                                                                            position: relative;
                                                                                            border-top-left-radius: 5px;
                                                                                            border-top-right-radius: 5px;
                                                                                            border-bottom-right-radius: 5px;
                                                                                            margin-right: 11px;
                                                                                        "
                                                                                    ></span>
                                                                            <div class="s-comment" style="box-sizing: border-box;">
                                                                                <h6 class="fw-bold mb-0" style="box-sizing: border-box; margin-top: 0px; line-height: 1.2; font-size: 1rem; margin-bottom: 0px; font-weight: 700;"></h6>
                                                                                <p style="box-sizing: border-box; margin: 0px; color: rgb(45, 66, 113);">quan tâm</p>
                                                                            </div>
                                                                        </div>
                                                                        <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">
                                                                            <span class="text-muted" style="box-sizing: border-box; color: rgb(108, 117, 125);">Số booking: 210926716074</span><br style="box-sizing: border-box;" />
                                                                            <span class="text-muted" style="box-sizing: border-box; color: rgb(108, 117, 125);">Tour code: </span>
                                                                        </p>
                                                                        <p class="card-text" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;">
                                                                            <small class="text-muted" style="box-sizing: border-box; font-size: 0.875em; color: rgb(108, 117, 125);">1 người, 0 đêm</small>
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
                                                                        style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1rem; color: rgb(253, 80, 86);"
                                                                >
                                                                    Vietravel hủy booking
                                                                </h6>
                                                                <h5
                                                                        class="text-primary fw-bold"
                                                                        style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: 1.25rem; font-weight: 700; color: rgb(253, 80, 86);"
                                                                >
                                                                    ₫
                                                                </h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item mb-4" name="itemOrder" style="box-sizing: border-box; margin-bottom: 1.5rem;">
                                            <h4 class="fw-bolder" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: calc(1.275rem + 0.3vw); font-weight: 900;"></h4>
                                            <p class="text-muted" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(108, 117, 125);">01/01/0001 - 01/01/0001</p>
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
                                                <div class="row g-0" style="box-sizing: border-box; display: flex; flex-wrap: wrap;">
                                                    <div class="col-md-3 col-12" style="box-sizing: border-box; max-width: 100%; margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 25%;">
                                                        <div class="image" style="box-sizing: border-box; overflow: hidden; position: relative; padding-top: 68%;">
                                                            <a
                                                                    href="https://travel.com.vn/du-lich/track-booking-no-210926065826/tra-cuu-booking.aspx"
                                                                    target="_blank"
                                                                    style="box-sizing: border-box; background-color: transparent; text-decoration: none; color: rgb(45, 66, 113);"
                                                            >
                                                                <img
                                                                        src="https://media.travel.com.vn/"
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
                                                    <div class="col-md-9 col-12 p-3" style="box-sizing: border-box; max-width: 100%; margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 75%; padding: 1rem;">
                                                        <h5 class="card-title h5 h6-sm fw-bolder mb-3" style="box-sizing: border-box; margin-top: 0px; line-height: 1.2; font-size: 1.25rem; margin-bottom: 1rem; font-weight: 900;">
                                                            <a
                                                                    href="https://travel.com.vn/du-lich/track-booking-no-210926065826/tra-cuu-booking.aspx"
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
                                                                <div class="d-flex d-lg-block justify-content-between" style="box-sizing: border-box; -webkit-box-pack: justify; justify-content: space-between; display: block;">
                                                                    <div style="box-sizing: border-box;">
                                                                        <div class="s-rate" style="box-sizing: border-box; display: flex; -webkit-box-align: center; align-items: center; margin-right: 22px; margin-bottom: 25px;">
                                                                                    <span
                                                                                            style="
                                                                                            box-sizing: border-box;
                                                                                            background: rgb(253, 196, 50);
                                                                                            font-weight: 700;
                                                                                            font-size: 17px;
                                                                                            line-height: 20px;
                                                                                            color: rgb(255, 255, 255);
                                                                                            width: 40px;
                                                                                            height: 40px;
                                                                                            display: flex;
                                                                                            -webkit-box-align: center;
                                                                                            align-items: center;
                                                                                            -webkit-box-pack: center;
                                                                                            justify-content: center;
                                                                                            position: relative;
                                                                                            border-top-left-radius: 5px;
                                                                                            border-top-right-radius: 5px;
                                                                                            border-bottom-right-radius: 5px;
                                                                                            margin-right: 11px;
                                                                                        "
                                                                                    ></span>
                                                                            <div class="s-comment" style="box-sizing: border-box;">
                                                                                <h6 class="fw-bold mb-0" style="box-sizing: border-box; margin-top: 0px; line-height: 1.2; font-size: 1rem; margin-bottom: 0px; font-weight: 700;"></h6>
                                                                                <p style="box-sizing: border-box; margin: 0px; color: rgb(45, 66, 113);">quan tâm</p>
                                                                            </div>
                                                                        </div>
                                                                        <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">
                                                                            <span class="text-muted" style="box-sizing: border-box; color: rgb(108, 117, 125);">Số booking: 210926065826</span><br style="box-sizing: border-box;" />
                                                                            <span class="text-muted" style="box-sizing: border-box; color: rgb(108, 117, 125);">Tour code: </span>
                                                                        </p>
                                                                        <p class="card-text" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;">
                                                                            <small class="text-muted" style="box-sizing: border-box; font-size: 0.875em; color: rgb(108, 117, 125);">1 người, 0 đêm</small>
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
                                                                        style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1rem; color: rgb(253, 80, 86);"
                                                                >
                                                                    Vietravel hủy booking
                                                                </h6>
                                                                <h5
                                                                        class="text-primary fw-bold"
                                                                        style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: 1.25rem; font-weight: 700; color: rgb(253, 80, 86);"
                                                                >
                                                                    ₫
                                                                </h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item mb-4" name="itemOrder" style="box-sizing: border-box; margin-bottom: 1.5rem;">
                                            <h4 class="fw-bolder" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: calc(1.275rem + 0.3vw); font-weight: 900;"></h4>
                                            <p class="text-muted" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(108, 117, 125);">01/01/0001 - 01/01/0001</p>
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
                                                <div class="row g-0" style="box-sizing: border-box; display: flex; flex-wrap: wrap;">
                                                    <div class="col-md-3 col-12" style="box-sizing: border-box; max-width: 100%; margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 25%;">
                                                        <div class="image" style="box-sizing: border-box; overflow: hidden; position: relative; padding-top: 68%;">
                                                            <a
                                                                    href="https://travel.com.vn/du-lich/track-booking-no-230831805442/tra-cuu-booking.aspx"
                                                                    target="_blank"
                                                                    style="box-sizing: border-box; background-color: transparent; text-decoration: none; color: rgb(45, 66, 113);"
                                                            >
                                                                <img
                                                                        src="https://media.travel.com.vn/"
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
                                                    <div class="col-md-9 col-12 p-3" style="box-sizing: border-box; max-width: 100%; margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 75%; padding: 1rem;">
                                                        <h5 class="card-title h5 h6-sm fw-bolder mb-3" style="box-sizing: border-box; margin-top: 0px; line-height: 1.2; font-size: 1.25rem; margin-bottom: 1rem; font-weight: 900;">
                                                            <a
                                                                    href="https://travel.com.vn/du-lich/track-booking-no-230831805442/tra-cuu-booking.aspx"
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
                                                                <div class="d-flex d-lg-block justify-content-between" style="box-sizing: border-box; -webkit-box-pack: justify; justify-content: space-between; display: block;">
                                                                    <div style="box-sizing: border-box;">
                                                                        <div class="s-rate" style="box-sizing: border-box; display: flex; -webkit-box-align: center; align-items: center; margin-right: 22px; margin-bottom: 25px;">
                                                                                    <span
                                                                                            style="
                                                                                            box-sizing: border-box;
                                                                                            background: rgb(253, 196, 50);
                                                                                            font-weight: 700;
                                                                                            font-size: 17px;
                                                                                            line-height: 20px;
                                                                                            color: rgb(255, 255, 255);
                                                                                            width: 40px;
                                                                                            height: 40px;
                                                                                            display: flex;
                                                                                            -webkit-box-align: center;
                                                                                            align-items: center;
                                                                                            -webkit-box-pack: center;
                                                                                            justify-content: center;
                                                                                            position: relative;
                                                                                            border-top-left-radius: 5px;
                                                                                            border-top-right-radius: 5px;
                                                                                            border-bottom-right-radius: 5px;
                                                                                            margin-right: 11px;
                                                                                        "
                                                                                    ></span>
                                                                            <div class="s-comment" style="box-sizing: border-box;">
                                                                                <h6 class="fw-bold mb-0" style="box-sizing: border-box; margin-top: 0px; line-height: 1.2; font-size: 1rem; margin-bottom: 0px; font-weight: 700;"></h6>
                                                                                <p style="box-sizing: border-box; margin: 0px; color: rgb(45, 66, 113);">quan tâm</p>
                                                                            </div>
                                                                        </div>
                                                                        <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">
                                                                            <span class="text-muted" style="box-sizing: border-box; color: rgb(108, 117, 125);">Số booking: 230831805442</span><br style="box-sizing: border-box;" />
                                                                            <span class="text-muted" style="box-sizing: border-box; color: rgb(108, 117, 125);">Tour code: </span>
                                                                        </p>
                                                                        <p class="card-text" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;">
                                                                            <small class="text-muted" style="box-sizing: border-box; font-size: 0.875em; color: rgb(108, 117, 125);">1 người, 0 đêm</small>
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
                                                                        style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1rem; color: rgb(253, 80, 86);"
                                                                >
                                                                    Quá hạn thanh toán
                                                                </h6>
                                                                <h5
                                                                        class="text-primary fw-bold"
                                                                        style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: 1.25rem; font-weight: 700; color: rgb(253, 80, 86);"
                                                                >
                                                                    ₫
                                                                </h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item mb-4" name="itemOrder" style="box-sizing: border-box; margin-bottom: 1.5rem;">
                                            <h4 class="fw-bolder" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: calc(1.275rem + 0.3vw); font-weight: 900;"></h4>
                                            <p class="text-muted" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(108, 117, 125);">01/01/0001 - 01/01/0001</p>
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
                                                <div class="row g-0" style="box-sizing: border-box; display: flex; flex-wrap: wrap;">
                                                    <div class="col-md-3 col-12" style="box-sizing: border-box; max-width: 100%; margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 25%;">
                                                        <div class="image" style="box-sizing: border-box; overflow: hidden; position: relative; padding-top: 68%;">
                                                            <a
                                                                    href="https://travel.com.vn/du-lich/track-booking-no-230912814531/tra-cuu-booking.aspx"
                                                                    target="_blank"
                                                                    style="box-sizing: border-box; background-color: transparent; text-decoration: none; color: rgb(45, 66, 113);"
                                                            >
                                                                <img
                                                                        src="https://media.travel.com.vn/"
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
                                                    <div class="col-md-9 col-12 p-3" style="box-sizing: border-box; max-width: 100%; margin-top: 0px; flex: 0 0 auto; -webkit-box-flex: 0; width: 75%; padding: 1rem;">
                                                        <h5 class="card-title h5 h6-sm fw-bolder mb-3" style="box-sizing: border-box; margin-top: 0px; line-height: 1.2; font-size: 1.25rem; margin-bottom: 1rem; font-weight: 900;">
                                                            <a
                                                                    href="https://travel.com.vn/du-lich/track-booking-no-230912814531/tra-cuu-booking.aspx"
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
                                                                <div class="d-flex d-lg-block justify-content-between" style="box-sizing: border-box; -webkit-box-pack: justify; justify-content: space-between; display: block;">
                                                                    <div style="box-sizing: border-box;">
                                                                        <div class="s-rate" style="box-sizing: border-box; display: flex; -webkit-box-align: center; align-items: center; margin-right: 22px; margin-bottom: 25px;">
                                                                                    <span
                                                                                            style="
                                                                                            box-sizing: border-box;
                                                                                            background: rgb(253, 196, 50);
                                                                                            font-weight: 700;
                                                                                            font-size: 17px;
                                                                                            line-height: 20px;
                                                                                            color: rgb(255, 255, 255);
                                                                                            width: 40px;
                                                                                            height: 40px;
                                                                                            display: flex;
                                                                                            -webkit-box-align: center;
                                                                                            align-items: center;
                                                                                            -webkit-box-pack: center;
                                                                                            justify-content: center;
                                                                                            position: relative;
                                                                                            border-top-left-radius: 5px;
                                                                                            border-top-right-radius: 5px;
                                                                                            border-bottom-right-radius: 5px;
                                                                                            margin-right: 11px;
                                                                                        "
                                                                                    ></span>
                                                                            <div class="s-comment" style="box-sizing: border-box;">
                                                                                <h6 class="fw-bold mb-0" style="box-sizing: border-box; margin-top: 0px; line-height: 1.2; font-size: 1rem; margin-bottom: 0px; font-weight: 700;"></h6>
                                                                                <p style="box-sizing: border-box; margin: 0px; color: rgb(45, 66, 113);">quan tâm</p>
                                                                            </div>
                                                                        </div>
                                                                        <p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">
                                                                            <span class="text-muted" style="box-sizing: border-box; color: rgb(108, 117, 125);">Số booking: 230912814531</span><br style="box-sizing: border-box;" />
                                                                            <span class="text-muted" style="box-sizing: border-box; color: rgb(108, 117, 125);">Tour code: </span>
                                                                        </p>
                                                                        <p class="card-text" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;">
                                                                            <small class="text-muted" style="box-sizing: border-box; font-size: 0.875em; color: rgb(108, 117, 125);">1 người, 0 đêm</small>
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
                                                                        style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1rem; color: rgb(253, 80, 86);"
                                                                >
                                                                    Quá hạn thanh toán
                                                                </h6>
                                                                <h5
                                                                        class="text-primary fw-bold"
                                                                        style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: 1.25rem; font-weight: 700; color: rgb(253, 80, 86);"
                                                                >
                                                                    2,190,000 ₫
                                                                </h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="pills-wait" class="tab-pane fade" aria-labelledby="pills-wait-tab" role="tabpanel" style="box-sizing: border-box; transition: opacity 0.15s linear 0s; opacity: 0; display: none;"></div>
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
</body>
</html>
