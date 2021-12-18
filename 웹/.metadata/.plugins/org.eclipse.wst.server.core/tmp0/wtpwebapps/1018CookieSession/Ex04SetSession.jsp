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
	//session 내장객체 사용
	//1.세션 값 설정 setAttribute(NAME(String), VALUE(Object))
	session.setAttribute("id","test");
	session.setAttribute("pw","12345");
	session.setAttribute("age",25);
	%>

</body>
</html>