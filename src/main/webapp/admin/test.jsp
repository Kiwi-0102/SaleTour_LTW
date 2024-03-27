<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="vn.edu.hcmuaf.bean.Tour" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: FPT - ADMIN
  Date: 19/01/2024
  Time: 11:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>111</p>
<div>
    <%
        ArrayList<Tour> tours = (ArrayList<Tour>) request.getAttribute("data");

        if (tours != null && !tours.isEmpty()) {
            for (Tour tour : tours) {
    %>
   

    <hr>
    <%
        }
    } else {
    %>
    <p>Không có dữ liệu Tour.</p>
    <%
        }
    %>


</div>
</body>
</html>
