<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--로그아웃 에서는세션삭제만 해주면 된다 -->
	<%
		session.invalidate();
	%>
	
	<script>
		alert("로그아웃!");
		location.href="LoginForm.html";
	</script>

</body>
</html>