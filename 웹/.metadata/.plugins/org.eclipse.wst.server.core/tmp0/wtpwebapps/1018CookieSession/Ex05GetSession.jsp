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
		String id = (String)session.getAttribute("id"); //���ڿ��̱� ������ ��ҹ��ڸ� �� ������ ��� �Ѵ�.
		String pw = (String)session.getAttribute("pw");
		Integer age = (Integer)session.getAttribute("age");
	%>
	
	���̵�: <%=id %> <br>
	��й�ȣ: <%=pw %> <br>
	����: <%=age %>
	
	<a href = "Ex05GetSession.jsp">����Ȯ��</a>
	
	<a href = "Ex06RemoveSession.jsp">���ǻ���</a>
	<a href = "Ex07InvalidateSession.jsp">���Ǹ�λ���</a>

</body>
</html>