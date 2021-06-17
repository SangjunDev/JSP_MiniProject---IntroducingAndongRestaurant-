<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   String sessionId = (String) session.getAttribute("sessionId");
%>
<!DOCTYPE jsp>
<jsp lang="en">

<head>
<title>AND Yummy :: Team</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="../assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets/css/templatemo.css">
<link rel="stylesheet" href="../assets/css/custom.css">
<link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="../assets/css/owl.theme.default.min.css">
<link rel="stylesheet" href="../assets/css/owl.theme.default.min.css">
<link rel="stylesheet" href="../assets/css/jquery.fancybox.min.css">

<link rel="stylesheet" href="../assets/css/bootstrap-datepicker.css">

<link rel="stylesheet" href="../assets/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="../assets/css/aos.css">

<link rel="stylesheet" href="../assets/css/style.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="../assets/css/fontawesome.min.css">
<!--
    
TemplateMo 559 AND Yummy Shop

https://templatemo.com/tm-559-AND Yummy-shop

-->
</head>

<body>
	<!-- Start Top Nav -->
	<nav
		class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block"
		id="templatemo_nav_top">
		<div class="container text-light">
			<div class="w-100 d-flex justify-content-between">
				<div>
					<i class="fa fa-envelope mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none"
						href="mailto:kisj20@naver.com">kisj20@naver.com</a> <i
						class="fa fa-phone mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none"
						href="tel:010-2929-1639">010-2992-1639</a>
				</div>
				<div>
					<a class="text-light" href="https://fb.com/templatemo"
						target="_blank" rel="sponsored"><i
						class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a> <a
						class="text-light" href="https://www.instagram.com/"
						target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
					<a class="text-light" href="https://twitter.com/" target="_blank"><i
						class="fab fa-twitter fa-sm fa-fw me-2"></i></a> <a class="text-light"
						href="https://www.linkedin.com/" target="_blank"><i
						class="fab fa-linkedin fa-sm fa-fw"></i></a>
				</div>
			</div>
		</div>
	</nav>
	<!-- Close Top Nav -->


	<!-- Header -->
	<nav class="navbar navbar-expand-lg navbar-light shadow">
		<div
			class="container d-flex justify-content-between align-items-center">

			<a class="navbar-brand text-success logo h1 align-self-center"
				href="../index.jsp"> AND Yummy </a>

			<button class="navbar-toggler border-0" type="button"
				data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div
				class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
				id="templatemo_main_nav">
				<div class="flex-fill">
					<ul
						class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
						<li class="nav-item"><a class="nav-link" href="../index.jsp">Home</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="team.jsp">Team</a>
						</li>
						<li class="nav-item"><a class="nav-link"
							href="../restaurant/restaurant.jsp">Restaurant</a></li>
						<li class="nav-item"><a class="nav-link"
							href="../board/board.jsp">Board</a></li>
					</ul>
				</div>
				<div class="navbar align-self-center d-flex">
					<div
						class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
						<div class="input-group">
							<input type="text" class="form-control" id="inputMobileSearch"
								placeholder="Search ...">
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
	<div class="modal fade bg-white" id="templatemo_search" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="w-100 pt-1 mb-5 text-right">
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<form action="" method="get"
				class="modal-content modal-body border-0 p-0">
				<div class="input-group mb-2">
					<input type="text" class="form-control" id="inputModalSearch"
						name="q" placeholder="Search ...">
					<button type="submit"
						class="input-group-text bg-success text-light">
						<i class="fa fa-fw fa-search text-white"></i>
					</button>
				</div>
			</form>
		</div>
	</div>



	<section class="bg-success py-5">
		<div class="container">
			<div class="row align-items-center py-5">
				<div class="col-md-8 text-white">
					<h1>AND</h1>
					<br>
					<p>한국품질재단 혁신성장 청년인재 집중양성 [과정2. 프로젝트 기반의 인공지능 개발자 양성] 
					<br>안동대학교 인공지능 1팀 AND를 소개합니다.</p>
				</div>
				<div class="col-md-4">
					<img src="../assets/img/인공지능-removebg-preview.png" alt="About Hero">
				</div>
			</div>
		</div>
		<!-- Close Banner -->
	</section>


	<!-- Start Section -->
	<section class="site-section border-bottom" id="team-section">
		<div class="container">
			<div class="row text-center pt-5 pb-3">
				<div class="col-lg-6 m-auto">
					<h1 class="h1">Our Team</h1>
					<p></p>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-md-8 col-lg-6 mb-8 mb-lg-0" data-aos="fade"
					data-aos-delay="100">
					<div class="person text-center">
						<br> <br> <img
							src="../assets/img/mm.jpg"
							class="rounded-circle img-fluid border w-50 mb-50"> <br>
						<br>
						<h3>민성준</h3>
						<p class="position text-muted">팀장</p>
						<p class="mb-4">기계자동차공학과입니다.</p>

						
						

					</div>
				</div>
				<div class="col-md-8 col-lg-6 mb-8 mb-lg-0" data-aos="fade"
					data-aos-delay="200">
					<div class="person text-center">
						<br> <br> <img
							src="../assets/img/김상준.jpg"
							class="rounded-circle img-fluid border w-50 mb-50"> <br>
						<br>
						<h3>김상준</h3>
						<p class="position text-muted">팀원</p>
						<p class="mb-4">정보통신공학과입니다.</p>


					</div>
				</div>
				<br> <br>
				<div class="col-md-8 col-lg-6 mb-8 mb-lg-0" data-aos="fade"
					data-aos-delay="300">
					<div class="person text-center">
						<br> <br> <img
							src="../assets/img/김은철.jpg"
							class="rounded-circle img-fluid border w-50 mb-50"> <br>
						<br>
						<h3>김은철</h3>
						<p class="position text-muted">팀원</p>
						<p class="mb-4">정보통계학과입니다.</p>

						


					</div>
				</div>
				<div class="col-md-8 col-lg-6 mb-8 mb-lg-0" data-aos="fade"
					data-aos-delay="400">
					<div class="person text-center" style="word-break: break-all">
						<br> <br> <img
							src="../assets/img/이치형.jpg"
							class="rounded-circle img-fluid border w-50 mb-50"> <br>
						<br>
						<h3>이치형</h3>
						<p class="position text-muted">팀원</p>
						<p class="mb-4">정보통신공학과입니다.</p>


					</div>
				</div>
				
	</section>
	<!-- End Section -->

	<!-- Start Section -->
	<section class="container py-5">
		<div class="row text-center pt-5 pb-3">
			<div class="col-lg-6 m-auto">
				<h1 class="h1">Our Project</h1>
				<p></p>
			</div>
		</div>
		
		<br><br>
		<div class="container">
		<div class="row">

				<div class="col-md-6 col-lg-3 pb-5" 
					data-aos-delay="200">
				<div>
					<div class="h1 text-success text-center">
						
					</div>
					<h2 class="h5 mt-4 text-center"> </h2>
					<h3 class="h5 mt-4 text-center"> </h3>
					<h4 class="h5 mt-4 text-center"> </h4>
				</div>
			</div>
  
			<div class="col-md-6 col-lg-3 pb-5 " data-aos="fade"
					data-aos-delay="100" >
				<div class="h-100 py-5 services-icon-wap shadow">
					<div class="h1 text-success text-center">
						<i class="fas fa-won-sign"></i>
					</div>
					<h2 class="h5 mt-4 text-center">주식 시뮬레이션 <br> (Stock Simulation) </h2>
					<h3 class="h5 mt-4 text-center"> 첫번째 프로젝트(2021.05.07~11)</h3>
					<h4 class="h5 mt-4 text-center"> JAVA Class</h4>
				</div>
			</div>

			<div class="col-md-6 col-lg-3 pb-5" data-aos="fade"
					data-aos-delay="200">
				<div class="h-100 py-5 services-icon-wap shadow">
					<div class="h1 text-success text-center">
						<i class="fas fa-utensils"></i>
					</div>
					<h2 class="h5 mt-4 text-center">안동 음식점 소개 <br> (Andong Restaurant)</h2>
					<h3 class="h5 mt-4 text-center"> 두번째 프로젝트(2021.05.26~31)</h3>
					<h4 class="h5 mt-4 text-center"> JSP Class</h4>
				</div>
			</div>
			
			<div class="col-md-6 col-lg-3 pb-5" 
					data-aos-delay="200">
				<div>
					<div class="h1 text-success text-center">
						
					</div>
					<h2 class="h5 mt-4 text-center"></h2>
					<h3 class="h5 mt-4 text-center"></h3>
					<h4 class="h5 mt-4 text-center"></h4>
				</div>
			</div>
			

