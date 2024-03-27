<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.DAO.TourDao" %>
<%@ page import="vn.edu.hcmuaf.bean.Tour" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>

<head>
    <title>Quản lí sản phẩm</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <link rel="shortcut icon" type="image/icon" href="../assets/logo/favicon.png"/>
    <!-- bootstrap-css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/admin.css">
    <!-- //bootstrap-css -->
    <!-- Custom CSS -->
    <link href="css/style.css" rel='stylesheet' type='text/css'/>
    <link href="css/style-responsive.css" rel="stylesheet"/>
    <!-- font CSS -->
    <!--<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>-->
    <!-- font-awesome icons-->
    <!--<link rel="stylesheet" href="admin/css/font.css" type="text/css"/>-->
    <!--<link href="admin/css/font-awesome.css" rel="stylesheet">-->
    <!--<link rel="stylesheet" href="admin/css/morris.css" type="text/css"/>-->
    <!-- calendar -->
    <link rel="stylesheet" href="css/monthly.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css"
          integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <!-- //calendar -->
    <!-- //font-awesome icons -->
    <!--    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>-->

    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <!--     // Google Fonts-->
    <!--    <link-->
    <!--            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"-->
    <!--            rel="stylesheet"-->
    <!--    />-->
    <!--     MDB-->
    <!--    <link-->
    <!--            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css"-->
    <!--            rel="stylesheet"-->
    <!--    />-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.js"></script>
    <!--  end  swal2-->
    <script src="js/jquery2.0.3.min.js"></script>
    <script src="js/raphael-min.js"></script>
    <script src="js/morris.js"></script>

</head>
<body>


<section id="container">
    <!-- main-menu Start -->
    <%@include file="header.jsp" %>
    <!-- main-menu End -->

    <!--main content start-->
    <section id="main-content">
        <div >
            <a style="margin-left: 1150px" href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i></a>


        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="./add" method="post" >
                        <div class="modal-header">
                            <h4 class="modal-title">Add Tour</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">

                            <div class="form-group">
                                <label>Name</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Region</label>
                                <input name="region" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input name="image" type="file" class="form-control" accept="image/*">
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>StartTime</label>
                                <input name="startTime" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Schedule</label>
                                <input name="schedule" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description" class="form-control"></textarea>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>

                </div>
            </div>
        </div>

        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="./delete" method="post" >
                        <div class="modal-header">
                            <h4 class="modal-title">Delete Tour</h4>

                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>ID</label>
                                <input name="id" type="text" class="form-control" required>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" value="Delete">
                        </div>
                    </form>

                </div>
            </div>
        </div>
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="./edit" method="post" enctype="multipart/form-data">
                        <div class="modal-header">
                            <h4 class="modal-title">Edit Tour</h4>
                            <%
                                Tour editTour = (Tour) session.getAttribute("editTour");
                            %>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>ID</label>
                                <input name="id" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Name</label>
                                <input name="name" type="text" class="form-control"  >
                            </div>
                            <div class="form-group">
                                <label>Region</label>
                                <input name="region" type="text" class="form-control ">
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input name="image" type="file" class="form-control" accept="image/*">
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>StartTime</label>
                                <input name="startTime" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Schedule</label>
                                <input name="schedule" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description" class="form-control"></textarea>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-warning" value="Edit">
                        </div>
                    </form>

                </div>
            </div>
        </div>
        <div id="container11" style="height: 100%;">
            <section class="h-100 h-custom">
                <h3 style="margin-left: 50px">Quản lý sản phẩm</h3>
                <div class="container h-100 py-5">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col">

                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th scope="col">ID</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Image</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Duration</th>

                                        <th  scope="col">Schedule</th>

                                        <th scope="col">Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                            <%

List<Tour> tourss = (List<Tour>) request.getAttribute("tours");
if (tourss != null && !tourss.isEmpty()) {
                    for (Tour t : tourss) {
%>

                                    <tr>
                                        <td><%=t.getId()%>
                                        </td>
                                        <td><%=t.getName()%>
                                        </td>
                                        <td>
                                            <img style="width: 200px;height: 100px" src="../assets/images/item/<%=t.getImage()%>">
                                            <img src="" alt="">
                                        </td>
                                        <td><%=t.getPrice()%>đ </td>
                                        <td><%=t.getDuration()%>
                                        <td ><%=t.getSchedule()%></td>

                                        </td>
                                        <td>
                                        <td  style="display: flex">

                                        <a style="margin-right: 10px"  href="#editEmployeeModal"  class="btn btn-warning" data-toggle="modal"><i class="material-icons">&#xE254;</i></a>
                                        <a  href="#deleteEmployeeModal"  class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE872;</i></a>
                                        </td>
                                            </a>
                                        </td>
                                    </tr>
                                    <%
                                        }
                                    } else {
                                    %>
                                    <tr>
                                        <td colspan="4">WELCOME TO ADMIN PAGE.</td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                    </tr>

                                    </tbody>
                                </table>
                            </div>


                        </div>
                    </div>
                </div>
            </section>
        </div>


        </div>
        <!-- footer -->
        <div class="footer">
            <div class="wthree-copyright">
                <p>&copy; 2023-2024 <a href="https://github.com/MinhThinhrine/Do_An_Web">Nhóm 18</a>. All Right
                    Reserved.</p>
            </div>
        </div>
        <!-- / footer -->
    </section>
    <!--main content end-->
</section>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]>
<script language="javascript" type="text/javascript" src="admin/js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->
<script>

    function deleteUser() {
        Swal.fire({
            title: 'Thông báo',
            text: 'Đã xóa thành công tài khoản này',
            icon: 'success',
            confirmButtonText: 'Đóng',
            customClass: {
                popup: 'custom-swal'
            }
        });
    }
</script>

<!-- //calendar -->
</body>
</html>
