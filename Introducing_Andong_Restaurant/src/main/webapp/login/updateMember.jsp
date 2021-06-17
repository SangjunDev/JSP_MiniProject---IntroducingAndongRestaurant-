<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE jsp>
<jsp lang="en">

<head>
<title>AND Yummy :: update</title>
<%
String sessionId = (String) session.getAttribute("sessionId");
%>
<sql:setDataSource var="dataSource"
	url= "jdbc:oracle:thin:@127.0.0.1:1521:xe"
	driver="oracle.jdbc.driver.OracleDriver" user="scott" password="tiger" />

<sql:query dataSource="${dataSource}" var="resultSet">
   SELECT * FROM PEOPLE WHERE ID=?
   <sql:param value="<%=sessionId%>" />
</sql:query>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="../assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets/css/templatemo.css">
<link rel="stylesheet" href="../assets/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="../assets/css/fontawesome.min.css">

<link rel="stylesheet" href="../assets/css/singup_main.css">
<!-- --------------------------------------------------- -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="assets/css/fontawesome.min.css">
<link rel="icon" type="image/png" href="../assets/img/icons/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="../assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../assets/wenfonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="../assets/wenfonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../assets/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="../assets/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="../assets/vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css"
	href="../assets/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="../assets/vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="../assets/css/util.css">
<link rel="stylesheet" type="text/css" href="../assets/css/main.css">
<!-- Sign up -->


