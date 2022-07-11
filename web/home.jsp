<%-- 
    Document   : home.jsp
    Created on : Apr 20, 2022, 9:48:37 AM
    Author     : duong
--%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@page import="dto.Course"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/9d281e3188.js" crossorigin="anonymous"></script>

        <!--icon of font awesome-->
        <link href="/your-path-to-fontawesome/css/fontawesome.css" rel="stylesheet">
        <link href="/your-path-to-fontawesome/css/brands.css" rel="stylesheet">
        <link href="/your-path-to-fontawesome/css/solid.css" rel="stylesheet">
        <title>Home Page</title>
        <style>
            .image_banner{
                width: 100%!important;
                background-repeat: no-repeat;
                background-size: auto;
            }
            .content_course a{
                text-decoration: none;
                color: black;
            }
            .chil_feedback{
                word-spacing:0.1em;
                word-break: break-word!important;
            }
            .child_course{
                text-decoration: none;
                color: black;
            }
            .child_course:hover{
                color: black;
                opacity: 0.9;
            }
            .discount-label {
                padding: 2px; 
                position: absolute;
                float:left;
                color: black;
                background-color: antiquewhite;
                opacity: 0.9;
                -webkit-border-radius:0 4px 0 4px;
                -moz-border-radius:0 4px 0 4px;
                border-radius:0 4px 4px 0;
            }
            .child_mentor_content{
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
                line-height: 25px;
                -webkit-line-clamp: 2;
                display: -webkit-box;
                -webkit-box-orient: vertical;
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
                            <a class="nav-link">
                                <i class="fa-solid fa-cart-shopping"></i>
                            </a>
                        </li>
                        <li>
                            <a class="nav-link" href="NotificationController">
                                <i class="fa-solid fa-bell"></i>
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
                        <li class="nav-item col-sm-3 pe-4">
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

        <%
            ArrayList<Object> dashboard = new ArrayList<Object>();
            dashboard.add(new Course("Ngoại Ngữ", "fas fa-marker"));
            dashboard.add(new Course("Marketing", "fa fa fa-language"));
            dashboard.add(new Course("Tin học Văn Phòng", "fa fa fa-line-chart"));
            dashboard.add(new Course("Thiết kế", "fa fa fa-paint-brush"));
            dashboard.add(new Course("Kinh doanh", "fa fa fa-rocket"));
            dashboard.add(new Course("Kỹ năng mềm", "fa fa fa-lightbulb-o"));
            dashboard.add(new Course("Bán hàng", "fa fa fa-shopping-cart"));
            dashboard.add(new Course("CNTT", "fa fa fa-code"));
            dashboard.add(new Course("Sức khỏe", "fa fa fa-heartbeat"));
            dashboard.add(new Course("Phong cách sống", "fa fa fa-cutlery"));
            dashboard.add(new Course("Nuôi dạy con", "fa fa fa-child"));
            dashboard.add(new Course("Hôn nhân", "fa fa fa-group"));
            pageContext.setAttribute("variables", dashboard);
        %>
        <!--dashboard-->
        <div id="dashboard" class="row pe-5 ps-5 mt-5">
            <div class="col col-lg-3 pe-2 ps-5">
                <div class="from-group">
                    <c:forEach var="var" items="${pageScope.variables}">
                        <form action="CourseController">
                            <button class="list-group-item list-group-item-action pt-3 pb-2" >
                                <i class="<c:out value="${var.imageCourse}"/>"></i>
                                <input type="hidden" name="typeCourse" value="${var.nameCourse}">
                                <c:out value="${var.nameCourse}"/>
                            </button>
                        </form>
                    </c:forEach>
                </div>
            </div>
            <div class="col">
                <!-- Carousel -->
                <div id="demo" class="carousel slide" data-bs-ride="carousel">
                    <!-- Indicators/dots -->
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                        <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                        <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                    </div>

                    <!-- The slideshow/carousel -->
                    <div class="carousel-inner carousel_item text-center">
                        <div class="carousel-item active">
                            <a href="card.jsp">
                                <img class="image_banner" src="https://img.wallpapersafari.com/desktop/1024/576/19/98/smIH5D.png">
                            </a>
                        </div>
                        <div class="carousel-item">
                            <a href="card.jsp">
                                <img class="image_banner" src="https://img.wallpapersafari.com/desktop/1024/576/20/40/9bOImv.jpg">
                            </a>
                        </div>
                        <div class="carousel-item">
                            <a href="card.jsp">
                                <img class="image_banner" src="https://img.wallpapersafari.com/desktop/1024/576/50/46/34BykT.jpg">
                            </a>
                        </div>
                    </div>

                    <div class="ps-5 pe-5">
                        <!-- Left and right controls/icons -->
                        <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!--list course-->
        <div class="row pe-5 ps-5 mt-5 mb-5 item_course">
            <div class="ps-5">
                <h2>Các Khóa học Nổi Bật</h2>
            </div>
            <div class="row pe-5 ps-5 mb-5">
                <c:if test="${TOP_LIST_COURSE != null}">
                    <c:if test="${not empty TOP_LIST_COURSE}">
                        <c:set var="context" value="${pageContext.request.contextPath}" />
                        <c:forEach items="${TOP_LIST_COURSE}" var="course">
                            <div class="col-lg-3 col-md-6 mt-5 mb-4 mb-lg-0">
                                <div class="card rounded shadow-sm border-1">
                                    <div>
                                        <div class="discount-label"> ${course.discount}% </div>
                                    </div>
                                    <div class="card-body ps-2 pe-2 nav-link active">
                                        <form action="CardController">
                                            <input type="hidden" value="${course.courseID}" name="CourseID">
                                            <input type="hidden" value="${course.mentorID}" name="MentorID">
                                            <button class="child_course" style="border: none; background: window">
                                                <img src="${course.image}" alt="" class="img-fluid d-block mx-auto mb-3">
                                                <h6 style="text-align: left; height: 35px;">${course.description}</h6>
                                                <div class="row">
                                                    <div class="col-7">
                                                        <h7>${course.nameMentor}</h7>
                                                        <ul class="list-inline small">
                                                            <div class="d-flex justify-content-center">
                                                                <c:forEach var="i" begin="1" end="${course.rating}">
                                                                    <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
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
                                                    <div class="col-5">
                                                        <h7 style="text-decoration:line-through;">
                                                            <fmt:setLocale value = "vi_VN"/>
                                                            <fmt:formatNumber value = "${course.price}"/>
                                                        </h7>
                                                        <h6>
                                                            <c:set var="price" value="${((course.price*course.discount)/100)}"/>
                                                            <fmt:setLocale value = "vi_VN"/>
                                                            <fmt:formatNumber value = "${course.price - price}" type = "currency"/>
                                                        </h6>
                                                    </div>
                                                </div>
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>
                </c:if>
            </div>
        </div>

        <!--list course discount-->
        <div class="row pe-5 ps-5 mt-5 item_course">
            <div class="ps-5">
                <h2>Khóa học siêu ưu đãi</h2>
            </div>
            <div class="row pe-5 ps-5 mb-5">
                <c:if test="${LIST_COURSE_DISCOUNT != null}">
                    <c:if test="${not empty LIST_COURSE_DISCOUNT}">
                        <c:set var="context" value="${pageContext.request.contextPath}" />
                        <c:forEach items="${LIST_COURSE_DISCOUNT}" var="course">
                            <div class="col-lg-3 col-md-6 mt-5 mb-4 mb-lg-0">
                                <div class="card rounded shadow-sm border-1">
                                    <div>
                                        <div class="discount-label"> ${course.discount}% </div>
                                    </div>
                                    <div class="card-body ps-2 pe-2 nav-link active">
                                        <form action="CardController">
                                            <input type="hidden" value="${course.mentorID}" name="MentorID">
                                            <input type="hidden" value="${course.courseID}" name="CourseID">
                                            <button class="child_course" style="border: none; background: window">
                                                <img src="${course.image}" alt="" class="img-fluid d-block mx-auto mb-3">
                                                <h6 style="text-align: left; height: 35px;">${course.description}</h6>
                                                <div class="row">
                                                    <div class="col-7" >
                                                        <h7>${course.nameMentor}</h7>
                                                            <ul class="list-inline small">
                                                            <div class="d-flex justify-content-center">
                                                                <c:forEach var="i" begin="1" end="${course.rating}">
                                                                    <li class="list-inline-item m-0"><i class="fa fa-star text-success"></i></li>
                                                                    <option value="${5-(i)}">
                                                                        <c:set var="countStart" value="${5-i}"/>
                                                                    </option> 
                                                                </c:forEach>
                                                                <c:forEach var="ii" begin="1" end="${countStart}">
                                                                    <c:if test="${countStart >= 1}">
                                                                        <li class="list-inline-item m-0"><i class="fa fa-star-o text-success"></i></li>
                                                                        </c:if>
                                                                    </c:forEach>
                                                            </div>
                                                        </ul>
                                                    </div>
                                                    <div class="col-5">
                                                        <h7 style="text-decoration:line-through;">
                                                            <fmt:setLocale value = "vi_VN"/>
                                                            <fmt:formatNumber value = "${course.price}"/>
                                                        </h7>
                                                        <h6>
                                                            <c:set var="price" value="${((course.price*course.discount)/100)}"/>
                                                            <fmt:setLocale value = "vi_VN"/>
                                                            <fmt:formatNumber value = "${course.price - price}" type = "currency"/>
                                                        </h6>
                                                    </div>
                                                </div>
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>
                </c:if>
            </div>
        </div>

        <!--list button in type-->
        <div class="row ps-5 pe-5">
            <div>
                <h2 class="text-center">Bạn chưa tìm thấy khóa học mình quan tâm ?<br/>
                    Unica có hơn 2.000 khóa học đang chờ bạn khám phá</h2>
            </div>
            <div class="pe-5 ps-5 container">
                <div class="row d-flex flex-wrap container ps-5 pe-5 mt-4">
                    <c:forEach var="var" items="${pageScope.variables}">
                        <div class="col-xl-2 col-md-3 mb-1 container">
                            <div class="px-0 py-0 text-center">
                                <form action="CourseController" style="border: none">
                                    <button class="list-group-item list-group-item-action">
                                        <i class="<c:out value="${var.imageCourse}"/>"></i><br/>
                                        <input type="hidden" name="typeCourse" value="Ngoại Ngữ">
                                        <c:out value="${var.nameCourse}"/>
                                    </button>
                                </form>                                    
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

        <!--list mentor in course-->
        <div class="row pe-5 ps-5 mt-5 mb-5">
            <div class="text-center">
                <h1>GIẢNG VIÊN TIÊU BIỂU</h1>   
            </div>
            <div class="row pe-5 ps-5 mb-5">
                <c:if test="${LIST_TOP_MENTOR != null}">
                    <c:if test="${not empty LIST_TOP_MENTOR}">
                        <c:set var="context" value="${pageContext.request.contextPath}" />
                        <c:forEach items="${LIST_TOP_MENTOR}" var="mentor">
                            <div class="col-lg-3 col-md-6 mt-5 mb-4 mb-lg-0">
                                <form  method="POST" action="MentorDetailsController">
                                    <button class="pt-1 pb-1" style="border: none">
                                        <div class="card rounded border-1" style="width: 18rem;">
                                            <div class="card-header">
                                                <input type="hidden" name="keyMentor" value="${mentor.mentorID}">
                                                <div class="px-3 py-2 text-center card-img-top"><img src="${mentor.image}" alt="..." width="100" class="rounded-circle mb-2 img-thumbnail d-block mx-auto">
                                                    <p class="small text-black mb-0 child_mentor_content" >${mentor.mentorContent}</p>
                                                    <hr/>
                                                    <h5 class="text-black mb-0">${mentor.mentorName}</h5>
                                                </div>
                                            </div>
                                        </div>
                                    </button>
                                </form>
                            </div>
                        </c:forEach>
                    </c:if>
                </c:if>
            </div>
        </div>

        <!--list mentor in course-->
        <div class="row pe-5 ps-5 mt-5 mb-5">
            <div class="text-center">
                <h1>3 LÝ DO BẠN NÊN HỌC ONLINE TẠI UNICA</h1>   
            </div>
            <div class="row pe-5 ps-5 mb-5 mt-5">
                <div class="text-center d-flex justify-content-center">
                    <div class="col-4 d-flex justify-content-center">
                        <div class="row">
                            <div class="resonLearn card-header" style="border: none; background: #ffffff">
                                <img src="https://unica.vn/media/images/icon-ts-1.png" width="100" class="rounded-circle mb-2 img-thumbnail d-block mx-auto">
                            </div>
                            <h2>Giảng viên uy tín</h2>
                            <p>Bài giảng chất lượng</p>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="row">
                            <div class="resonLearn card-header" style="border: none; background: #ffffff">
                                <img src="https://unica.vn/media/images/icon-ts-2.png" width="100" class="rounded-circle mb-2 img-thumbnail d-block mx-auto">
                            </div>
                            <h2>Thanh toán 1 lần</h2>
                            <p>Học mãi mãi</p>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="row">
                            <div class="resonLearn card-header" style="border: none; background: #ffffff">
                                <img src="https://unica.vn/media/images/icon-ts-3.png" width="100" class="rounded-circle mb-2 img-thumbnail d-block mx-auto">
                            </div>
                            <h2>Học trực tuyến</h2>
                            <p>Hỗ trợ trực tiếp</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--solution of unica-->
        <div class="row pe-5 ps-5 mb-5">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 pe-5 ps-5">
                <a class="child_solution_unica" href="https://acabiz.vn/?ref=unica">
                    <div class="card">
                        <img class="card-img-top" src="https://unica.vn/media/images_v2018/hb-edu.jpg" alt="Card image cap">
                        <div class="card-body" style="height: 100px">
                            <h5 class="card-title">Edubit.vn - Ai cũng có thể dạy học online</h5>
                            <p class="card-text">Giải pháp elearning giúp tại bài giảng, bài trắc nghiệm online chỉ với 1 click chuột</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 pe-5 ps-5">
                <a class="child_solution_unica" href="https://acabiz.vn/?ref=unica">   
                    <div class="card">
                        <img class="card-img-top" src="https://unica.vn/media/images_v2018/hb-aca.jpg" alt="Card image cap">
                        <div class="card-body" style="height: 100px">
                            <h5 class="card-title">Acabiz - Giải pháp đào tạo nội bộ cho doanh nghiệp</h5>
                            <p class="card-text">Nâng cao năng lực đội ngũ với nền tảng Acabiz và hơn 500 khoá học chọn lọc từ Unica</p>
                        </div>
                    </div>
                </a>
            </div>
        </div>

        <!--banner footer-->
        <div style="color: white;">
            <div class="card text-center">
                <div class="card-body banner_footer">
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
        <script>
            document.getElementById("logoutLink").onclick = function () {
                document.getElementById("logoutForm").submit();
            };

            var auto_refresh = setInterval(
                    function () {
                    }, 10);

        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
