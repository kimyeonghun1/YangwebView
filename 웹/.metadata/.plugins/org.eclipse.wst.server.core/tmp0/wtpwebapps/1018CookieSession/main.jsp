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
		String nickname = (String)session.getAttribute("nickname");//세션의 키값을 적어주면 세션값을 반환받을 수 있다.
		//string 타입으로 강제형변환 해줘야 한다.
	%>
	<%=nickname %>님 환영합니다!
	<a href="logout.jsp">로그아웃</a>
	
</body>
</html>