</head>
<body onload="init()"> 

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
						<li class="nav-item"><a class="nav-link"
							href="../team/team.jsp">Team</a></li>
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
				</div>
			</div>

		</div>



	</nav>
	
	<c:forEach var="row" items="${resultSet.rows}">
	<c:set var="password" value="${row.password}"/>
	<c:set var="phone" value="${row.phone }"/>
	<c:set var="mail" value="${row.mail}" />
	<c:set var="mail1" value="${mail.split('@')[0]}" />
	<c:set var="mail2" value="${mail.split('@')[1]}" />
	<c:set var="address" value="${row.address}" />
	<c:set var="zipcode" value="${address.split('/')[0]}"/>
	<c:set var="address1" value="${address.split('/')[1]}"/>
	<c:set var="address2" value="${address.split('/')[2]}"/>
	<c:set var="birth" value="${row.birth }" />
	<c:set var="year" value="${birth.split('/')[0]}" />
	<c:set var="month" value="${birth.split('/')[1]}" />
	<c:set var="day" value="${birth.split('/')[2]}" /> 

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form name="newMember" action="processUpdateMember.jsp" method="post"
					onsubmit="return checkForm()">
					<span class="login100-form-title p-b-26"> 회원수정 </span> <span
						class="login100-form-title p-b-48"> <i
						class="zmdi zmdi-font"></i>
					</span>
					
					<div class="wrap-input100 validate-input">
					
						<input name="password" type="text" placeholder="password"
						value="<c:out value='${password}'/>">

					</div>

					<div class="wrap-input100 validate-input">
						<input name="password_confirm" type="text"
							placeholder="password confirm">
					</div>

					<div class="wrap-input100 validate-input">
						<input name="name" type="text" placeholder="name"
						value="<c:out value='${row.name }'/>">
					</div>

					<div class="wrap-input100 validate-input">
						<input name="phone" type="text" placeholder="phone" 
						value="<c:out value='${phone}'/>">
					</div>

					<div class="wrap-input100 validate-input">
					<c:set var="gender" value="${row.gender}" />
						<input name="gender" type="radio" value="남" <c:if test="${gender.equals('남')}"> <c:out value="checked" /> </c:if>> 남 <input
							name="gender" type="radio" value="여" <c:if test="${gender.equals('여')}"> <c:out value="checked" /> </c:if>>여
					</div>

					<div class="wrap-input100 validate-input">
						<input type="text" name="birthyy" maxlength="4"
							placeholder="년(4자)" size="6" value="${birth.split('/')[0]}"> 
							<select name="birthmm" id="birthmm">
							<option value="">월</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select> <input type="text" name="birthdd" maxlength="2" placeholder="일"
							size="4" value="${day}">
					</div>

					<div class="wrap-input100 validate-input">
						<input type="text" name="mail1" maxlength="10" value="${mail1}" placeholder="email">@
						<select name="mail2" id="mail2">
						<option>naver.com</option>
						<option>daum.net</option>
						<option>gmail.com</option>
						<option>nate.com</option>
					</select>
						
					</div>

					<div class="wrap-input100 validate-input">
						<input type="text" name="zipcode" id="zipcode" readonly value="${zipcode}"> <input
							type="button" value="주소찾기" onclick="DaumPostcode()"
							placeholder="Zip code">

					</div>
							
					<div class="wrap-input100 validate-input">
						<input type="text" name="address1" id="address1" size="45"
							readonly placeholder="default address" value="${address1}">
					</div>

					<div class="wrap-input100 validate-input">
						<input type="text" name="address2" id="address2" size="45"
							placeholder="remaining addresses" value="${address2}">
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button type="submit" class="login100-form-btn"
								onclick="signupcommit()">수정하기</button>	
					</div>
					</div>
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button type="button" class="login100-form-btn"
								onclick="deletesc()">회원탈퇴</button>	
					</div>
					</div>
				</form>
			</div>

			<!-- 다음 주소 API -->
			<div id="wrap"
				style="display: none; border: 1px solid; width: 500px; height: 300px; margin: 500px 10px; position: relative">
				<img
					src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
					id="btnFoldWrap"
					style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
					onclick="foldDaumPostcode()" alt="접기 버튼">
			</div>
			<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
			<script>
				// 우편번호 찾기 화면을 넣을 element 
				var element_wrap = document.getElementById('wrap');
				function foldDaumPostcode() { // iframe을 넣은 element를 안보이게 한다. 
					element_wrap.style.display = 'none';
				}
				function DaumPostcode() { // 현재 scroll 위치를 저장해놓는다. 
					var currentScroll = Math.max(document.body.scrollTop,
							document.documentElement.scrollTop);
					new daum.Postcode(
							{
								oncomplete : function(data) { // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분. // 각 주소의 노출 규칙에 따라 주소를 조합한다. // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다. 
									var fullAddr = data.address; // 최종 주소 변수 
									var extraAddr = ''; // 조합형 주소 변수 // 기본 주소가 도로명 타입일때 조합한다. 
									if (data.addressType === 'R') { //법정동명이 있을 경우 추가한다. 
										if (data.bname !== '') {
											extraAddr += data.bname;
										} // 건물명이 있을 경우 추가한다. 
										if (data.buildingName !== '') {
											extraAddr += (extraAddr !== '' ? ', '
													+ data.buildingName
													: data.buildingName);
										} // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다. 
										fullAddr += (extraAddr !== '' ? ' ('
												+ extraAddr + ')' : '');
									} // 우편번호와 주소 정보를 해당 필드에 넣는다. 
									document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용 
									document.getElementById('address1').value = fullAddr; // iframe을 넣은 element를 안보이게 한다. // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.) element_wrap.style.display = 'none'; // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다. 
									document.body.scrollTop = currentScroll;
									$('#address2').focus();
								}, // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다. 
								onresize : function(size) {
									element_wrap.style.height = size.height
											+ 'px';
								},
								width : '100%',
								height : '100%'
							}).embed(element_wrap); // iframe을 넣은 element를 보이게 한다. 
					element_wrap.style.display = 'block';
				}
			</script>
			<!-- 주소 끝 -->
		</div>
	</div>
	</c:forEach>
	<!-- ------------------------------------------------------------------------------------- -->


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
</body>
</jsp>
<script type="text/javascript">
	function init() {
		setComboMailValue("${mail2}");
		setComboBirthValue("${month}");
	}

	function setComboMailValue(val) {
		var selectMail = document.getElementById('mail2');
		for (i = 0, j = selectMail.length; i < j; i++) {
			if (selectMail.options[i].value == val) {
				selectMail.options[i].selected = true; 
				break;
			}
		}
	}
	function setComboBirthValue(val) {
		var selectBirth = document.getElementById('birthmm'); 
		for (i = 0, j = selectBirth.length; i < j; i++){
			if (selectBirth.options[i].value == val){
				selectBirth.options[i].selected = true; 
				break;
			}
		}
	}
	function checkForm() {
		

		if (!document.newMember.password.value) {
			alert("비밀번호를 입력하세요.");
			document.newMember.password.focus();
			document.newMember.password.select();
			return false;
		}

		if (document.newMember.password.value != document.newMember.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			document.newMember.password_confirm.focus();
			document.newMember.password_confirm.select();
			return false;
		}

		if (!document.newMember.phone.value) {
			alert("전화번호를 입력하세요.")
			document.newMember.phone.focus();
			document.newMember.phone.select();
			return false;
		}

		if (!document.newMember.name.value) {
			alert("이름을 입력하세요.")
			document.newMember.name.focus();
			document.newMember.name.select();
			return false;
		}
	}
	function inputIdCheck() {
		document.newMember.idDuplication.value = "idUncheck";

	}
	function checkId() {
		if (!document.newMember.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		window.name = "IDCheckForm";
		window.open("./checkMember.jsp?id=" + document.newMember.id.value,
				"IDCheck",
				"width=300, height=160, resizable =no, scrollbars=no");

	}

	function signupcommit() {
		if (document.newMember.password.value
				&& document.newMember.password_confirm.value
				&& document.newMember.phone.value
				&& document.newMember.name.value) {
			alert("수정이 완료되었습니다");
		}
	}
	
	function deletesc(){
		alert("회원탈퇴 완료되었습니다.")
		location.href="deleteMember.jsp";
	}
</script>
