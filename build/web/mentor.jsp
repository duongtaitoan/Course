<%-- 
    Document   : mentor.jsp
    Created on : Apr 26, 2022, 2:20:47 PM
    Author     : duong
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet">
        <!--cdn of bootstrap-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/9d281e3188.js" crossorigin="anonymous"></script>
        <!--icon of font awesome-->
        <link href="/your-path-to-fontawesome/css/fontawesome.css" rel="stylesheet">
        <link href="/your-path-to-fontawesome/css/brands.css" rel="stylesheet">
        <link href="/your-path-to-fontawesome/css/solid.css" rel="stylesheet">
        <title>Mentor page</title>
        <style>
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
                        <li class="nav-item col-sm-3 pe-4 ps-4">
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

        <!--list mentor-->
        <div class="row pe-5 ps-5 mt-5 mb-5">
            <div class="w-100 ps-5 pe-5 mt-2">
                <h1>Danh Sách Giảng Viên</h1>
            </div
            <!--list mentor-->
            <div class="row pe-5 ps-5 mb-5">
                <c:if test="${LIST_MENTOR != null}">
                    <c:if test="${not empty LIST_MENTOR}">
                        <c:set var="context" value="${pageContext.request.contextPath}" />
                        <c:forEach items="${LIST_MENTOR}" var="mentor">
                            <div class="col-lg-3 col-md-6 mt-5 mb-4 mb-lg-0">
                                <form  method="POST" action="MentorDetailsController">
                                    <button class="btn-outline-light pt-1 pb-1" style="border: none">
                                        <div class="card rounded shadow-sm border-1">
                                            <div class="card-body p-4 nav-link active" style="color: black">
                                                <input type="hidden" name="keyMentor" value="${mentor.mentorID}">
                                                <img src="${mentor.image}" alt="" class="img-fluid d-block mx-auto mb-3">
                                                <h5 class="text-center">${mentor.mentorName}</h5>
                                                <hr/>
                                                <div class="row ps-3">
                                                    <h7>${mentor.mentorContent}</h7>
                                                </div>
                                            </div>
                                        </div>
                                    </button>
                                </form>
                            </div>
                        </c:forEach>
                    </c:if>
                    <c:if test="${empty LIST_MENTOR}">
                        <h3 class="text-black text-center mt-5">Không tìm thấy giảng viên ${NAME_COURSE} <i class="fa-solid fa-face-frown-open"></i></h3>
                        </c:if>
                    </c:if>
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
    </body>
</html>
