<%-- 
    Document   : index.jsp
    Created on : Apr 19, 2022, 12:09:16 AM
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
        <title>Login page</title>
        <style>
            *{
                font-family: cursive;
                margin: 0%;
                padding: 0%;
            }
            .bgBody{
                height: 100%;
                background-color:rgba(252,209,92,100);
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
            }
            .loginHover{
                margin: 0% -0.5%;
                margin-left: 25%;
                width: 50%;
                height: 80%;
                transition: transform .5s;
                color: buttonshadow;
            }
            .loginHover .backgroudLogin:hover{
                margin: 0% 0.5%;
                color: black;
            }
        </style>
    </head>
    <body class="bgBody">
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
        
        <c:if test="${not empty ROLE}">
            <c:redirect url="index.jsp"/>
        </c:if>
        <div class="col-8 align-self-center someBlock"></div>
        
        <c:if test="${LOGIN_MSG != null}">
            <div class="m-auto alert alert-light alert-dismissible fade show text-center col-5 mt-5">
                <strong style="color:red">Error!!!</strong> ${LOGIN_MSG}
                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            </div>
        </c:if>

        <div class="pt-5">
            <div class="container mt-3">
                <div class="wrapper shadow-lg p-3 bg-body rounded loginHover">
                    <div class="backgroudLogin">
                        <div class="text-center">
                            <h2 class="page-title text-center mt-3 bold">Online shop</h2>
                        </div>
                        <div class="wrapper-content">
                            <form action="LoginController" method="POST">
                                <div class="form-group mt-2">
                                    <i class="fa-solid fa-user"></i>
                                    <label>Email</label>
                                    <input type="text" class="form-control mt-2" name="txtEmail" placeholder="teo@gmail.com" required="">
                                </div>
                                <div class="form-group mt-2">
                                    <i class="fa-solid fa-key"></i>
                                    <label>Password</label>
                                    <input type="password" class="form-control mt-2" name="txtPassword" placeholder="*****" required="">
                                </div>
                                <div class="row mt-4">
                                    <div class="col pl-2">
                                        <button  type="submit" class="btn w-100 btn-lg btn-outline-dark">Login</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--hidden alert auto 3s or user click to x-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                window.setTimeout(function () {
                    //fadeTo(speed, opacity)
                    $(".alert").fadeTo(800, 0).slideUp(1000, function () {
                        $(this).remove();
                    });
                }, 3000);
            });
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
