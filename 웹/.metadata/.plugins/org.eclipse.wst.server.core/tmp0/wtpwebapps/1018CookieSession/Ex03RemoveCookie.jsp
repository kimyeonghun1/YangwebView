<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%	//1.������ ��Ű�� ������ name ���� ���� ��Ű ��ü ����
		Cookie cookie = new Cookie("testcookie", "");//������ ������ ���̶� Ű���� ����ְ� value�� ������� �ʾƵ� �ȴ�.
		
		//2.��ȿ�Ⱓ�� 0���� ����
		cookie.setMaxAge(0);
		
		//3.��Ű�� Ŭ���̾�Ʈ���� ����
		response.addCookie(cookie);
		
	%>
	<a href="Ex02GetCookie.jsp">��ŰȮ��</a>

</body>
</html>