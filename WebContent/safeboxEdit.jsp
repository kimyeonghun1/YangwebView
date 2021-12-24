<%@page import="com.model.adminDAO"%>
<%@page import="com.model.adminVO"%>
<%@page import="com.model.fieldVO"%>
<%@page import="com.model.fieldDAO"%>
<%@page import="com.model.safeboxVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.safeboxDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE HTML>

<html>
<head>
	<title>Elements - Editorial HTML5 UP</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="is-preload">

<%
adminVO vo = (adminVO)session.getAttribute("admin");
adminDAO dao = new adminDAO();
			int field_seq_session = (int)session.getAttribute("field_seq_session2");
			safeboxDAO safeboxdao = new safeboxDAO();
			ArrayList<safeboxVO> safebox_array_all = safeboxdao.safeboxAllList(field_seq_session);
			
			fieldDAO fielddao = new fieldDAO();
			fieldVO fieldvo = fielddao.fieldOne(field_seq_session);
			
			
		
		%>
		
<!-- Wrapper -->
<div id="wrapper">

	<!-- Main -->
	<div id="main">
		<div class="inner">

			<!-- Header -->
			<header id="header">
				<a href="safeboxEdit.jsp" class="logo" style="font-size: 20px;"><strong>SafeBox ����</strong></a>
				<ul class="icons">
					<li><a href="safeboxAddCheckService?field_seq=<%=field_seq_session %> " class="logo"><span class="label"><strong>Safebox�߰�</strong></span></a></li>
				</ul>
			</header>


			<!-- Content -->
			<section>


				<h2>���� [ <%=fieldvo.getField_name() %> ]�� SAFEBOX LIST </h2>

				<div class="table-wrapper">

					<table>
						<thead>
						<tr>
							<th>��ȣ</th>
							<th>ID</th>
							<th>��ġ���</th>
							<th>����</th>
							<th>����</th>
						</tr>
						</thead>
						<tbody>
							<%for(safeboxVO vo2_safebox : safebox_array_all){%>
						<tr>
							<td><%=vo2_safebox.getDevice_seq() %> </td>
							<td><%=vo2_safebox.getDevice_id() %> </td>
							<td><%=vo2_safebox.getDevice_location() %> </td>
							<td><a href="safeboxUpdateCheckService?safebox_seq=<%=vo2_safebox.getDevice_seq() %> " class="logo" style="outline: none; text-decoration: none;">����</a></td>
							<td><a href="safeboxDeleteService?safebox_seq=<%=vo2_safebox.getDevice_seq() %> " class="logo" style="outline: none; text-decoration: none;">����</a></td>
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
										<% if(vo==null){%>
										<li><a href="login.jsp">�α���</a></li>
										<li><a href="adminDelete.jsp">ȸ��Ż��</a></li>	
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