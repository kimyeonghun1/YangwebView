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
		session.invalidate();
	%>
	
	<script>
		alert("�α׾ƿ�!");
		location.href="loginForm.html";
	</script>

</body>
</html>