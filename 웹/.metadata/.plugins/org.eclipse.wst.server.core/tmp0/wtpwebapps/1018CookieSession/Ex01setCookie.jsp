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
		//1.��Ű ��ü ����
		//Cookie(Name(String), Value(String)) �Ѵ� ��Ʈ�� Ÿ������ ���� �Ѵ�.
		Cookie cookie = new Cookie("testcookie","firstcookie");
		
		//2.��ȿ�Ⱓ ����(�� ����)
		cookie.setMaxAge(365*24*60*60); //1��
		
		//3.Ŭ���̾�Ʈ���� ��� ����(����-response)
		response.addCookie(cookie);//������ ������ cookie ��ü�� �־��ش�.
		
		//4.��Ű �������� �ٷ� Ŭ���̾�Ʈ���� ����
		response.addCookie(new Cookie("id","test"));
		
	
	%>
	<a href="Ex02GetCookie.jsp">��ŰȮ��</a>

</body>
</html>