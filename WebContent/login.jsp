<%@page import="java.util.ArrayList"%>
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
			
			%>
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="login.jsp" class="logo" style="font-size: 20px;"><strong>�α���</strong>  </a>
									<ul class="icons">
										
									</ul>
								</header>

							<!-- Content -->
								<section>
									<!-- <header class="main">
										<h1></h1>
									</header> -->

									<!-- <span class="image main"><img src="images/pic11.jpg" alt="" /></span> -->

									<form method="post" action="#">
                                        <div class="row gtr-uniform">
                                            <div class="col-6 col-12-xsmall" style="text-align: center;">
                                                <input type="text" name="admin_id" id="admin_idl" value="" placeholder="���̵�" />
                                            </div>
                                            <div class="col-6 col-12-xsmall" style="text-align: center;">
                                                <input type="password" name="admin_pwd" id="admin_pwdl" value="" placeholder="��й�ȣ" />
                                            </div>
                                        
                                            <!-- Break -->
                                            <div class="col-12" style="text-align: center;">
                                                <ul class="actions">
                                                    <li><input type="button" value="�α���" onclick="login()" class="primary" /><a href="#join" class="button" style="margin-left: 10px;">ȸ������</a></li>
													
                                                    <!-- <li><input type="reset" value="Reset" /></li> -->
                                                </ul>
                                            </div>
                                        </div>
                                    </form>
								</section>
								<header id="header">
									<a class="logo" name = "join"  style="font-size: 20px;"><strong>ȸ������</strong> </a>
								</header>
								<section>
									<form method="post" action="#">
                                        <div class="row gtr-uniform">
                                            <div class="row gtr-uniform">
                                                <div class="col-6 col-12-xsmall">                                              
													<input type="text" name="admin_id" id="admin_idj" value="" placeholder="���̵�" />
                                                </div>
                                                <div class="col-6 col-12-xsmall">
                                                    <input type="button" onclick="idCheck()" value="ID �ߺ�üũ" class="primary" />
                                                </div>
												<div class="col-6 col-12-xsmall">
                                                    <input type="password" name="admin_pwd" id="admin_pwdj"  placeholder="��й�ȣ" />
                                                </div>
												<div class="col-6 col-12-xsmall">
                            
													<input type="text" name="admin_name" id="admin_name"  placeholder="�̸�" />
                                                </div>
                                                 <div class="col-6 col-12-xsmall">
                            
													<input type="text" name="admin_phone" id="admin_phone"  placeholder="��ȭ��ȣ" />
                                                </div>
												
                                                <div class="col-6 col-12-xsmall">
                                                    <input type="email" name="admin_email" id="admin_email"  placeholder="�̸���" />
                                                </div>
                                               
                                            	<div class="col-12">
                                               		 <input type="text" name="admin_dept" id="admin_dept"  placeholder="�Ҽ�" />

                                            	</div>
                                            
                                            <div class="col-12" style="text-align: center;">
                                                <ul class="actions">
                                                    <li><input type="button" onclick="join()" value="ȸ������" class="primary" /></li>
													
                                                    <!-- <li><input type="reset" value="Reset" /></li> -->
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
										
										<li><a href="login.jsp">�α���</a></li>
										<li><a href="adminDelete.jsp">ȸ��Ż��</a></li>
										
									</ul>
								</nav>

							<!-- Menu -->
								
				<nav id="menu">
					<header class="major">
						<h2>���� ���� �޴�</h2>
					</header>
					<ul>
						<li><a href="#">�α����� �ʿ��մϴ�. </a></li>
						

						
					</ul>
				</nav>
				

							

							<!-- Section -->
								<section>
									<header class="major">
										<h2>�� ����</h2>
									</header>
									
									<ul class="contact">
										
										<li class="icon solid fa-envelope">�̸���</li>
										<li class="icon solid fa-phone">��ȭ��ȣ</li>
										<li class="icon solid fa-home">�Ҽ�</li>
										
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
			function idCheck() {
				
				var input = document.getElementById("admin_idj");
				
				$.ajax({
					type : "post", //������ ���� ��û ���
					data : {"admin_id" : input.value}, //�����ϴ� ������
					url : "idCheckServlet", //�����͸� ����, ��û�ϴ� ���� ������
					dataType : "text", //���䵥������ ����
					success : function(data){ //��� ����
						if(data=="true"){
							alert('�̹� ������� ���̵� �Դϴ�.')
						}else{
							alert('��� ������ ���̵��Դϴ�.')
						}
					},
					error : function(){ //��� ����
					}
				});
			}

			function login() {
				var admin_id = document.getElementById("admin_idl");
				var admin_pwd = document.getElementById("admin_pwdl");
				
				$.ajax({
					type : "post", //������ ���� ��û ���
					data : {
							"admin_id" : 	admin_id.value,
							"admin_pwd" :	admin_pwd.value
							},
					url : "loginServlet", //�����͸� ����, ��û�ϴ� ���� ������
					dataType : "text", //���䵥������ ����
					success : function(data){ //��� ����
						
						if(data==null){
							alert('�α����� �ٽ� �õ��� �ּ���.')
							window.location.href = "login.jsp"; 
						}else{
							
							alert('�α��� �Ϸ�Ǿ����ϴ�. ��� �߻� ��Ȳ�� Ȯ���� �ּ���!')
							
							window.location.href = "notice.jsp";
						}
					},
					error : function(){ //��� ����
					}
				});
			}
			
			function join() {
				
				var admin_id = document.getElementById("admin_idj");
				var admin_pwd = document.getElementById("admin_pwdj");
				var admin_name = document.getElementById("admin_name");
				var admin_phone = document.getElementById("admin_phone");
				var admin_email = document.getElementById("admin_email");
				var admin_dept = document.getElementById("admin_dept");
								
				$.ajax({
					type : "post", //������ ���� ��û ���
					data : {
							"admin_id" : 	admin_id.value,
							"admin_pwd" :	admin_pwd.value,
							"admin_name" :	admin_name.value,
							"admin_phone" :	admin_phone.value,
							"admin_email" :	admin_email.value,
							"admin_dept" :	admin_dept.value
							},
					url : "joinServlet", //�����͸� ����, ��û�ϴ� ���� ������
					dataType : "text", //���䵥������ ����
					success : function(data){ //��� ����
						
						if(data=="0"){
							alert('ȸ�������� �ٽ� �õ��� �ּ���.')
							window.location.href = "login.jsp"; 
						}else{
							
							alert('ȸ������ �Ϸ�Ǿ����ϴ�.')
							window.location.href = "login.jsp"; 
						}
					},
					error : function(){ //��� ����
					}
				});
			}
			
			</script>
	</body>
</html>