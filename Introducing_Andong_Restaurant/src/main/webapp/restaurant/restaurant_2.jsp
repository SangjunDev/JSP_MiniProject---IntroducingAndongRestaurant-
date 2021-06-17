<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   String sessionId = (String) session.getAttribute("sessionId");
%>
<!DOCTYPE jsp>
<jsp lang="en">

<head>
    <title>AND Yummy :: Restaurant :: Anu</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="../assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.ico">

    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/templatemo.css">
    <link rel="stylesheet" href="../assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="../assets/css/fontawesome.min.css">
<!--
    
TemplateMo 559 AND Yummy restaurant

https://templatemo.com/tm-559-AND Yummy-restaurant

-->
</head>

<body>

    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:kisj20@naver.com">kisj20@naver.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-2929-1639">010-2992-1639</a>
                </div>
                <div>
                    <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->


    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="../index.jsp">
                AND Yummy
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="../index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../team/team.jsp">Team</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../restaurant/restaurant.jsp">Restaurant</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../board/board.jsp">Board</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <!--<a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a> 
                    
                      <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
                    </a>
                    -->
                    <ul >
                     <c:choose>
                     <c:when test="${empty sessionId}">
                        <a class="nav-icon position-relative text-decoration-none" href="../login/login.jsp">
                     </c:when>
                     <c:otherwise>
                        <a class="nav-icon position-relative text-decoration-none" href="../login/updateMember.jsp">
                     </c:otherwise>
                     </c:choose>
                  </ul>
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                           <c:choose>
                     <c:when test="${empty sessionId}">
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"><a href="../login/login.jsp">login</a></span>
                     </c:when>
                     <c:otherwise>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"><a href="../login/logoutMember.jsp">logout</a></span>
                     </c:otherwise>
                     </c:choose>
                
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->

    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>



    <!-- Start Content -->
    <div class="container py-5">
        <div class="row">

            <div class="col-lg-3">
                <h1 class="h2 pb-4">Categories</h1>
                <ul class="list-unstyled templatemo-accordion">
                    <li class="pb-3">
					<p class="text-center">
                    <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="restaurant.jsp">
                                                	안동대
                        </a>
                    </p>
                    </li>
                    <li class="pb-3">
					<p class="text-center">
                    <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="restaurant1.jsp">
                                                	시내
                        </a>
                        </p>
                    </li>
                    <li class="pb-3">
					<p class="text-center">
                    <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="restaurant2.jsp">
                                                옥동
                        </a>
                      </p>
                    </li>
                </ul>
            </div>
<body>
 <div class="col-lg-9">
                <div class="row">
                    <div class="col-md-6">
                       
                    </div>
                    <div class="col-md-6 pb-4">
                        <div class="d-flex">
                            
                        </div>
                    </div>
                </div>
                
					<div class="row">
					<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/46일미닭갈비.jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <class="h3 text-decoration-none">13. 일미닭갈비</a>
                            </div>
                        </div>
                    </div>

<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/47신전떡볶이.jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <class="h3 text-decoration-none">14. 신전떡볶이</a>
                            </div>
                        </div>
                    </div>

<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/48더 바삭.png">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <class="h3 text-decoration-none">15. 더 바삭</a>
                            </div>
                        </div>
                    </div>

<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/49떡볶이 포차 분식센터.jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <class="h3 text-decoration-none">16. 떡볶이 포차 분식센터</a>
                            </div>
                        </div>
                    </div>

<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/50바베또피자카페.jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <class="h3 text-decoration-none">17. 바베또피자카페</a>
                            </div>
                        </div>
                    </div>

<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/51사랑드림밥집.jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <class="h3 text-decoration-none">18. 사랑드림밥집</a>
                            </div>
                        </div>
                    </div>

<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/52파닭에파무쳐.png">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <class="h3 text-decoration-none">19. 파닭에파무쳐</a>
                            </div>
                        </div>
                    </div>

<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/53깜닥깜닭.PNG">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <class="h3 text-decoration-none">20. 깜닥깜닭</a>
                            </div>
                        </div>
                    </div>

<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/54피오르달리조 본점.jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <class="h3 text-decoration-none">21. 피오르달리조 본점</a>
                            </div>
                        </div>
                    </div>

<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/55지지고.jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <class="h3 text-decoration-none">22. 지지고</a>
                            </div>
                        </div>
                    </div>

<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/56굽용이두마리치킨.PNG">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <class="h3 text-decoration-none">23. 굽용이두마리치킨</a>
                            </div>
                        </div>
                    </div>

<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="../assets/img/57삼촌네족막.PNG">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <class="h3 text-decoration-none">24. 삼촌네족막</a>
                            </div>
                        </div>
                    </div>



<%@ include file="include_anu_2.jsp" %>
            
                    
                </div>
                <div div="row">
                    <ul class="pagination pagination-lg justify-content-end">
                        <li class="page-item">
                            <a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="restaurant.jsp" tabindex="-1">1</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="restaurant_2.jsp">2</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="restaurant_3.jsp">3</a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
    <!-- End Content -->

  


    <!-- Start Footer -->
    <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3 border-light logo">AND Yummy </h2>
                    <ul class="list-unstyled text-light footer-link-list">
                           <li>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                            안동대학교 인공지능 1팀 프로젝트
                        </li>
                        <li>
                            <i class="fa fa-phone fa-fw"></i>
                            <a class="text-decoration-none" href="tel:010-4636-2017">민성준 010-4636-2017</a>
                        </li>
                        <li>
                            <i class="fa fa-phone fa-fw"></i>
                            <a class="text-decoration-none" href="tel:010-2992-1639">김상준 010-2992-1639</a>
                        </li>
                        <li>
                            <i class="fa fa-phone fa-fw"></i>
                            <a class="text-decoration-none" href="tel:010-3453-6220">김은철 010-3453-6220</a>
                        </li>
                        <li>
                            <i class="fa fa-phone fa-fw"></i>
                            <a class="text-decoration-none" href="tel:010-4532-7911">이치형 010-4532-7911</a>
                        </li>
                        
                        <!--  
                        <li>
                            <i class="fa fa-envelope fa-fw"></i>
                            <a class="text-decoration-none" href="mailto:kisj20@naver.com">kisj20@naver.com</a>
                        </li>
                        -->
                    </ul>
                </div>

                

            </div>

           

        <div class="w-100 bg-black py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-12">
                        <p class="text-left text-light">
                            Copyright &copy; 2021 Project 1 Team | Designed by <a
                        rel="sponsored" href="https://templatemo.com" target="_blank">TemplateMo</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!-- End Footer -->

    <!-- Start Script -->
    <script src="../assets/js/jquery-1.11.0.min.js"></script>
    <script src="../assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="../assets/js/bootstrap.bundle.min.js"></script>
    <script src="../assets/js/templatemo.js"></script>
    <script src="../assets/js/custom.js"></script>
    <!-- End Script -->
</body>

</jsp>