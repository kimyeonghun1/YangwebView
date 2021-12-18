<%@page import="com.model.safeboxVO"%>
<%@page import="com.model.safeboxDAO"%>
<%@page import="com.model.sensorVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.sensorDAO"%>
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
		<title>Elements - Editorial HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload">

		<%
			
			sensorDAO sensordao = new sensorDAO();
			ArrayList<sensorVO> sensor_array_all = sensordao.sensorAllList();
		%>
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								
							<header id="header">
									<a href="sensorList.jsp" class="logo" style="font-size: 20px;"><strong>���� ����</strong></a>
									<ul class="icons">
										<!-- <form action="safeboxadd.html"><input type="submit" value="SAFEBOX �߰�" class="primary" /></form> -->
										<li><a href="sensorAdd.jsp" class="logo"><span class="label"><strong>�����߰�</strong></span></a></li>
										<li><a href="sensorUpdate.jsp" class="logo"><span class="label">������������</span></a></li>
									</ul>
								</header>

									<!-- Elements -->
										<h2 id="elements"></h2>
											
													<div class="table-wrapper">
														<table>
															<thead>
																<tr>
																	<th>���� ��ȣ</th>
																	<th>���� �̸�</th>
																	<th>���� ID</th>
																	<th>�������</th>
																	<th>��ġ�� SAFEBOX ��ȣ</th>
																	<th>���� ����</th>
																</tr>
															</thead>
															<tbody>
															<%for(sensorVO vo2_sensor : sensor_array_all){%>
																<tr>
																	<td><%=vo2_sensor.getSensor_seq() %></td>
																	<td><%=vo2_sensor.getSensor_name() %></td>
																	<td><%=vo2_sensor.getSensor_id() %></td>
																	<td><%=vo2_sensor.getReg_date() %></td>
																	<td><%=vo2_sensor.getDevice_seq() %></td>
																	<td><a href="sensorDeleteService?sensor_seq=<%=vo2_sensor.getSensor_seq()%>" class="logo" style="outline: none; text-decoration: none;">����</a></td>
																</tr>
																<%}%>
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
										<li><a href="login.jsp">�α���</a></li>
										<li><a href="mypage.jsp">ȸ����������</a></li>
									</ul>
								</nav>

							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2>���� ���� �޴�</h2>
									</header>
									<ul>
										<li><a href="fieldlist.jsp">���� ��� </a></li>
										<li><a href="sensorList.jsp">���� ��� </a></li>
										<li><a href="board_list.jsp">���� ����</a></li>
                              			<li><a href="notice.jsp">��� �߻� ��Ȳ</a></li>
										<!-- <li><a href="elements.html">SafeBox List Manage</a></li> -->
										<!-- <li><a href="safebox.html">SafeBox List</a></li> -->
										<!-- <li>
											<span class="opener">Submenu</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>
											</ul>
										</li> -->
										
									</ul>
								</nav>

							<!-- Section -->
								<!-- <section>
									<header class="major">
										<h2>Ante interdum</h2>
									</header>
									<div class="mini-posts">
										<article>
											<a href="#" class="image"><img src="images/pic07.jpg" alt="" /></a>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
										</article>
										<article>
											<a href="#" class="image"><img src="images/pic08.jpg" alt="" /></a>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
										</article>
										<article>
											<a href="#" class="image"><img src="images/pic09.jpg" alt="" /></a>
											<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
										</article>
									</div>
									<ul class="actions">
										<li><a href="#" class="button">More</a></li>
									</ul>
								</section> -->

							<!-- Section -->
								<section>
									<header class="major">
										<h2>�� ����</h2>
									</header>
									<ul class="contact">
										<li class="icon solid fa-envelope"><a href="#">information@untitled.tld</a></li>
										<li class="icon solid fa-phone">(000) 000-0000</li>
										<li class="icon solid fa-home">1234 Somewhere Road #8254<br />
										Nashville, TN 00000-0000</li>
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