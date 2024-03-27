<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 12/18/2023
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="common/head.jsp" %>
    <link rel="stylesheet" href="assets/css/csslogin.css">
    <title>ToursNest | OTP</title>
    <link
            href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
            rel="stylesheet" id="bootstrap-css">
    <script
            src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

    <style type="text/css">
        .form-gap {
            padding-top: 70px;
        }
    </style>
</head>
<%
    String status = (String) request.getAttribute("status")+"";
    status = (status == null || status.equals("null")) ? "" : status;
    String mess = session.getAttribute("mess_otp")+"";
%>
<body>
<div class="form-gap"></div>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="text-center">
                        <h3>
                            <i class="fa fa-lock fa-4x"></i>
                        </h3>
                        <h2 class="text-center">Nhập OTP</h2>

                        <div class="ques" style="width: 250px;margin: 40px auto -15px auto; color: #000000 !important;text-align: center">
                            <span class="text-primary text-medium" style="color:#000000"><%=mess%></span>

                        </div>
                        <div class="panel-body">

                            <form action="ValidateOtp" method="post">
                                <div class="form-group">
                                    <div class="input-group">
											<span class="input-group-addon"><i
                                                    class="glyphicon glyphicon-envelope color-blue"></i></span> <input
                                            id="opt" name="otp" placeholder="Enter OTP"
                                            class="form-control" type="text" required="required">
                                    </div>
                                    <%if(status!=null || !status.equals("")){%>
                                    <div class="ques" style="width: 250px;margin: 40px auto -15px auto; color: #bd1111 !important;text-align: center">
                                        <span class="text-primary text-medium" style="color:red"><%=status%></span>
                                        <%}%>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input name="recover-submit"
                                           class="btn btn-lg btn-primary btn-block"
                                           value="Đặt lại password" type="submit" style="background-color: #00D8FE">
                                </div>

                                <input type="hidden" class="hide" name="token" id="token"
                                       value="">
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>