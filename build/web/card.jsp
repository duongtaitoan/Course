<%-- 
    Document   : card.jsp
    Created on : Apr 22, 2022, 10:16:51 AM
    Author     : duong
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet">
        <!--use lib of jquery-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.css">
        <link rel="stylesheet" href="jquery.back-to-top.css">
        <!--jquery for scroll top button-->
        <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
        <script src="jquery.back-to-top.js"></script>
        <!--cdn of bootstrap-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/9d281e3188.js" crossorigin="anonymous"></script>
        <!--icon of font awesome-->
        <link href="/your-path-to-fontawesome/css/fontawesome.css" rel="stylesheet">
        <link href="/your-path-to-fontawesome/css/brands.css" rel="stylesheet">
        <link href="/your-path-to-fontawesome/css/solid.css" rel="stylesheet">
        <style>
            *{
                scroll-behavior: smooth;
                font-family: cursive;
                margin: 0%;
                padding: 0%;
            }
            video {
                width: 100%!important;
                height: 35%;
                border: 1px solid 0.2px;
            }
            #scrollToTop {
                /* Mặc định button sẽ được ẩn*/
                display: none;
                position: fixed;
                bottom: 20px;
                right: 15px;
                height: 14%;
                width: 7%;
                font-size: 48px;
                /* button được ưu tiên hiển thị đè lên các phần khác*/
                z-index: 99;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 15px;
                border-radius: 10px;
            }

            .child_lessonDetails{
                text-decoration: none;
                color: black;
            }
            .child_lessonDetails:hover{
                text-decoration: none;
                color: #0099ff;
            }

            #clickScrollTop{
                display: none;
                color: black;
            }

            .child_solution_unica{
                text-decoration: none;
                color: black;
            }
            .child_solution_unica:hover{
                color: rgb(64, 64, 64);
            }
            .banner_footer{
                background-image: url(asstes/image/footer-banner.png);
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
                height: 300px;
                background-position: center;
            }
            .footer_info{
                list-style: none;
                color: black;
                text-decoration: none;
            }
            div footer div a{
                color: black;
                text-decoration: none;
            }
            div footer div a:hover{
                color: white;
            }
        </style>
        <title>Card Page</title>
    </head>
    <body>
        <!--nav home-->
        <nav class=" ps-5 pe-5 navbar navbar-expand-lg navbar-light bg-light navbar-light" style="background-color: #e3f2fd;">
            <!-- Navbar content -->
            <div class="nav flex-column flex-sm-row container-fluid">
                <a class="navbar-brand" href="home.jsp">
                    <img src="https://unica.vn/media/images_v2018/logo-unica.png" />
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item col-sm-3 ps-3 pe-3 ">
                            <a class="text-sm-center nav-link active" href="MentorController">Giảng Viên</a>
                        </li>
                        <li class="nav-item col-sm-4">
                            <input class="form-control mr-sm-2 text-sm-center" type="search" placeholder="Search" aria-label="Search">
                        </li>
                        <li class="nav-item col-sm-5 ps-5">
                            <button class="nav-link">Kích hoạt khóa học <i class="fa-solid fa-unlock"></i></button>
                        </li>
                        <li class="col">
                            <a class="nav-link" href="#">
                                <i class="fa-solid fa-cart-shopping"></i>
                            </a>
                        </li>
                        <li class="nav-item col-sm-3 pe-4 ps-4">
                            <c:choose>
                                <c:when test="${empty ROLE}">
                                    <form method="POST" action="MainController" >
                                        <button class="nav-link btn btn-outline-light" title="Login to page">
                                            <input type="hidden" name="btnAction" value="Login">
                                            Đăng nhập
                                        </button>
                                    </form>
                                </c:when>
                                <c:when test="${not empty ROLE}">
                                    <form action="MainController">
                                        <button class="nav-link" title="Login to page">
                                            <input type="hidden" name="btnAction" value="Logout">
                                            Đăng xuất
                                        </button>
                                    </form>
                                </c:when>
                            </c:choose>
                        </li>
                        <li class="nav-item col-sm-3">
                            <form action="MainController">
                                <button class="child_nav_register nav-link btn btn-danger" style="color: white" title="Login to page">
                                    <input type="hidden" name="btnAction" value="Logout">
                                    Đăng ký
                                </button>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!--scroll top-->
        <div id="clickScrollTop">
        </div>

        <header style="background-color: black; width: 100%; height: 20%">

        </header>

        <!--audio and button payment-->
        <div class="row ms-5 mt-5 me-5">
            <div class="col-8">

                <!--video-->
                <div class="col mt-3">
                    <c:if test="${INFO_MENTOR != null}">
                        <c:if test="${not empty INFO_MENTOR}">
                            <iframe style="width: 100%; height: 540px" src="${INFO_MENTOR.trailer}" frameborder="0" allowfullscreen></iframe>
                            </c:if>
                        </c:if>
                </div>

                <!--content button-->
                <div class="ps-5 pe-5 mt-4 row shadow p-3 mb-1 bg-body rounded">
                    <div class="justify-content-start">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="col btn btn-light">Giới thiệu</button>
                            <button class="btn btn-light ms-2" >
                                <input type="hidden" name="valueField" value="new">
                                Nội dung Khóa học
                            </button>
                            <button class="btn btn-light ms-2" >
                                <input type="hidden" name="valueField" value="asc">
                                Thông tin giảng viên
                            </button>
                            <button class="btn btn-light ms-2" >
                                <input type="hidden" name="valueField" value="desc">
                                Đánh giá
                            </button>
                        </div>
                    </div>
                </div>

                <!--What did your Learning--> 
                <div class="row ps-5 pe-5 mt-5 shadow p-3 mb-5 bg-body rounded">
                    <h2>Bạn sẽ học được gì </h2>
                    <div class="d-flex justify-content-start">
                        <c:if test="${LIST_LESSON != null}">
                            <c:if test="${not empty LIST_LESSON}">
                                <div class="row">
                                    <c:forEach items="${LIST_LESSON}" var="lesson">
                                        <div class="col-6">
                                            <p>
                                                <i class="fa-solid fa-check" style="color: #33ff33"></i>
                                                ${lesson.lessonType}
                                            </p>
                                        </div>
                                    </c:forEach>
                                </div>
                            </c:if>
                        </c:if>
                    </div>
                </div>

                <!--list content of lesson-->
                <div class="row ps-5 pe-5 mt-5 shadow p-3 mb-5 bg-body rounded">
                    <h2>Nội dung Khóa Học</h2>
                    <hr/>
                    <div class=" d-flex flex-column bd-highlight">
                        <c:if test="${LIST_LESSON_DETAILS != null}">
                            <c:if test="${not empty LIST_LESSON_DETAILS}">
                                <div>
                                    <!--forEach to get content lesson--> 
                                    <c:forEach items="${LIST_LESSON_DETAILS}" var="lessDetails">
                                        <div class="col">
                                            <i class="fa-solid fa-circle-plus"></i> ${lessDetails.lessonTypeContent}
                                            <div class="container">
                                                <!--forEach get lesson details by content time--> 
                                                <c:forEach items="${lessDetails.listLessDetails}" var="listLessDetails">
                                                    <a href="#" class="row child_lessonDetails mt-1 mb-1">
                                                        <div class="col-8">
                                                            <i class="fa-solid fa-circle-play"></i> ${listLessDetails.lessonContent}
                                                        </div>
                                                        <div class="col-2">
                                                            <c:if test="${listLessDetails.isActive == true}">
                                                                Học Thử
                                                            </c:if>
                                                        </div>
                                                        <div class="col-2">
                                                            ${listLessDetails.timeDetailsLesson} Phút
                                                        </div>
                                                    </a>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </c:if>
                        </c:if>
                    </div>
                </div>

                <!--description about lesson-->
                <div class="row ps-5 pe-5 mt-3 shadow p-3 mb-5 bg-body rounded">
                    <c:if test="${COURSE_VALUE != null}">
                        <c:if test="${not empty COURSE_VALUE}">
                            <h2>Giới thiệu khóa học</h2>
                            <div class="d-flex justify-content-start">
                                <div>
                                    <p>
                                        ${COURSE_VALUE.content}
                                    </p>
                                </div>
                            </div>
                        </c:if> 
                    </c:if> 
                </div>

                <!--info of teacher--> 
                <div class="row ps-5 pe-5 mt-3 shadow p-3 mb-5 bg-body rounded">
                    <c:if test="${INFO_MENTOR != null}">
                        <c:if test="${not empty INFO_MENTOR}">
                            <h4> <strong>Thông tin giảng viên </strong></h4>
                            <hr/>
                            <div class="container">
                                <div class="row">
                                    <div class="col-4">
                                        <div class="card" style="width: 16rem;">
                                            <div class="card-header">
                                                <div class="px-2 py-2 text-center card-img-top"><img src="${INFO_MENTOR.image}" width="150" class="rounded-circle mb-2 img-thumbnail d-block mx-auto">
                                                    <hr/>
                                                    <p class="text-black mb-0">
                                                        <i class="fa-solid fa-users"></i> ${COUNT_STUDENT} học viên</p>
                                                    <p class="small text-black mb-0">
                                                        <i class="fa-solid fa-circle-play"></i> ${COUNT_LESSON} khóa học
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <h3>${INFO_MENTOR.mentorName}</h3>
                                        <p>${INFO_MENTOR.mentorContent}</p>
                                        <p>${INFO_MENTOR.description}</p>
                                        <p>${INFO_MENTOR.achievements}</p>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:if>
                </div>

                <!--feedback mentor--> 
                <div class="row ps-5 pe-5 mt-3 shadow p-3 mb-5 bg-body rounded">
                    <h4> <strong>Đánh giá của học viên </strong></h4>
                    <hr/>
                    <c:if test="${COURSE_VALUE != null}">
                        <c:if test="${not empty COURSE_VALUE}">
                            <div class=" d-flex justify-content-between">
                                <div class="col-3">
                                    <div class="text-center">
                                        <h3><strong>${COUNT_STUDENT}</strong> học viên</h3>
                                        <div class="col-9 container">
                                            <ul class="list-inline small">
                                                <div class="d-flex justify-content-center">
                                                    <c:forEach var="i" begin="1" end="${COURSE_VALUE.rating}">
                                                        <li class="list-inline-item m-0 pe-1"><i class="fa fa-star text-success"></i></li>
                                                        <option value="${5-(i)}">
                                                            <c:set var="countStart" value="${5-i}"/>
                                                        </option> 
                                                    </c:forEach>
                                                    <c:forEach var="ii" begin="1" end="${countStart}">
                                                        <c:if test="${countStart >= 1}">
                                                            <li class="list-inline-item m-0 pe-1"><i class="fa fa-star-o text-success"></i></li>
                                                            </c:if>
                                                        </c:forEach>
                                                </div>
                                            </ul>
                                        </div>
                                        <p>Có <strong>${COUNT_FEEDBACK}</strong> đánh giá</p>
                                    </div>
                                </div>

                                <!--progress by start-->
                                <div class="col-9 ps-5 container">
                                    <div class="row">
                                        <div class="col">
                                            <div class="col">
                                                <div class="progress mt-3 mb-2" style="size: 2em">
                                                    <div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="progress mt-3 mb-2" style="size: 2em">
                                                    <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="progress mt-3 mb-2" style="size: 2em">
                                                    <div class="progress-bar" role="progressbar" style="width: 60%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="progress mt-3 mb-2" style="size: 2em">
                                                    <div class="progress-bar" role="progressbar" style="width: 40%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="progress mt-3 mb-2" style="size: 2em">
                                                    <div class="progress-bar" role="progressbar" style="width: 20%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4 text-center mt-2">
                                            <ul class="list-inline small">
                                                <div class="col pt-1">
                                                    <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                                                </div>
                                                <div class="col pt-2">
                                                    <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                                                </div>
                                                <div class="col pt-3">
                                                    <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                                                </div>
                                                <div class="col pt-2">
                                                    <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                                                </div>
                                                <div class="col pt-2">
                                                    <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                                                    <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                                                </div>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </c:if>
                </div>

                <!--content feedback of student--> 
                <div class="row ps-5 pe-5 mt-5 shadow p-3 mb-5 bg-body rounded">
                    <h2>Nhận xét của học viên</h2>
                    <hr/>
                    <div class=" d-flex flex-column bd-highlight">
                        <c:if test="${LIST_FEEDBACK != null}">
                            <c:if test="${not empty LIST_FEEDBACK}">
                                <c:forEach items="${LIST_FEEDBACK}" var="feed">
                                    <div class="row mt-2">
                                        <div class="col-3 px-5 text-center">
                                            <img src="${feed.user.image}" width="150" class="rounded-circle mb-2 img-thumbnail d-block mx-auto">
                                        </div>
                                        <div class="col">
                                            <div class="row">
                                                <div class="col-4">
                                                    <div class="col">
                                                        <c:forEach var="i" begin="1" end="${feed.rating}">
                                                            <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                                                            </c:forEach>
                                                    </div>
                                                </div>
                                                <div class="col-6">${feed.user.email}</div>
                                            </div>
                                            <div class="mt-2">${feed.feebackContent}</div>
                                        </div>
                                        <div class="col-2 text-center">
                                            ${feed.dateFeedback}
                                        </div>
                                    </div>
                                    <hr class="col-10"/>
                                </c:forEach>
                            </c:if >
                        </c:if>
                    </div>
                </div>
            </div>

            <!--button register course and add to card-->
            <div class="col me-5 mt-3">
                <c:if test="${COURSE_VALUE != null}">
                    <c:if test="${not empty COURSE_VALUE}">
                        <div class="card" style="width: 24rem;">
                            <div class="d-flex ps-2 justify-content-start">
                                <h4 class="card-title">
                                    <strong>
                                        <c:set var="price" value="${((COURSE_VALUE.price*COURSE_VALUE.discount)/100)}"/>
                                        <fmt:setLocale value = "vi_VN"/>
                                        <fmt:formatNumber value = "${COURSE_VALUE.price - price}" type = "currency"/>
                                    </strong>
                                </h4>
                                <h6 class="ps-3" style="text-decoration:line-through;">
                                    <fmt:setLocale value = "vi_VN"/>
                                    <fmt:formatNumber value = "${COURSE_VALUE.price}" type = "currency"/>
                                </h6><br/>
                                <p class="ps-2">(<strong>${COURSE_VALUE.discount}%</strong> OFF)</p>
                            </div>
                            <div class="card-body">
                                <p>
                                    <i class="fa-solid fa-clock"></i> 
                                    Thời gian ưu đãi còn <strong class="text-danger" id="time">88:88</strong>
                                </p>
                            </div>
                            <div class="d-grid gap-2 pe-2 ps-2">
                                <button class=" pt-3 pb-3 btn btn-danger" type="button">ĐĂNG KÝ HỌC</button>
                                <button class=" pt-3 pb-3 btn btn-info" type="button">
                                    <i class="fa-solid fa-cart-shopping"></i>
                                    Thêm vào giỏ hàng
                                </button>
                            </div>
                            <div class="card-body">
                                <p>
                                    <i class="fa-solid fa-clock"></i> 
                                    Thời lượng: <strong>${COURSE_VALUE.lesson.timeLesson}</strong> giờ 
                                </p>
                                <p>
                                    <i class="fa-solid fa-circle-play"></i>
                                    Giáo trình: <strong>${COURSE_VALUE.lesson.listLesson}</strong> bài giảng
                                </p>
                                <p>
                                    <i class="fa-solid fa-clock-rotate-left"></i>
                                    Sở hữu khóa học trọn đời
                                </p>
                                <p>
                                    <i class="fa-solid fa-certificate"></i>
                                    Cấp chứng nhận hoàn thành
                                </p>
                                <p>
                                    <i class="fa-solid fa-percent"></i>
                                    Giảm thêm <strong>20k</strong> khi thanh toán online
                                </p>
                                <p class="text-center">
                                    <a href="#" style="text-decoration:none;">Bạn chưa có mã giảm giá ?</a>
                                </p>
                                <div class="row">
                                    <div class="col-7">
                                        <input type="text" class="form-control" placeholder="nhập mã giảm giá" aria-describedby="basic-addon1">
                                    </div>
                                    <div class="col-5">
                                        <button class="btn btn-light" type="button">Áp dụng</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:if>
            </div>
        </div>

        <!--banner footer-->
        <div style="color: white;" class="mt-5">
            <div class="card text-center">
                <div class="card-body banner_footer pb-5 pt-5">
                    <h2>Trở thành Giảng viên Unica</h2>
                    <h4>Hơn 500 giảng viên đã có khóa học trên Unica</h4>
                    <a href="#" class="btn btn-outline-light">Đăng Ký Ngay</a>
                </div>
            </div>
        </div>

        <!--footer-->
        <div style="background-color: cadetblue">
            <footer class="container">
                <div class="row pt-5 pb-2">
                    <div class="col-lg-4 col-md-3 col-sm-4 col-xs-6 hei2 pdr pdl ">
                        <span>
                            <img src="https://unica.vn/media/images_v2018/logo-unica.png" />
                        </span>
                        <ul class="ps-1 mt-2 footer_info">
                            <li><i class="fa fa-map-marker"></i> 247 Cầu Giấy, Hà Nội</li>
                            <li><i class="fa fa-map-marker"></i> P503, 20 Phan Đình Giót, P.2, Q. Tân Bình</li>
                            <li><i class="fa fa-phone"></i>19001568</li>
                            <li><i class="fa fa-phone"></i> 090 488 6095</li>
                            <li><i class="fa fa-envelope-o"></i> cskh@unica.vn </li>
                            <li><i class="fa fa-clock-o"></i> 8:00 - 22:00 </li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-2 col-sm-4 col-xs-6 hei2 pdr pdm des-unica">
                        <span>
                            <a href="#">
                                <h4>Về Unica</h4>
                            </a>
                        </span>
                        <ul class="ps-0 mt-2 footer_info" >
                            <li><a href="#">Giới thiệu về Unica</a></li>
                            <li><a href="#">Câu hỏi thường gặp</a></li>
                            <li><a href="#">Điều khoản dịch vụ</a></li>
                            <li><a href="#">Hướng dẫn thanh toán</a></li>
                            <li><a href="#">Kích hoạt khóa học</a></li>
                            <li><a href="#">Góc chia sẻ</a></li>
                            <li><a href="#">Chính sách bảo mật</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-2 col-sm-4 col-xs-6 hei2 pdr pdm des-unica">
                        <span>
                            <a href="#">
                                <h4>Hợp tác liên kết</h4>
                            </a>
                        </span>
                        <ul class="ps-0 mt-2 footer_info">
                            <li><a href="#">Đăng ký giảng viên</a></li>
                            <li><a href="#">Giải pháp e-learning</a></li>
                            <li><a href="#">Đào tạo doanh nghiệp</a></li>
                            <li><a href="#">Affiliate</a></li>
                            <li><a href="#">Agency</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-4 col-xs-6 hei2 pdr app-unica">
                        <span>
                            <a href="#">
                                <h4>Tải app Unica</h4>
                            </a>
                        </span>
                        <ul class="ps-0 mt-2 footer_info">
                            <li class="pt-2 pb-2">
                                <a href="https://itunes.apple.com/us/app/unica-online-learning/id1230853725?ls=1&amp;mt=8" rel="nofollow">
                                    <img alt="Unica on App Store" src="https://unica.vn/media/images_v2018/appstore.png">
                                </a>
                            </li>
                            <li class="pt-2 pb-2">
                                <a href="https://play.google.com/store/apps/details?id=com.inet.Learning" rel="nofollow">
                                    <img alt="Unica on Google Play" src="https://unica.vn/media/images_v2018/playstore.png">
                                </a>
                            </li>
                            <span>Kết nối với Unica</span>
                        </ul>
                    </div>
                </div>
            </footer>
        </div>

        <!-- Scroll to top button -->
        <div class="d-flex justify-content-end">
            <button class="btn btn-outline-blue" id="scrollToTop" title="Go to top"><i class="fa-solid fa-circle-arrow-up"></i></button>
        </div>
        <script>
            //Khi người dùng cuộn chuột thì gọi hàm scrollFunction
            window.onscroll = function () {
                scrollFunction();
            };
            function scrollFunction() {
                // Kiểm tra vị trí hiện tại của thanh scroll so với nội dung trang
                if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                    //nếu lớn hơn 100px thì hiện button
                    document.getElementById("scrollToTop").style.display = "block";
                } else {
                    //nếu nhỏ hơn 100px thì ẩn button
                    document.getElementById("scrollToTop").style.display = "none";
                }
            }
            //gán sự kiện click cho button
            document.getElementById('scrollToTop').addEventListener("click", function () {
                //Nếu button được click thì nhảy về đầu trang
                var elementTop = document.getElementById('clickScrollTop');
                document.body.scrollTop = elementTop;
                document.documentElement.scrollTop = elementTop;
            });
            //            start time
            function startTimer(duration, display) {
                var timer = duration, minutes, seconds;
                setInterval(function () {
                    minutes = parseInt(timer / 60, 10);
                    seconds = parseInt(timer % 60, 10);

                    minutes = minutes < 10 ? "0" + minutes : minutes;
                    seconds = seconds < 10 ? "0" + seconds : seconds;

                    display.textContent = minutes + ":" + seconds;

                    if (--timer < 0) {
                        timer = duration;
                    }

                }, 1000);
            }

            //            load time
            window.onload = function () {
                var minutes = 60 * 60,
                        display = document.querySelector('#time');
                startTimer(minutes, display);
            };
        </script>
        <!--cdn of jquery--> 
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous"></script>
        <!--libraries of table-->
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.js"></script>
        <!--libraries of bootstrap-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    </body>
</html>
