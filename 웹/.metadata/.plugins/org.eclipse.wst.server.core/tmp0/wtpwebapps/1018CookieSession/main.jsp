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
		String nickname = (String)session.getAttribute("nickname");//������ Ű���� �����ָ� ���ǰ��� ��ȯ���� �� �ִ�.
		//string Ÿ������ ��������ȯ ����� �Ѵ�.
	%>
	<%=nickname %>�� ȯ���մϴ�!
	<a href="logout.jsp">�α׾ƿ�</a>
	
</body>
</html>