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
		//1. ��Ű ��ü�� ��ȯ�ޱ�
		Cookie[] cookies = request.getCookies();
	
		//2. ��Ű ���� ���
		for(Cookie c : cookies){
			out.print(c.getName() + ":" + c.getValue() + "<br>");
		}
	%>
	<a href="Ex03RemoveCookie.jsp">��Ű����</a>

</body>
</html>