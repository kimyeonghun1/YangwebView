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
									<a href="notice.html" class="logo" style="font-size: 20px;"><strong>��� �߻� ��Ȳ</strong>  </a>
									<ul class="icons">
										<li><a href="fieldlist.html" class="logo"><span class="label"><strong>������</strong></span></a></li>
                              			
                                        <li><a href="board_list.html".html" class="logo"><span class="label">��������</span></a></li>  										
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
                                                    <th>��ȣ</th>
                                                    <th>SAFEBOX ID</th>
                                                    <th>���� ID</th>
                                                    <th>�˸� ���� </th>
                                                    <th>Ȯ��</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>safebox1</td>
                                                    <td>sensor1</td>
                                                    <td>�� 100ppm ����</td>
                                                    <td><a href="#" class="logo" style="outline: none; text-decoration: none;">�̵�</a></td>
                                                    <td><div class="col-6 col-12-small"><input type="checkbox" id="1" name="1"><label for="1"></label></div></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>safebox2</td>

                                                    <td>sensor2</td>
                                                    <td>�� 100ppm ����</td>
                                                    <td><a href="#" class="logo" style="outline: none; text-decoration: none;">�̵�</a></td>
                                                    <td><div class="col-6 col-12-small"><input type="checkbox" id="2" name="2"><label for="2"></label></div></td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>safebox3</td>

                                                    <td>sensor3</td>
                                                    <td>�� 100ppm ����</td>
                                                    <td><a href="#" class="logo" style="outline: none; text-decoration: none;">�̵�</a></td>
                                                    <td><div class="col-6 col-12-small"><input type="checkbox" id="3" name="3"><label for="3"></label></div></td>
                                                </tr>
                                                
                                                
                                            </tbody>
                                            
                                        </table>
                                        <div class="col-12" style="text-align: center;">
                                            <ul class="actions">
                                                <li><input type="submit" value="Ȯ�� �Ϸ�" class="primary" /></li>
                                                
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
										<li><a href="login.html">�α���</a></li>
										<%}else{ %>
										<li><a href="mypage.html">ȸ����������</a></li>
										<li><a href="LogoutServlet" class="logo"></a>�α׾ƿ�</li>
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
										<li><a href="fieldlist.html">���� ��� </a></li>
										<li><a href="board_list.html">���� ����</a></li>
                              			<li><a href="notice.html">��� �߻� ��Ȳ</a></li>
										
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

	</body>
</html>