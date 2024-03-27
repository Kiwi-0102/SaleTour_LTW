        <!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="vn.edu.hcmuaf.bean.Tour" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.DAO.TourDao" %>
<%@ page import="vn.edu.hcmuaf.bean.valies" %>
<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="java.text.DecimalFormat" %>
<%
    User user = (User) session.getAttribute("user");
    ArrayList<valies> vali_List = (ArrayList<valies>) session.getAttribute("vali-List");
    List<valies> toursVali = null;
    TourDao tDao = new TourDao();
    int total = 0;
    if (vali_List != null) {
        toursVali = tDao.getValiTour(vali_List);
        request.setAttribute("vali_List", vali_List);
        total = tDao.getTotalCartPrice((ArrayList<valies>) toursVali);
        request.setAttribute("total", total);
    }
    ;
%>
<html class="no-js" lang="vi">
<%@ page contentType="text/html; charset=UTF-8" %>

<head>
    <meta charset="UTF-8">
    <!-- Font Awesome -->
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>

    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
    />
    <!-- Google Fonts -->
    <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
    />
    <!-- MDB -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css"
            rel="stylesheet"
    />
    <style>
        .img-fluid {
            cursor: pointer;
        }

        .return {
            font-size: 20px;
            color: #00d8fe;
        }

        #num {
            color: black !important;
        }
    </style>
    <title>VALI</title>
</head>
<body>
<div id="container" style="height: 100%">
    <section class="h-100 h-custom">
        <div class="container h-100 py-5">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col">

                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col"><a class="return" href="CategorieServlet">
                                    Sản phẩm</a></th>
                                <th scope="col">Trạng thái</th>
                                <th scope="col" style="width:170px;padding-left: 40px">Người lớn</th>
                                <th scope="col">Trẻ em ( Giảm 40% )</th>
                                <th scope="col">Giá</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%

                                if (vali_List != null) {
                                    for (valies t : toursVali) {
                            %>
                            <tr id="<%=t.getId()%>">
                                <th scope="row" class="element">
                                    <div class="d-flex align-items-center">
                                        <div class="d-flex align-items-center pe-2">
                                            <input class="form-check-input" type="radio" name="radioNoLabel"
                                                   id="radio"
                                                   aria-label="...">
                                        </div>
                                        <a href="${pageContext.request.contextPath}/DetailsServlet?id=<%=t.getId()%>">
                                            <img src="assets/images/item/<%=t.getImage()%>" class="img-fluid rounded-3"
                                                 style="width: 120px;" title="Chi tiết" alt="Book">
                                        </a>
                                        <div class="flex-column ms-4">
                                            <p class="mb-0"><%=t.getName()%>
                                            </p>
                                            <p class="mb-2"><%=t.getDuration()%>
                                            </p>
                                        </div>
                                    </div>
                                </th>
                                <td class="align-middle">
                                    <p class="mb-0" style="font-weight: 500;">
                                        <a href="ServiceServlet?id=<%=t.getId()%>">
                                            <button class="btn btn-link px-2">
                                                Thanh toán
                                            </button>
                                        </a>
                                    </p>
                                </td>
                                <td class="align-middle">
                                        <div class="d-flex flex-row">
                                            <a href="QuantityServlet?action=dec&id=<%=t.getId()%>">
                                                <button class="btn btn-link px-2">
                                                    <i class="fas fa-minus"></i>
                                                </button>
                                            </a>
                                            <input min="0" name="quantity" value="<%=t.getNumAdult()%>" type="number"
                                                   class="form-control form-control-sm" style="width: 55px;" readonly>
                                            <a href="QuantityServlet?action=inc&id=<%=t.getId()%>">
                                                <button class="btn btn-link px-2">
                                                    <i class="fas fa-plus"></i>
                                                </button>
                                            </a>
                                        </div>
                                </td>
                                <td class="align-middle">
                                    <div class="d-flex flex-row">
                                        <a href="QuantityServlet?action=decc&id=<%=t.getId()%>">
                                            <button class="btn btn-link px-2">
                                                <i class="fas fa-minus"></i>
                                            </button>
                                        </a>
                                        <input min="0" name="quantity" value="<%=t.getNumChildren()%>" type="number"
                                               class="form-control form-control-sm" style="width: 55px;" readonly>
                                        <a href="QuantityServlet?action=incc&id=<%=t.getId()%>">
                                            <button class="btn btn-link px-2">
                                                <i class="fas fa-plus"></i>
                                            </button>
                                        </a>
                                    </div>
                                </td>
                                <td class="align-middle">
                                    <p class="mb-0" class="dongia" style="font-weight: 500;">
                                        <span class="pull-right" style="margin-top: 25px;">
                                <% int number = t.getPrice();
                        DecimalFormat decimalFormat = new DecimalFormat("#,###");
                        String formattedString = decimalFormat.format(number);

                        %>
                        <%=formattedString%>đ
                                    </p>
                                </td>
                                <td class="align-middle">
                                    <div class="col-md-1 col-lg-1 col-xl-1">
                                        <a href="RemoveFromValiServlet?id=<%=t.getId()%>"
                                           class="text-danger">
                                            <i
                                                    class="fas fa-trash fa-lg"></i></a>
                                    </div>
                                </td>
                            </tr>
                            <% }
                            } %>

                            </tbody>
                        </table>
                    </div>

                    <div class="card shadow-2-strong mb-5 mb-lg-0" style="border-radius: 16px;">
                        <div class="card-body p-4">

                            <div class="row">
                                <div class="col-lg-4 col-xl-4"></div>
                                <div class="col-lg-4 col-xl-4"></div>
                                <div class="col-lg-4 col-xl-4">
                                        <button type="button" class="btn btn-primary btn-block btn-lg">
                                            <div class="d-flex justify-content-between">
                                                Tổng cộng
                                                <%
                                                    DecimalFormat decimalFormat = new DecimalFormat("#,###");
                                                    String formattedTotal = decimalFormat.format(total);
                                                %>
                                                <span id="thanhToan"><%=formattedTotal%>đ</span>
                                            </div>
                                        </button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
</section>
</div>
</body>

</html>