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
												<div>
													<div class="num">5</div>
													<div class="title"><a href="view.html">�� ������ ���ϴ�.</a></div>
													<div class="writer">���̸�</div>
													<div class="date">2021.1.15</div>
													<div class="count"><a href="board_edit.jsp" class="button">����</a></div>
												</div>
												<div>
													<div class="num">4</div>
													<div class="title"><a href="view.html">�� ������ ���ϴ�.</a></div>
													<div class="writer">���̸�</div>
													<div class="date">2021.1.15</div>
													<div class="count"><a href="board_edit.jsp" class="button">����</a></div>
												</div>
												<div>
													<div class="num">3</div>
													<div class="title"><a href="view.html">�� ������ ���ϴ�.</a></div>
													<div class="writer">���̸�</div>
													<div class="date">2021.1.15</div>
													<div class="count"><a href="board_edit.jsp" class="button">����</a></div>
												</div>
												<div>
													<div class="num">2</div>
													<div class="title"><a href="view.html">�� ������ ���ϴ�.</a></div>
													<div class="writer">���̸�</div>
													<div class="date">2021.1.15</div>
													<div class="count"><a href="board_edit.jsp" class="button">����</a></div>
												</div>
												<div>
													<div class="num">1</div>
													<div class="title"><a href="view.html">�� ������ ���ϴ�.</a></div>
													<div class="writer">���̸�</div>
													<div class="date">2021.1.15</div>
													<div class="count"><a href="board_edit.jsp" class="button">����</a></div>
												</div>
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
											<a href="board_write.jsp" ><input type="submit" value="���" class="primary" /></a>
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