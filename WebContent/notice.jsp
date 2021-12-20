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
    <style>
        
    </style>
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
									<a href="notice.jsp" class="logo" style="font-size: 20px;"><strong>경고 발생 현황</strong>  </a>
									<ul class="icons">
										<li><a href="fieldlist.jsp" class="logo"><span class="label"><strong>현장목록</strong></span></a></li>
                              			
                                        <li><a href="board_list.jsp" class="logo"><span class="label">관리일지</span></a></li>  										
									</ul>
								</header>

							<!-- Content -->
								<section>
									<!-- <header class="main">
										<h1></h1>
									</header> -->

									<div class="table-wrapper">
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th>번호</th>
                                                    <th>SAFEBOX ID</th>
                                                    <th>센서 ID</th>
                                                    <th>알림 내용 </th>
                                                    <th>확인</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>safebox1</td>
                                                    <td>sensor1</td>
                                                    <td>농도 100ppm 노출</td>
                                                    <td><a href="#" class="logo" style="outline: none; text-decoration: none;">이동</a></td>
                                                    <td><div class="col-6 col-12-small"><input type="checkbox" id="1" name="1"><label for="1"></label></div></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>safebox2</td>

                                                    <td>sensor2</td>
                                                    <td>농도 100ppm 노출</td>
                                                    <td><a href="#" class="logo" style="outline: none; text-decoration: none;">이동</a></td>
                                                    <td><div class="col-6 col-12-small"><input type="checkbox" id="2" name="2"><label for="2"></label></div></td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>safebox3</td>

                                                    <td>sensor3</td>
                                                    <td>농도 100ppm 노출</td>
                                                    <td><a href="#" class="logo" style="outline: none; text-decoration: none;">이동</a></td>
                                                    <td><div class="col-6 col-12-small"><input type="checkbox" id="3" name="3"><label for="3"></label></div></td>
                                                </tr>
                                                
                                                
                                            </tbody>
                                            
                                        </table>
                                        <div class="col-12" style="text-align: center;">
                                            <ul class="actions">
                                                <li><input type="submit" value="확인 완료" class="primary" /></li>
                                                
                                                <!-- <li><input type="reset" value="Reset" /></li> -->
                                            </ul>
                                        </div>
                                    </div>

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
										<%if(vo==null) {%>
										<li><a href="login.jsp">로그인</a></li>
										<%}else{ %>
										<li><a href="mypage.jsp">회원정보수정</a></li>
										<li><a href="LogoutServlet" class="logo"></a>로그아웃</li>
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

	</body>
</html>