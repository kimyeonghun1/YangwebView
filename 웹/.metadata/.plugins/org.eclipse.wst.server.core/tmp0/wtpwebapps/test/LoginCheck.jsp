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
		request.setCharacterEncoding("euc-kr");
	session = request.getSession();
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String realId = "smart";
	String realPw = "1234";

	if (id.equals(realId) && pw.equals(realPw)) {
		session.setAttribute("id", "smart"); // ���ǻ���
		response.sendRedirect("main.jsp"); // �����̷��� ���
	} else {
		response.sendRedirect("loginForm.html");
	}
	%>

</body>
</html>