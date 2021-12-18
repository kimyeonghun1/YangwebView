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
		String id = (String)session.getAttribute("id"); //문자열이기 때문에 대소문자를 잘 구분해 줘야 한다.
		String pw = (String)session.getAttribute("pw");
		Integer age = (Integer)session.getAttribute("age");
	%>
	
	아이디: <%=id %> <br>
	비밀번호: <%=pw %> <br>
	나이: <%=age %>
	
	<a href = "Ex05GetSession.jsp">세션확인</a>
	
	<a href = "Ex06RemoveSession.jsp">세션삭제</a>
	<a href = "Ex07InvalidateSession.jsp">세션모두삭제</a>

</body>
</html>