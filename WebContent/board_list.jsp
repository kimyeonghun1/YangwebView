<%@page import="com.model.boardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.boardDAO"%>
<%@page import="com.model.adminDAO"%>
<%@page import="com.model.adminVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn1111
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Generic - Editorial by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css"/>
		<link rel="stylesheet" href="assets/css_board/css.css">
	</head>
	<style>
		.pagination{
			text-align: center;
		}
		.board_wrap {
			position: relative;
		}
		.count{
			position: relative;
		}
	
	</style>
	<body class="is-preload">
			<%
			//���� �α��� �������� Ȯ�� (vo == null > �α��� ���� ���� ����)
			adminVO vo = (adminVO)session.getAttribute("admin");
			adminDAO dao = new adminDAO();
			
			boardDAO boarddao = new boardDAO();
		 	ArrayList<boardVO> boardall = boarddao.boardArrayList();
			%>
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="safeboxcheck.jsp" class="logo" style="font-size: 20px;"><strong>���� ���� ���</strong></a>
									<ul class="icons">
									<li><a href="notice.jsp" class="logo"><span class="label"><strong>���߻���Ȳ</strong></span></a></li>
										<li><a href="fieldlist.jsp" class="logo"><span class="label">������</span></a></li>
                              			
                                          										
									</ul>
								</header>

							<!-- Content -->
								<section>
									<div class="board_wrap">
										<div class="board_title">
										
											<!-- <p>���������� ������ ��Ȯ�ϰ� �ȳ��ص帳�ϴ�.</p> -->
										</div>
										<div class="board_list_wrap">
											<div class="board_list">
												<div class="top">
													<div class="num">��ȣ</div>
													<div class="title">����</div>
													<div class="writer">�۾���</div>
													<div class="date">�ۼ���</div>
													<div class="count"></div>
												</div>
												<%for(boardVO vo_board : boardall){%>
												<div>
													<div class="num"><%=vo_board.getMnt_seq() %></div>
													<% if(vo.getAdmin_id().equals(vo_board.getAdmin_id()) ){  %>
													<div class="title">
													<a href="boardEditCheckService?mnt_seq=<%=vo_board.getMnt_seq() %>"><%=vo_board.getMnt_title() %></a>
													</div>
													<%}else{ %>
													<div class="title">
													<a href="boardViewCheckService?mnt_seq=<%=vo_board.getMnt_seq() %>"><%=vo_board.getMnt_title() %></a>
													</div>
													<%} %>
													<div class="writer"><%=vo_board.getAdmin_id() %></div>
													<div class="date"><%=vo_board.getMnt_date() %></div>
													<%-- <div class="count"><a href="boardEditCheckService?mnt_seq=<%=vo_board.getMnt_seq()%>" class="button">����</a></div> --%>
												</div>
												<%}%>
											</div>
											<br><br><br>
											<div>
											<ul class="pagination">
												<li><span class="button disabled">����</span></li>
												<li><a href="#" class="page active">1</a></li>
												<li><a href="#" class="page">2</a></li>
												<li><a href="#" class="page">3</a></li>
												<li><span>&hellip;</span></li>
												<li><a href="#" class="page">8</a></li>
												<li><a href="#" class="page">9</a></li>
												<li><a href="#" class="page">10</a></li>
												<li><a href="#" class="button">����</a></li>
											</ul>
											</div>
											<ul class="pagination">
											<a href="board_write.jsp" class="button primary">���</a>
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
										<% if(vo==null){%>
										<li><a href="login.jsp">�α���</a></li>
										<%}else{ %>
										
										<li><a href="mypage.jsp">ȸ����������</a></li>										
										<li><a href="logoutServlet" class="logo">�α׾ƿ�</a></li>
										<%} %>
									</ul>
								</nav>

							<!-- Menu -->
								<% if(vo!=null){%>
				<nav id="menu">
					<header class="major">
						<h2>���� ���� �޴�</h2>
					</header>
					<ul>
						<li><a href="fieldlist.jsp">���� ��� </a></li>
						<li><a href="board_list.jsp">���� ����</a></li>
						<li><a href="notice.jsp">��� �߻� ��Ȳ</a></li>

						
					</ul>
				</nav>
				<%}else{%>
				<nav id="menu">
					<header class="major">
						<h2>���� ���� �޴�</h2>
					</header>
					<ul>
						<li><a href="#">�α����� �ʿ��մϴ�. </a></li>
						

						
					</ul>
				</nav>
				<%} %>

							<!-- Section -->
								<section>
									<header class="major">
										<h2>�� ����</h2>
									</header>
									
									<ul class="contact">
										<% if(vo!=null){%>
										<li class="icon solid fa-envelope"><%=vo.getAdmin_email() %></li>
										<li class="icon solid fa-phone"><%=vo.getAdmin_phone() %></li>
										<li class="icon solid fa-home"><%=vo.getAdmin_dept() %></li>
										<%}else{ %>
										<li class="icon solid fa-envelope">�̸���</li>
										<li class="icon solid fa-phone">��ȭ��ȣ</li>
										<li class="icon solid fa-home">�Ҽ�</li>
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
				
				function gascheck() {	
					setInterval(() => {
						$.ajax({
							type : "get", 
							/* data : {"email" : input.value}, */
							url : "gasgasCheck", 
							dataType : "text", 
							success : function(data){
								
								if(data=="1"){
									let check = confirm("�������  ���� ��Ȳ�� Ȯ�����ּ���!!  �������");
									if(check){
										window.location.href = "notice.jsp";
										
									}							
								}
							},
							error : function(){ //��� ����
							}
						});
						
						  $.ajax({
							type : "get", 
							url : "transeService", 
							dataType : "text",
							data : {'data' : '��� ����'},
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