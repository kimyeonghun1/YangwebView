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
			int field_seq_session = (int)session.getAttribute("field_seq_session3");
			session.setAttribute("field_seq_session_4", field_seq_session);	
			
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
									<a href="safeboxadd.jsp" class="logo" style="font-size: 20px;"><strong>SafeBox ?߰?</strong> </a>
									<ul class="icons">
										
									</ul>
								</header>

							<!-- Content -->
								<section>
									<!-- <header class="main">
										<h1></h1>
									</header> -->

									<!-- <span class="image main"><img src="images/pic11.jpg" alt="" /></span> -->

									<form method="post" action="safeboxAddService">
                                        <div class="row gtr-uniform">
                                            <div class="row gtr-uniform">
                                                <div class="col-6 col-12-xsmall">
                                                    <input type="text" name="device_name" id="device_name" value="" placeholder="???? ID" />
                                                </div>
                                                <div class="col-6 col-12-xsmall">
                                                    <input type="text" name="device_location" id="device_location" value="" placeholder="??ġ ????" />
                                                </div>
                                                
                                                
                                            <div class="col-12" style="text-align: center;">
                                                <ul class="actions" >
                                                    <li><input type="button"  onclick="safeboxadd()" value="?߰?" class="primary" style="margin-right: 10px;" ><input type="reset" value="?ʱ?ȭ" style="margin-left: 10px;"></li>
                                                    
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
										<li><a href="login.jsp">?α???</a></li>
										<%}else{ %>
										
										<li><a href="mypage.jsp">ȸ??????????</a></li>										
										<li><a href="logoutServlet" class="logo">?α׾ƿ?</a></li>
										<%} %>
									</ul>
								</nav>

							<!-- Menu -->
								<% if(vo!=null){%>
				<nav id="menu">
					<header class="major">
						<h2>???? ???? ?޴?</h2>
					</header>
					<ul>
						<li><a href="fieldlist.jsp">???? ???? </a></li>
						<li><a href="board_list.jsp">???? ????</a></li>
						<li><a href="notice.jsp">???? ?߻? ??Ȳ</a></li>

						
					</ul>
				</nav>
				<%}else{%>
				<nav id="menu">
					<header class="major">
						<h2>???? ???? ?޴?</h2>
					</header>
					<ul>
						<li><a href="#">?α????? ?ʿ??մϴ?. </a></li>
						

						
					</ul>
				</nav>
				<%} %>

							

							<!-- Section -->
								<section>
									<header class="major">
										<h2>?? ????</h2>
									</header>
									<ul class="contact">
										<% if(vo!=null){%>
										<li class="icon solid fa-envelope"><%=vo.getAdmin_email() %></li>
										<li class="icon solid fa-phone"><%=vo.getAdmin_phone() %></li>
										<li class="icon solid fa-home"><%=vo.getAdmin_dept() %></li>
										<%}else{ %>
										<li class="icon solid fa-envelope">?̸???</li>
										<li class="icon solid fa-phone">??ȭ??ȣ</li>
										<li class="icon solid fa-home">?Ҽ?</li>
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
	function safeboxadd() {
		
		let device_name = document.getElementById("device_name");
		let device_location = document.getElementById("device_location");
		
		
		//if(field_name!="" && field_addr != ""){
			
			$.ajax({
				
				type : "post", //?????? ???? ??û ????
				data : {"device_name" : device_name.value,
					"device_location" : device_location.value
					}, //?????ϴ? ??????
				url : "safeboxAddService", //?????͸? ????, ??û?ϴ? ???? ??????
				dataType : "text", 
				success : function(data){ //???? ????
					
					if(data!="0"){
						alert("???? ?߰? ?Ϸ??Ǿ????ϴ?.");
						window.location.href = "safeboxEdit.jsp"; 
					}else{
						alert("???? ?߰? ???? ?Ǿ????ϴ?.");
						window.location.href = "safeboxadd.jsp"; 
					}
						
					
				},
				error : function(){ //???? ????
					
					
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
						let check = confirm("????????  ???? ??Ȳ?? Ȯ?????ּ???!!  ????????");
						if(check){
							window.location.href = "notice.jsp";
							
						}							
					}
				},
				error : function(){ //???? ????
				}
			});
			
			  $.ajax({
				type : "get", 
				url : "transeService", 
				dataType : "text",
				data : {'data' : '???? ????'},
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