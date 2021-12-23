<%@page import="com.model.safeboxVO"%>
<%@page import="com.model.safeboxDAO"%>
<%@page import="com.model.noticeVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.noticeDAO"%>
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
			
			noticeDAO noticedao = new noticeDAO();
			ArrayList<noticeVO> notice_array = noticedao.noticeAllList();
			
			safeboxDAO safeboxdao = new safeboxDAO();
			%>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="notice.jsp" class="logo" style="font-size: 20px;"><strong>��� �߻� ��Ȳ</strong>  </a>
									<ul class="icons">
										<li><a href="fieldlist.jsp" class="logo"><span class="label"><strong>������</strong></span></a></li>
                              			
                                        <li><a href="board_list.jsp" class="logo"><span class="label">��������</span></a></li>  										
									</ul>
								</header>

							<!-- Content -->
								<section>
									<!-- <header class="main">
										<h1></h1>
									</header> -->
<form action="noticeDeleteCheckService" method="post">
									<div class="table-wrapper">
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th>��ȣ</th>
                                                    <th>SAFEBOX ID</th>
                                                    
                                                    <th>�˸� ���� </th>
                                                    <th>�˸� ��¥</th>
                                                    <th>Ȯ��</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <% for(noticeVO noticevo : notice_array) {
                                            	safeboxVO safeboxvo = safeboxdao.safeboxSelect(noticevo.getDevice_seq());
                                            	if(noticevo.getNotice_check()==1){
                                            	session.setAttribute("notice_seq", noticevo.getNotice_seq());
                                            	int field_seq = safeboxdao.field_seq(noticevo.getDevice_seq());%>
                                                <tr>
                                                    <td><%=noticevo.getNotice_seq() %></td>
                                                    <td><%=safeboxvo.getDevice_id() %></td>
                                                    <td><%=noticevo.getNotice_content() %></td>
                                                    <td><%=noticevo.getNotice_date() %></td>
                                                    <td><a href="sensorValueCheckService?field_seq=<%=field_seq %>" class="logo" style="outline: none; text-decoration: none;">�̵�</a></td>
                                                    <td><div class="col-6 col-12-small"><input type="checkbox" id="<%=noticevo.getNotice_seq() %>" name="1"><label for="<%=noticevo.getNotice_seq() %>"></label></div></td>
                                                </tr>
                                                <%} %>
                                                <%} %>
                                                
                                                
                                            </tbody>
                                            
                                        </table>
                                        <div class="col-12" style="text-align: center;">
                                            <ul class="actions">
                                                <li><input type="submit" value="Ȯ�� �Ϸ�" class="primary" /></li>
                                                
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
										<%if(vo==null) {%>
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