<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--지시자: jsp를 실행했을 때 전체적인 환경설정 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		//response.setContentType("text/html;charset=euc-kr");
		//PrintWriter out1 = response.getWriter();
		
		//외부페이지 이동
		response.sendRedirect("http://www.naver.com");
		
		//내부페이지 이동(파일의 이름만 입력하면 같은 프로젝트 내에서만가능. 다른 프로젝트 내에서는 url전체를 입력해줘야 한다.)
		response.sendRedirect("ex02.jsp");
		
		//로그인시스템
		//1. 로그인 할 수 있는 HTML
		//2. 아이디와 패스워드가 맞는지 체크하는 JSP
		//3. 성공했을 때 JSP
		//4. 실패했을 때 JSP
	
	%>

</body>
</html>