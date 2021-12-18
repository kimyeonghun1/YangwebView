<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%	//1.삭제할 쿠키와 동일한 name 값을 가진 쿠키 객체 생성
		Cookie cookie = new Cookie("testcookie", "");//어차피 삭제할 것이라 키값만 집어넣고 value는 집어넣지 않아도 된다.
		
		//2.유효기간을 0으로 설정
		cookie.setMaxAge(0);
		
		//3.쿠키를 클라이언트에게 전송
		response.addCookie(cookie);
		
	%>
	<a href="Ex02GetCookie.jsp">쿠키확인</a>

</body>
</html>