<%@page import="model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<%
	
	MemberVO vo = (MemberVO)session.getAttribute("member"); 
	
	
	
	
	
	%>
	
		<h1>ȸ������ ����!</h1>
	
	<form action="Update" method="post">
		<p>������ ����</p>
		PW<input type="password" name="pw"><br>
		�г���<input value="<%=vo.getNick() %>" type="text" name="nick"><br>
		Ű<input value="<%=vo.getHeight() %>" type="text" name="height"><br>
		������<input value="<%=vo.getKg() %>" type="text" name="kg"><br>
		����<input value="<%=vo.getAge() %>" type="text" name="age" ><br>
		BMI<input value="<%=vo.getBMI() %>" type="text" name="bmi" ><br>
		����<input type="radio" name="gender" value="M" required="required">
     	����<input type="radio" name="gender" value="W" required="required">
		<input type="submit" value="����">

	








</body>
</html>