<%@page import="java.util.ArrayList"%>
<%@page import="com.model.fieldVO"%>
<%@page import="com.model.fieldDAO"%>
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
<title>Edito UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/onOff.css">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
</head>
<style>
.section {
	position: relative;
}

.article {
	position: relative;
}

.posts {
	position: relative;
}

table .ttbody {
	position: relative;
	vertical-align: middle;
}
</style>

<body class="is-preload">
	<!-- Wrapper -->
	<%
		//���� �α��� �������� Ȯ�� (vo == null > �α��� ���� ���� ����)
	adminVO vo = (adminVO) session.getAttribute("admin");
	adminDAO dao = new adminDAO();
	%>
	<div id="wrapper">
		<div id="main">
			<div class="inner">
				<header id="header">
					<a href="#" class="logo" style="font-size: 20px;"><strong></strong><br></a>

					<ul class="icons">

						<li><a href="notice.jsp" class="logo"><span class="label"><strong>���߻���Ȳ</strong></span></a></li>
						<li><a href="board_list.jsp" class="logo"><span
								class="label">��������</span></a></li>
					</ul>
				</header>


				<section>
					<div class="box"
						style="display: inline-block; position: relative; width: 100%">
						<div class="row">
							
							<div class="col-4">
								<h3>SAFEBOX ID</h3>
							</div>
							<div class="col-3">
								<label class="switch-button"> <input type="checkbox" />
									<div class="onoff-switch"></div>
								</label>
							</div>

							<div class="row" style="margin-left: 6px ;width:100%">
								<ul class="alt">
									<li><h4>��� ��ġ</h4>
										<p>��ġ�� �־��ּ���</p></li>
									<li><h4>���� �ֱ�</h4>
										<p>�ֱ⸦ �־��ּ���</p>
										<form method="post" action="#">
											<div class="row">
												<div class="col-6">
													<input type="text" id="" value="" placeholder="�ֱ⸦ �Է��ϼ���.">
												</div>
												<div class="col-6">
													<input type="submit" id="" value="Ȯ��" class="primary">
												</div>
											</div>
										</form></li>
								</ul>
								<div class="container"
									style="display: float;">
									<div class="animations-container">
										<h3>SAFE BOX ���� ����</h3>
										<div class="toggle toggle--on-off">
											<div class="toggle__switch">
												<input class="toggle__checkbox" id="toggle1" type="checkbox"
													name="toggle1" checked="" /><span class="toggle__handle"></span><span
													class="toggle__backdrop"></span>
											</div>
											<label class="toggle__label" for="toggle1"><p>���� ���ǻ����� �����ִ�. ���ǻ����� ����� ���� �� �� ���� Ŭ���� �ּ���.</p></label>
										</div>
									</div>
									
									
								</div>

							</div>

						</div>


					</div>


				</section>


				<section class="banner">
					<div class="table-wrapper">
						<table>
							<thead>
								<tr>
									<th>�����̸�</th>
									<th>���س�</th>
									<th>�����</th>
									<th>��������</th>

								</tr>
							</thead>
							<tbody class="ttbody">
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td><form action="sensorManage.jsp">
											<input type="submit" value="����">
										</form></td>
								</tr>
							</tbody>

						</table>
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
						<%
							if (vo == null) {
						%>
						<li><a href="login.jsp">�α���</a></li>
						<li><a href="adminDelete.jsp">ȸ��Ż��</a></li>
						<%
							} else {
						%>

						<li><a href="mypage.jsp">ȸ����������</a></li>

						<li><a href="logoutServlet" class="logo">�α׾ƿ�</a></li>
						<%
							}
						%>
					</ul>
				</nav>

				<!-- Menu -->
				<%
					if (vo != null) {
				%>
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
				<%
					} else {
				%>
				<nav id="menu">
					<header class="major">
						<h2>���� ���� �޴�</h2>
					</header>
					<ul>
						<li><a href="#">�α����� �ʿ��մϴ�. </a></li>



					</ul>
				</nav>
				<%
					}
				%>



				<!-- Section -->
				<section>
					<header class="major">
						<h2>�� ����</h2>
					</header>

					<ul class="contact">
						<%
							if (vo != null) {
						%>
						<li class="icon solid fa-envelope"><%=vo.getAdmin_email()%></li>
						<li class="icon solid fa-phone"><%=vo.getAdmin_phone()%></li>
						<li class="icon solid fa-home"><%=vo.getAdmin_dept()%></li>
						<%
							} else {
						%>
						<li class="icon solid fa-envelope">�̸���</li>
						<li class="icon solid fa-phone">��ȭ��ȣ</li>
						<li class="icon solid fa-home">�Ҽ�</li>
						<%
							}
						%>
					</ul>
				</section>

				<!-- Footer -->
				<footer id="footer">
					<p class="copyright">
						&copy; Untitled. All rights reserved. Demo Images: <a
							href="https://unsplash.com">Unsplash</a>. Design: <a
							href="https://html5up.net">HTML5 UP</a>.
					</p>
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
	<script src="assets/js/onOff.js"></script>

</body>
</html>