<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>

<head>
    <title>Quản lí khách hàng</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <link rel="shortcut icon" type="image/icon" href="../assets/logo/favicon.png"/>
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <link rel="stylesheet" href="css/admin.css">
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href="css/style-responsive.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/monthly.css"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css" integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.js"></script>
    <!--  end  swal2-->
    <script src="js/jquery2.0.3.min.js"></script>
    <script src="js/raphael-min.js"></script>
    <script src="js/morris.js"></script>
    <link href="pluggin/datatables.min.css" rel="stylesheet">

    <script src="pluggin/datatables.min.js"></script>
    <style>
        .wrapper {
            display: none;
            margin-top: 80px;
            padding: 15px;
            width: 100%;
        }
        div.dt-container {
            padding: 25px;
            box-shadow: 6px 2px 4px rgba(0, 0, 0, 0.5), -2px -2px 4px rgba(0, 0, 0, 0.5), 2px -2px 4px rgba(0, 0, 0, 0.5), -2px 2px 4px rgba(0, 0, 0, 0.5);
            margin-top: 30px;
            width: 75%;
            position: relative;
            clear: both;
            margin-left: 300px;
            text-align: center;
        }
        button:active {
            /* Áp dụng các kiểu CSS khi nút được nhấn */
            /* Ví dụ: */
            outline: none; /* Loại bỏ viền xung quanh */
        }

        #table1_wrapper{
            margin-top: 30px;
            border: solid 2px;
            border-radius: 5px;
        }
        .none{
            display: none;
        }

    </style>
</head>
<%
    User useradm = (User) session.getAttribute("user");
    List<User> listA = (List<User>) request.getAttribute("user");

    Iterator<User> iterator = listA.iterator();
    while (iterator.hasNext()) {
        User user = iterator.next();
        if ("21130549@st.hcmuaf.edu.vn".equals(user.getEmail())) {
            iterator.remove();
        } else if (useradm.getEmail().equals(user.getEmail())) {
            iterator.remove();
        }
    }

%>
<body>