</div>

		</div>
	</section>
	<!-- End Section -->




	<!-- Start Footer -->
	<footer class="bg-dark" id="tempaltemo_footer">
		<div class="container">
			<div class="row">

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-success border-bottom pb-3 border-light logo">AND
						Yummy</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><i class="fas fa-map-marker-alt fa-fw"></i> 안동대학교 인공지능 1팀
							프로젝트</li>
						<li><i class="fa fa-phone fa-fw"></i> <a
							class="text-decoration-none" href="tel:010-4636-2017">민성준
								010-4636-2017</a></li>
						<li><i class="fa fa-phone fa-fw"></i> <a
							class="text-decoration-none" href="tel:010-2992-1639">김상준
								010-2992-1639</a></li>
						<li><i class="fa fa-phone fa-fw"></i> <a
							class="text-decoration-none" href="tel:010-3453-6220">김은철
								010-3453-6220</a></li>
						<li><i class="fa fa-phone fa-fw"></i> <a
							class="text-decoration-none" href="tel:010-4532-7911">이치형
								010-4532-7911</a></li>

						<!--  
                        <li>
                            <i class="fa fa-envelope fa-fw"></i>
                            <a class="text-decoration-none" href="mailto:kisj20@naver.com">kisj20@naver.com</a>
                        </li>
                        -->
					</ul>
				</div>
				<!-- 
                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">Products</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="#">Luxury</a></li>
                        <li><a class="text-decoration-none" href="#">Sport Wear</a></li>
                        <li><a class="text-decoration-none" href="#">Men's Shoes</a></li>
                        <li><a class="text-decoration-none" href="#">Women's Shoes</a></li>
                        <li><a class="text-decoration-none" href="#">Popular Dress</a></li>
                        <li><a class="text-decoration-none" href="#">Gym Accessories</a></li>
                        <li><a class="text-decoration-none" href="#">Sport Shoes</a></li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">Further Info</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="#">Home</a></li>
                        <li><a class="text-decoration-none" href="#">About Us</a></li>
                        <li><a class="text-decoration-none" href="#">Shop Locations</a></li>
                        <li><a class="text-decoration-none" href="#">FAQs</a></li>
                        <li><a class="text-decoration-none" href="#">Contact</a></li>
                    </ul>
                </div>
                -->

			</div>

			<div class="row text-light mb-4">
				<div class="col-12 mb-3">
					<div class="w-100 my-3 border-top border-light"></div>
				</div>
				<div class="col-auto me-auto">
					<ul class="list-inline text-left footer-icons">
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="http://facebook.com/"><i
								class="fab fa-facebook-f fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://www.instagram.com/"><i
								class="fab fa-instagram fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://twitter.com/"><i
								class="fab fa-twitter fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://www.linkedin.com/"><i
								class="fab fa-linkedin fa-lg fa-fw"></i></a>
						</li>
					</ul>
				</div>
				<!--
                  
                <div class="col-auto">
                    <label class="sr-only" for="subscribeEmail">Email address</label>
                    <div class="input-group mb-2">
                        <input type="text" class="form-control bg-dark border-light" id="subscribeEmail" placeholder="Email address">
                        <div class="input-group-text btn-success text-light">Subscribe</div>
                    </div>
                </div> -->
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
	<script src="assets/js/jquery-1.11.0.min.js"></script>
	<script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/templatemo.js"></script>
	<script src="assets/js/custom.js"></script>
	<script src="..bootstrap-3.1.1-dist/js/jquery-3.3.1.min.js"></script>
	<script src="..bootstrap-3.1.1-dist/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="..bootstrap-3.1.1-dist/js/jquery-ui.js"></script>
	<script src="..bootstrap-3.1.1-dist/js/popper.min.js"></script>
	<script src="..bootstrap-3.1.1-dist/js/bootstrap.min.js"></script>
	<script src="..bootstrap-3.1.1-dist/js/owl.carousel.min.js"></script>
	<script src="..bootstrap-3.1.1-dist/js/jquery.stellar.min.js"></script>
	<script src="..bootstrap-3.1.1-dist/js/jquery.countdown.min.js"></script>
	<script src="..bootstrap-3.1.1-dist/js/bootstrap-datepicker.min.js"></script>
	<script src="..bootstrap-3.1.1-dist/js/jquery.easing.1.3.js"></script>
	<script src="..bootstrap-3.1.1-dist/js/aos.js"></script>
	<script src="..bootstrap-3.1.1-dist/js/jquery.fancybox.min.js"></script>
	<script src="..bootstrap-3.1.1-dist/js/jquery.sticky.js"></script>
	<script src="..bootstrap-3.1.1-dist/js/main.js"></script>
	<!-- End Script -->
</body>

</jsp>