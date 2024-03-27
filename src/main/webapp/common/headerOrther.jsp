<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="java.util.Objects" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="tablib.jsp" %>

<!DOCTYPE html>
<html lang="en">

<body>
<header class="top-area">
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <div class="logo">
                        <a href="index.jsp">
                            tour<span>Nest</span>
                        </a>
                    </div>
                </div>
                <div class="col-sm-10">
                    <div class="main-menu">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse"
                                    data-target=".navbar-collapse">
                                <i class="fa fa-bars"></i>
                            </button>
                        </div>
                        <div class="collapse navbar-collapse">
                            <ul class="nav navbar-nav navbar-right">
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
                                %>
                                <% if (Objects.nonNull(user)) { %>
                                <li class="navbar-toggle"><a href="shopcart.jsp" id="myTour"><i
                                        class="fa fa-suitcase-rolling fa-2x"
                                        style="margin-top: -10px;color: #00d8fe"></i></a>
                                </li>
                                <li id="icon-user"  >
                                    <i class="fa-regular fa-circle-user" style="color: #ffffff;margin-top: 8px"></i>
                                    <span><%= user.getUserName() %></span>
                                    <ul id="service_account">
                                        <li><a id="myInfor" href="infor.jsp">Tài Khoản</a></li>
                                        <li><a id="bill" href="bill.jsp">Hóa Đơn </a></li>
                                        <li>
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
                        </div>
                    </div>
                </div>
            </div>
            <div class="home-border"></div>
        </div>
    </div>
</header>
</body>
<script>
    document.getElementById("logout").addEventListener("click", function () {
        window.location.href = "login.jsp";
    });
    document.getElementById("myInfor").addEventListener("click", function () {
        window.location.href = "infor.jsp";
    });
    document.getElementById("bill").addEventListener("click", function () {
        window.location.href = "bill.jsp";
    });
</script>

</html>