<section id="container">
    <!-- main-menu Start -->
    <%@include file="header.jsp" %>
    <!-- main-menu End -->

    <!--main content start-->
    <a style="margin-left: 300px;margin-top: 100px" href="addUser.jsp" class="btn btn-success" data-toggle="modal">
        <i class="fa-solid fa-plus" style="color: #63E6BE;"></i>
        <span style="vertical-align: middle;">Thêm khách hàng</span>
    </a>
    <section id="main-content" style="display: none">

        <div  id="container11" style="height: 100%;">
            <section class="h-100 h-custom">
                <h3 style="margin-left: 50px">Quản lý khách hàng</h3>
                <div class="container h-100 py-5">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col">

                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th scope="col">ID</th>
                                        <th scope="col">Username</th>

                                        <th scope="col">Email</th>
                                        <th scope="col" style="width:170px;padding-left: 40px">Số điện thoại</th>
                                        <th scope="col">Địa chỉ</th>
                                        <th scope="col">Là admin</th>
                                        <th scope="col">Thao tác</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                            <%
                if (listA != null && !listA.isEmpty()) {
                    for (User user : listA) {
            %>
                                    <tr id="<%=user.getId()%>">
                                        <td><%= user.getId() %></td>
                                        <td><%= user.getUserName() %></td>
                                        <td><%= user.getEmail() %></td>
                                        <td><%= user.getPhoneNumber() %></td>
                                        <td><%= user.getAddress() %></td>
                                        <% if(user.getRoleId()==1){%>
                                        <td>Admin</td>
                                        <%}else if(user.getRoleId()==2){%>
                                        <td>User</td>
                                        <%}else if(user.getRoleId()==3){%>
                                        <td>mod</td>
                                        <%}%>
                                        <td><a href="delete?userId=<%= user.getId() %>">Delete</a></td>
                                        <td><a href="UpdateUser?userId=<%= user.getId() %>">Sửa thông tin</a></td>

                                    </tr>
                                    <%
                                        }
                                    } else {
                                    %>
                                    <tr>
                                        <td colspan="4">No users available.</td>
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
                <p>&copy; 2023-2024 <a href="https://github.com/MinhThinhrine/Do_An_Web">Nhóm 18</a>. All Right Reserved.</p>
            </div>
        </div>
        <!-- / footer -->
    </section>

    <style>
        div.dt-container {
            width: 70%;
            position: relative;
            clear: both;
            margin-left: 300px;
            text-align: center;
        }
    </style>

    <table id="table1" class="table table-hover table-bordered">
        <thead>
        <tr>
            <th scope="col" style="text-align: center">Mã tài khoản</th>
            <th scope="col" style="text-align: center">Email</th>
            <th scope="col" style="text-align: center">Quyền hạn</th>
            <th scope="col" style="text-align: center">Quyền</th>

            <th scope="col" style="text-align: center"></th>
        </tr>
        </thead>
        <tbody>
        <% for (User user : listA) { %>

        <tr id="user_<%= user.getId() %>">
            <th scope="row"><%= user.getId() %></th>
            <td><%= user.getEmail() %></td>
            <td><%= "Thêm Xóa Sửa" %></td>
            <td>
                <%if(useradm.getEmail().equalsIgnoreCase("21130549@st.hcmuaf.edu.vn")){%>
                <select id="roleSelect_<%= user.getId() %>" disabled data-original-value="<%= user.getRoleId() %>">
                    <option value="1" <%= user.getRoleId() == 1 ? "selected" : "" %>>Admin</option>
                    <option value="2" <%= user.getRoleId() == 2 ? "selected" : "" %>>User</option>
                    <option value="3" <%= user.getRoleId() == 3 ? "selected" : "" %>>Mod</option>
                </select>
                <%} else if (user.getRoleId() == 1) {%>
                <select id="roleSelect_<%= user.getId() %>" disabled data-original-value="<%= user.getRoleId() %>">
                    <option value="1" <%= user.getRoleId() == 1 ? "selected" : "" %>>Admin</option>
                </select>
                <%} else if (user.getRoleId() == 3) {%>
                <select id="roleSelect_<%= user.getId() %>" disabled data-original-value="<%= user.getRoleId() %>">
                <option value="1" <%= user.getRoleId() == 1 ? "selected" : "" %>>Admin</option>
                    <option value="2" <%= user.getRoleId() == 2 ? "selected" : "" %>>User</option>
                    <option value="3" <%= user.getRoleId() == 3 ? "selected" : "" %>>Mod</option>
                </select>
                <%} else if (user.getRoleId() == 2) {%>
                <select id="roleSelect_<%= user.getId() %>" disabled data-original-value="<%= user.getRoleId() %>">
                    <option value="1" <%= user.getRoleId() == 1 ? "selected" : "" %>>Admin</option>
                    <option value="2" <%= user.getRoleId() == 2 ? "selected" : "" %>>User</option>
                    <option value="3" <%= user.getRoleId() == 3 ? "selected" : "" %>>Mod</option>
                </select>
                <%}%>
            </td>
            <td style="display: ruby">
                <button onclick="editUser(<%= user.getId() %>)" id="editBtn_<%= user.getId() %>" class="btn btn-primary btn-sm" type="button" title="Sửa">
                    <i class="fa-solid fa-pen" style="color: #FFD43B;"></i>
                </button>
                <button onclick="confirmEdit(<%= user.getId() %>)" id="confirmBtn_<%= user.getId() %>" class="btn btn-primary btn-sm none" type="button" title="Ok">
                    <i class="fa-solid fa-check"></i>
                </button>
                <button onclick="cancelEdit(<%= user.getId() %>)" id="cancelBtn_<%= user.getId() %>" class="btn btn-primary btn-sm none" type="button" title="Hủy">
                    <i class="fa-solid fa-square-xmark"></i>
                </button>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>




    <!--main content end-->
</section>

<script src="js/jquery2.0.3.min.js"></script>
<script src="pluggin/datatables.min.js"></script>
<script>
    $(document).ready(function() {
        $('#table1').DataTable();
    });
</script>

<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="admin/js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->
<script src="js/jquery2.0.3.min.js"></script>
<script src="pluggin/datatables.min.js"></script>

<script>
    function editUser(userId) {
        var roleSelect = document.getElementById('roleSelect_' + userId);
        // Lưu giá trị hiện tại vào thuộc tính data
        roleSelect.setAttribute('data-current-value', roleSelect.value);

        document.getElementById('editBtn_' + userId).style.display = 'none';
        document.getElementById('confirmBtn_' + userId).style.display = 'inline-block';
        document.getElementById('cancelBtn_' + userId).style.display = 'inline-block';
        roleSelect.disabled = false;
    }

    function confirmEdit(userId) {
        var roleSelect = document.getElementById('roleSelect_' + userId).value;
        console.log('UserId',userId);
        console.log('roleSelect',roleSelect);
        var data = new URLSearchParams();
        data.append('idUser',userId);
        data.append('role',roleSelect);
        fetch("updatePermiss",{
            method: 'POST',
            body: data
        })
            .then(response =>{
                if (response.ok) {
                    Swal.fire({
                        title: 'Thông báo!',
                        text: 'Cập nhật thành công.',
                        icon: 'info',
                        confirmButtonText: 'OK'
                    }).then(() => {
                        window.location.reload();
                    });
                }else{
                    console.log(response)
                }
            })
            .catch(err =>{
                console.log(err)
            })
        document.getElementById('editBtn_' + userId).style.display = 'inline-block';
        document.getElementById('confirmBtn_' + userId).style.display = 'none';
        document.getElementById('cancelBtn_' + userId).style.display = 'none';
        roleSelect.disabled = true;
    }

    function cancelEdit(userId) {
        var roleSelect = document.getElementById('roleSelect_' + userId);
        // Khôi phục giá trị ban đầu
        roleSelect.value = roleSelect.getAttribute('data-current-value');

        document.getElementById('editBtn_' + userId).style.display = 'inline-block';
        document.getElementById('confirmBtn_' + userId).style.display = 'none';
        document.getElementById('cancelBtn_' + userId).style.display = 'none';
        roleSelect.disabled = true;
    }
</script>






<!-- //calendar -->
</body>
</html>
