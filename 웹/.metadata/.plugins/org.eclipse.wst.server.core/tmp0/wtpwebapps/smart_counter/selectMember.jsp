<%@page import="model.MemberVO"%>
<%@page import="model.MemberDAO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
	</head>
	<style>
	
	</style>
	<body style="text-align: center;">
	<%
		MemberDAO dao = new MemberDAO();
		ArrayList<MemberVO> al = dao.selectAll();
	//	System.out.println(al.size()); �� ���Դ��� Ȯ���ϱ� ���ؼ� ���°�!
	
	%>
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<table>
							<caption><h2>ȸ������������</h2></caption>
							<tr>
								<td>Email</td>
								<td>��ȭ��ȣ</td>
								<td>�ּ�</td>		
							</tr>
							<% for (int i=0; i<al.size(); i++){ %>		
							
							<tr>
							
							<td><%=al.get(i).getId()%></td>
							<td><%=al.get(i).getPw()%></td>
								
							<td><a href="DeleteService?email=
								<%=al.get(i).getId()%>">����</a></td>
							</tr>
							
							<% }%>
							
							<!-- get ��� - ������Ʈ�� -->
							
						<!-- null�� ���� : delete from web_member where email is null -->	
							
						<!-- �̷��� ���� <  %  %  > �� �ϰ� out ������ �ּ�ó�� ��! -->
							
							<!--  
							
							
							for(MemberVO vo:al){
								out.print("<tr>");
								out.print("<td>"+vo.getEmail()+"</td>");
								out.print("<td>"+vo.getTel()+"</td>");
								out.print("<td>"+vo.getAddress()+"</td>");
								out.print("<td><a href='DeleteService?email="+vo.getEmail()+"'>����</a></td>");
								//"" �����ϱ� -> '' �� ��� �ȿ��� �ν���..�ƴϸ� ""�� "" �� �νĵ�
								out.print("</tr>");
							}
							
							
							
						-->
							
	
							
						</table>
					</nav>			
			</div>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
	</body>
</html>

