<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--�α׾ƿ� �����¼��ǻ����� ���ָ� �ȴ� -->
	<%
		session.invalidate();
	%>
	
	<script>
		alert("�α׾ƿ�!");
		location.href="LoginForm.html";
	</script>

</body>
</html>