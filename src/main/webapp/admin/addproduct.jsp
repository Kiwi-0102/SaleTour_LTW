<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.DAO.TourDao" %>
<%@ page import="vn.edu.hcmuaf.bean.Tour" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <link rel="stylesheet" href="css/monthly.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css"
          integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.js"></script>
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
    <div id="addEmployeeModal">
        <div class="form-add" style="margin-left: 18%;width: 80%">
            <div class="modal-content">
                <form id="addTourForm" method="post" enctype="multipart/form-data">
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
                            <input name="region" type="text" class="form-control"  required>
                        </div>
                        <div class="form-group">
                            <label>Image</label>
                            <input name="image" type="file" class="form-control" accept="image/*"  required>
                        </div>
                        <div class="form-group">
                            <label>Price</label>
                            <input name="price" type="text" class="form-control"  required>
                        </div>
                        <div class="form-group">
                            <label>Number Customer</label>
                            <input name="customer" id="customer" type="number" class="form-control"  required>
                        </div>
                        <div class="form-group">
                            <label>StartTime</label>
                            <input name="startTime" type="text" class="form-control"  required>
                        </div>
                        <div class="form-group">
                            <label>Schedule</label>
                            <input name="schedule" type="text" class="form-control"  required>
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea name="description" class="form-control"  required></textarea>
                        </div>
                        <div class="form-group">
                            <label>Duration</label>
                            <select name="duration" class="form-control" id="lichtrinh" onchange="addPAD()">
                                <option value="1 ngày">1 ngày</option>
                                <option value="2 ngày 1 đêm">2 ngày 1 đêm</option>
                                <option value="3 ngày 2 đêm">3 ngày 2 đêm</option>
                                <option value="4 ngày 3 đêm">4 ngày 3 đêm</option>
                                <option value="5 ngày 4 đêm">5 ngày 4 đêm</option>
                            </select>
                        </div>
                        <hr>
                        <div>Thêm phần chi tiết sản phẩm</div>
                        <div class="imagedetail">
                            <div class="form-group">
                                <label>Image1</label>
                                <input name="imagedetail1" type="file" class="form-control" accept="image/*" >
                            </div>
                        </div>

                        <div class="mota1">
                            <div class="form-group">
                                <label>Schedule1</label>
                                <input name="schedule1" type="text" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="submit" class="btn btn-success" value="Add">
                    </div>
                </form>

            </div>
        </div>
    </div>
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
    function addPAD() {
        var lichtrinh = document.getElementById('lichtrinh').value;
        var dta = document.querySelector('.imagedetail');
        var dtmt = document.querySelector('.mota1');

        if (lichtrinh === '1 ngày') {
            dta.innerHTML = `
                    <div class="form-group">
                        <label>Image1</label>
                        <input id="imagedetail1" type="file" class="form-control" accept="image/*" required>
                    </div>
                `;
            dtmt.innerHTML = `
                    <div class="form-group">
                        <label>Schedule1</label>
                        <input id="schedule1" type="text" class="form-control" required>
                    </div>
                `;
        } else if (lichtrinh === '2 ngày 1 đêm') {
            dta.innerHTML = `
                    <div class="form-group">
                        <label>Image1</label>
                        <input id="imagedetail1" type="file" class="form-control" accept="image/*" required>
                    </div>
                    <div class="form-group">
                        <label>Image2</label>
                        <input id="imagedetail2" type="file" class="form-control" accept="image/*" required>
                    </div>
                `;
            dtmt.innerHTML = `
                    <div class="form-group">
                        <label>Schedule1</label>
                        <input id="schedule1" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Schedule2</label>
                        <input id="schedule2" type="text" class="form-control" required>
                    </div>
                `;
        } else if (lichtrinh === '3 ngày 2 đêm') {
            dta.innerHTML = `
                    <div class="form-group">
                        <label>Image1</label>
                        <input id="imagedetail1" type="file" class="form-control" accept="image/*" required>
                    </div>
                    <div class="form-group">
                        <label>Image2</label>
                        <input id="imagedetail2" type="file" class="form-control" accept="image/*" required>
                    </div>
                    <div class="form-group">
                        <label>Image3</label>
                        <input id="imagedetail3" type="file" class="form-control" accept="image/*" required>
                    </div>
                `;
            dtmt.innerHTML = `
                    <div class="form-group">
                        <label>Schedule1</label>
                        <input id="schedule1" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Schedule2</label>
                        <input id="schedule2" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Schedule3</label>
                        <input id="schedule3" type="text" class="form-control" required>
                    </div>
                `;
        } else if (lichtrinh === '4 ngày 3 đêm') {
            dta.innerHTML = `
                    <div class="form-group">
                        <label>Image1</label>
                        <input id="imagedetail1" type="file" class="form-control" accept="image/*" required>
                    </div>
                    <div class="form-group">
                        <label>Image2</label>
                        <input id="imagedetail2" type="file" class="form-control" accept="image/*" required>
                    </div>
                    <div class="form-group">
                        <label>Image3</label>
                        <input id="imagedetail3" type="file" class="form-control" accept="image/*" required>
                    <div class="form-group">
                        <label>Image4</label>
                        <input id="imagedetail4" type="file" class="form-control" accept="image/*" required>
                    </div>
                    </div>
                `;
            dtmt.innerHTML = `
                    <div class="form-group">
                        <label>Schedule1</label>
                        <input id="schedule1" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Schedule2</label>
                        <input id="schedule2" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Schedule3</label>
                        <input id="schedule3" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Schedule4</label>
                        <input id="schedule4" type="text" class="form-control"  required>
                    </div>
                `;
        } else if (lichtrinh === '5 ngày 4 đêm') {
            dta.innerHTML = `
                    <div class="form-group">
                        <label>Image1</label>
                        <input id="imagedetail1" type="file" class="form-control" accept="image/*" required>
                    </div>
                    <div class="form-group">
                        <label>Image2</label>
                        <input id="imagedetail2" type="file" class="form-control" accept="image/*" required>
                    </div>
                    <div class="form-group">
                        <label>Image3</label>
                        <input id="imagedetail3" type="file" class="form-control" accept="image/*" required>
                    <div class="form-group">
                        <label>Image4</label>
                        <input id="imagedetail4" type="file" class="form-control" accept="image/*" required>
                    </div>
                    <div class="form-group">
                        <label>Image5</label>
                        <input id="imagedetail5" type="file" class="form-control" accept="image/*" required>
                    </div>
                    </div>
                `;
            dtmt.innerHTML = `
                    <div class="form-group">
                        <label>Schedule1</label>
                        <input id="schedule1" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Schedule2</label>
                        <input id="schedule2" type="text" class="form-control"  required>
                    </div>
                    <div class="form-group">
                        <label>Schedule3</label>
                        <input id="schedule3" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Schedule4</label>
                        <input id="schedule4" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Schedule5</label>
                        <input id="schedule5" type="text" class="form-control" required>
                    </div>
                `;
        }
    }

    document.getElementById("addTourForm").addEventListener("submit", function(event) {
        event.preventDefault(); // Ngăn chặn việc gửi form

        var name = document.getElementsByName("name")[0].value;
        var region = document.getElementsByName("region")[0].value;
        var price = document.getElementsByName("price")[0].value;
        var startTime = document.getElementsByName("startTime")[0].value;
        var schedule = document.getElementsByName("schedule")[0].value;
        var description = document.getElementsByName("description")[0].value;
        var num = document.getElementById('customer').value;
        var duration = document.getElementsByName("duration")[0].value;
        var image = document.getElementsByName("image")[0].files[0]; // Lấy file ảnh đầu tiên
        var image2 = document.getElementsByName("image")[0].files[0].name; // Lấy file ảnh đầu tiên


        var scheduleVars = {};
        var schedules = document.querySelectorAll('.mota1 input[type="text"]');
        schedules.forEach(function(schedule, index) {
            var varName = "schedule" + (index + 1);
            scheduleVars[varName] = schedule.value;
        });

        // Khai báo các biến cho ảnh
        var imageVars = {};
        var images = document.querySelectorAll('.imagedetail input[type="file"]');
        images.forEach(function(image, index) {
            var varName = "img" + (index + 1);
            imageVars[varName] = image.files[0]; // Thay đổi để lấy file thực sự
        });

        var param2 = new URLSearchParams();
        var param = new FormData();


// Kiểm tra và lấy giá trị từ các phần tử input
        var schedule1 = document.getElementById("schedule1") ? document.getElementById("schedule1").value : 'ko có';
        var schedule2 = document.getElementById("schedule2") ? document.getElementById("schedule2").value : 'ko có';
        var schedule3 = document.getElementById("schedule3") ? document.getElementById("schedule3").value : 'ko có';
        var schedule4 = document.getElementById("schedule4") ? document.getElementById("schedule4").value : 'ko có';
        var schedule5 = document.getElementById("schedule5") ? document.getElementById("schedule5").value : 'ko có';



        var imagedetal1 = document.getElementsByName("imagedetail1")[0] ? document.getElementsByName("imagedetail1")[0].name : null;
        var imagedetal2 = document.getElementsByName("imagedetail2")[0] ? document.getElementsByName("imagedetail2")[0].name : null;
        var imagedetal3 = document.getElementsByName("imagedetail3")[0] ? document.getElementsByName("imagedetail3")[0].name : null;
        var imagedetal4 = document.getElementsByName("imagedetail4")[0] ? document.getElementsByName("imagedetail4")[0].name : null;
        var imagedetal5 = document.getElementsByName("imagedetail5")[0] ? document.getElementsByName("imagedetail5")[0].name : null;



        console.log("Tên tệp tin imagedetail1: " + imagedetal1);
        console.log("Tên tệp tin imagedetail2: " + imagedetal2);
        console.log("Tên tệp tin imagedetail3: " + imagedetal3);
        console.log("Tên tệp tin imagedetail4: " + imagedetal4);
        console.log("Tên tệp tin imagedetail5: " + imagedetal5);

        param2.append('img1', imagedetal1);
        param2.append('img2', imagedetal2);
        param2.append('img3', imagedetal3);
        param2.append('img4', imagedetal4);
        param2.append('img5', imagedetal5);

        param2.append('pschedule1', schedule1);
        param2.append('pschedule2', schedule2);
        param2.append('pschedule3', schedule3);
        param2.append('pschedule4', schedule4);
        param2.append('pschedule5', schedule5);





        param2.append('name', name);
        param2.append('region', region);
        param2.append('price', price);
        param2.append('startTime', startTime);
        param2.append('schedule', schedule);
        param2.append('description', description);
        param2.append('customer', num);
        param2.append('duration', duration);
        param2.append('image', image2);
        param2.append('action','addtour');
        param.append('image', image);

        // Thêm các biến lịch trình vào param
        for (var key in scheduleVars) {
            param2.append(key, scheduleVars[key]);
        }

        // Thêm các biến ảnh vào param
        for (var key in imageVars) {
            param.append(key, imageVars[key]);
        }


        fetch('./add',{
            body: param2,
            method: 'POST'
        })
            .then(reponse => {
                if(reponse.ok){
                    alert("Thêm Tour thành công")
                }
            })

        fetch('./add', {
            body: param,
            method: 'POST'
        })
            .then(response => {
                if (response.ok) {
                    console.log("Đã thêm tour thành công");
                } else {
                    console.log("Lỗi khi thêm");
                }
            })
            .catch(err => {
                console.log("Lỗi từ server: " + err);
            });
    });



</script>

<!-- //calendar -->
</body>
</html>
