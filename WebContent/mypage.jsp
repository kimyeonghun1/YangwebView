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
			//���� �α��� �������� Ȯ�� (vo == null > �α��� ���� ���� ����)
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
									<a href="mypage.jsp" class="logo" style="font-size: 20px;"><strong>ȸ�� ���� ����</strong></a>
									<ul class="icons">
										<li><a href="fieldlist.jsp" class="logo"><span class="label">������</span></a></li>		
										<li><a href="notice.jsp" class="logo"><span class="label"><strong>���߻���Ȳ</strong></span></a></li>
						<li><a href="board_list.jsp" class="logo"><span
							class="label">��������</span></a></li>								
									</ul>
								</header>

							<!-- Content -->
								<section>
									

									<span class="image main"> * �Է����� ���� ������ ���� ���� �״�� �����˴ϴ�.</span>

									<form method="post" action="#">
                                        <div class="row gtr-uniform">
                                            <div class="row gtr-uniform">
                                                <div class="col-6 col-12-xsmall">
                                                    <input type="text" name="admin_name" id="admin_name" placeholder="�̸�" />
                                                </div>
                                                <div class="col-6 col-12-xsmall">
                                                    <input type="email" name="admin_email" id="admin_email" placeholder="�̸���" />
                                                </div>
                                                <div class="col-6 col-12-xsmall">
                                                    <input type="password" name="admin_pwd" id="admin_pwd" placeholder="��й�ȣ" />
                                                </div>
                                                <div class="col-6 col-12-xsmall">
                                                    <input type="text" name="admin_phone" id="admin_phone" placeholder="��ȭ��ȣ" />
                                                </div>   
                                           		<div class="col-12">
                                                	<input type="text" name="admin_dept" id="admin_dept" value="" placeholder="�Ҽ�" />
                                           		</div>
                                           
                                            <div class="col-12" style="text-align: center;">
                                                <ul class="actions">
                                                    <li><input type="button" onclick="mypage()" value="����" class="primary" style="margin-right: 10px;" ><input type="reset" value="�ʱ�ȭ" style="margin-left: 10px;"></li>
                                                    
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
			function mypage() {
				
				var admin_pwd = document.getElementById("admin_pwd");
				var admin_name = document.getElementById("admin_name");
				var admin_phone = document.getElementById("admin_phone");
				var admin_email = document.getElementById("admin_email");
				var admin_dept = document.getElementById("admin_dept");
								
				$.ajax({
					type : "post", //������ ���� ��û ���
					data : {
							"admin_pwd" :	admin_pwd.value,
							"admin_name" :	admin_name.value,
							"admin_phone" :	admin_phone.value,
							"admin_email" :	admin_email.value,
							"admin_dept" :	admin_dept.value
							},
					url : "updateServlet", //�����͸� ����, ��û�ϴ� ���� ������
					dataType : "text", //���䵥������ ����
					success : function(data){ //��� ����
						
						if(data=="0"){
							alert('ȸ�� ���� ������ �ٽ� �õ��� �ּ���.')
							window.location.href = "mypage.jsp"; 
						}else{
							
							alert('ȸ�� ���� ���� �Ϸ�Ǿ����ϴ�.')
							window.location.href = "notice.jsp"; 
						}
					},
					error : function(){ //��� ����
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