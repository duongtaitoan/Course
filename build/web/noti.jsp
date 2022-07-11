<%-- 
    Document   : noti.jsp
    Created on : Apr 19, 2022, 12:05:24 AM
    Author     : duong
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

        <!--data table-->
        <c:if test="${LIST_NO != null}">
            <c:if test="${not empty LIST_NO}">
                <c:set var="context" value="${pageContext.request.contextPath}" />
                <div class="mt-5 mb-5 shadow-lg p-3 bg-body rounded container">
                    <div class="col">
                        <h3 class="ps-5">
                            <strong>
                                <i class="fa-solid fa-bell"></i>  Thông Báo
                            </strong>
                        </h3>
                    </div>
                    <hr class="mt-2"/>
                    <div class="row mt-4 mb-1">
                        <div class="col-8"><h3><strong>Tiêu Đề</strong></h3></div>
                        <div class="col-2 ps-5"><h3><strong>Người Gửi</strong></h3></div>
                        <div class="col-2 ps-5"><h3><strong>Ngày Gửi</strong></h3></div>
                        <div class="d-grid gap-2">
                            <c:forEach items="${LIST_NO}" var="noti">
                                <form action="NotiDetailsController">
                                    <button class="btn btn-light shadow-sm border-1" 
                                            style="width: 100%; border: none; background: aliceblue">
                                        <input type="hidden" value="${noti.notiID}" name="NOTI_ID">
                                        <div class="row">
                                            <div class="col-8">${noti.content}</div>
                                            <div class="col-2">${noti.email}</div>
                                            <div class="col-2">${noti.date}</div>
                                        </div>
                                    </button>
                                </form>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${empty LIST_NO}">
                <h3 class="text-black text-center mt-5">Not found notification <i class="fa-solid fa-face-frown-open"></i></h3>
                </c:if>
            </c:if>
        <!--libraries of bootstrap-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    </body>
</html>
