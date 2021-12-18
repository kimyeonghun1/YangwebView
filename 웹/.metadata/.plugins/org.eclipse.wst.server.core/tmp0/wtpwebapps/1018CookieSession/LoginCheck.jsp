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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("test") && pw.equals("12345")){
			session.setAttribute("nickname", "쿠키몬스터"); //세션생성
			response.sendRedirect("main.jsp"); //리다이렉팅 방식
		}else{
			response.sendRedirect("LoginForm.html");
		}
	
	%>

</body>
</html>