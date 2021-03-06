<%@page import="com.model.adminDAO"%>
<%@page import="com.model.adminVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Generic - Editorial by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload">
			<%
			//현재 로그인 상태인지 확인 (vo == null > 로그인 하지 않은 상태)
			adminVO vo = (adminVO)session.getAttribute("admin");
			adminDAO dao = new adminDAO();
			%>
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="mypage.jsp" class="logo" style="font-size: 20px;"><strong>회원 정보 수정</strong></a>
									<ul class="icons">
										<li><a href="fieldlist.jsp" class="logo"><span class="label">현장목록</span></a></li>		
										<li><a href="notice.jsp" class="logo"><span class="label"><strong>경고발생현황</strong></span></a></li>
						<li><a href="board_list.jsp" class="logo"><span
							class="label">관리일지</span></a></li>								
									</ul>
								</header>

							<!-- Content -->
								<section>
									

									<span class="image main"> * 입력하지 않은 정보는 이전 정보 그대로 유지됩니다.</span>

									<form method="post" action="#">
                                        <div class="row gtr-uniform">
                                            <div class="row gtr-uniform">
                                                <div class="col-6 col-12-xsmall">
                                                    <input type="text" name="admin_name" id="admin_name" placeholder="이름" />
                                                </div>
                                                <div class="col-6 col-12-xsmall">
                                                    <input type="email" name="admin_email" id="admin_email" placeholder="이메일" />
                                                </div>
                                                <div class="col-6 col-12-xsmall">
                                                    <input type="password" name="admin_pwd" id="admin_pwd" placeholder="비밀번호" />
                                                </div>
                                                <div class="col-6 col-12-xsmall">
                                                    <input type="text" name="admin_phone" id="admin_phone" placeholder="전화번호" />
                                                </div>   
                                           		<div class="col-12">
                                                	<input type="text" name="admin_dept" id="admin_dept" value="" placeholder="소속" />
                                           		</div>
                                           
                                            <div class="col-12" style="text-align: center;">
                                                <ul class="actions">
                                                    <li><input type="button" onclick="mypage()" value="수정" class="primary" style="margin-right: 10px;" ><input type="reset" value="초기화" style="margin-left: 10px;"></li>
                                                    
                                                </ul>
                                            </div>
                                        </div>
                                    </form>

									

								</section>

						</div>
					</div>

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							<!-- Search -->
								<section id="search" class="alt">
									<form method="post" action="#">
										<input type="text" name="query" id="query" placeholder="Search" />
									</form>
								</section>

								<nav id="menu">
									
									<ul>
										<% if(vo==null){%>
										<li><a href="login.jsp">로그인</a></li>
										<%}else{ %>
										
										<li><a href="mypage.jsp">회원정보수정</a></li>										
										<li><a href="logoutServlet" class="logo">로그아웃</a></li>
										<%} %>
									</ul>
								</nav>

							<!-- Menu -->
								<% if(vo!=null){%>
				<nav id="menu">
					<header class="major">
						<h2>현장 관리 메뉴</h2>
					</header>
					<ul>
						<li><a href="fieldlist.jsp">현장 목록 </a></li>
						<li><a href="board_list.jsp">관리 일지</a></li>
						<li><a href="notice.jsp">경고 발생 현황</a></li>

						
					</ul>
				</nav>
				<%}else{%>
				<nav id="menu">
					<header class="major">
						<h2>현장 관리 메뉴</h2>
					</header>
					<ul>
						<li><a href="#">로그인이 필요합니다. </a></li>
						

						
					</ul>
				</nav>
				<%} %>

							<!-- Section -->
								<section>
									<header class="major">
										<h2>내 정보</h2>
									</header>
									<ul class="contact">
										<% if(vo!=null){%>
										<li class="icon solid fa-envelope"><%=vo.getAdmin_email() %></li>
										<li class="icon solid fa-phone"><%=vo.getAdmin_phone() %></li>
										<li class="icon solid fa-home"><%=vo.getAdmin_dept() %></li>
										<%}else{ %>
										<li class="icon solid fa-envelope">이메일</li>
										<li class="icon solid fa-phone">전화번호</li>
										<li class="icon solid fa-home">소속</li>
										<%} %>
									</ul>
								</section>

							<!-- Footer -->
								<footer id="footer">
									<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
								</footer>

						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

<script>
			function mypage() {
				
				var admin_pwd = document.getElementById("admin_pwd");
				var admin_name = document.getElementById("admin_name");
				var admin_phone = document.getElementById("admin_phone");
				var admin_email = document.getElementById("admin_email");
				var admin_dept = document.getElementById("admin_dept");
								
				$.ajax({
					type : "post", //데이터 전송 요청 방식
					data : {
							"admin_pwd" :	admin_pwd.value,
							"admin_name" :	admin_name.value,
							"admin_phone" :	admin_phone.value,
							"admin_email" :	admin_email.value,
							"admin_dept" :	admin_dept.value
							},
					url : "updateServlet", //데이터를 전송, 요청하는 서버 페이지
					dataType : "text", //응답데이터의 형식
					success : function(data){ //통신 성공
						
						if(data=="0"){
							alert('회원 정보 수정을 다시 시도해 주세요.')
							window.location.href = "mypage.jsp"; 
						}else{
							
							alert('회원 정보 수정 완료되었습니다.')
							window.location.href = "notice.jsp"; 
						}
					},
					error : function(){ //통신 실패
					}
				});
			}
			
			function gascheck() {	
				setInterval(() => {
					$.ajax({
						type : "get", 
						/* data : {"email" : input.value}, */
						url : "gasgasCheck", 
						dataType : "text", 
						success : function(data){
							
							if(data=="1"){
								let check = confirm("※위험※  유출 현황을 확인해주세요!!  ※위험※");
								if(check){
									window.location.href = "notice.jsp";
									
								}							
							}
						},
						error : function(){ //통신 실패
						}
					});
					
					  $.ajax({
						type : "get", 
						url : "transeService", 
						dataType : "text",
						data : {'data' : '통신 성공'},
						success : function(data){ 
							console.log(data)
						},
						error : function(){
						}
					});  
				
				}, 1000);
				
			}
			gascheck();
			</script>
	</body>
</html>