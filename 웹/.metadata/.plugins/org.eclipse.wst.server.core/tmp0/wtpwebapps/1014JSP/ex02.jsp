<%@page import="com.example.ex01Plus"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%! //����. jsp������ �޼ҵ�, ����� ������ �� ����ϴ� ����
		
	
	%>
	<%
		ex01Plus ex01 = new ex01Plus();
		int result = ex01.sum(5, 10);
	%>
 	ex01Plus ������ sum �޼ҵ� ȣ�� : <%=result %>



</body>
</html>