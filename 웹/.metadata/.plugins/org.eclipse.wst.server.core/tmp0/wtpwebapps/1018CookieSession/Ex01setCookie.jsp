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
		//1.쿠키 객체 생성
		//Cookie(Name(String), Value(String)) 둘다 스트링 타입으로 들어가야 한다.
		Cookie cookie = new Cookie("testcookie","firstcookie");
		
		//2.유효기간 설정(초 단위)
		cookie.setMaxAge(365*24*60*60); //1년
		
		//3.클라이언트에게 쿠기 전송(응답-response)
		response.addCookie(cookie);//위에서 생성한 cookie 객체를 넣어준다.
		
		//4.쿠키 생성한후 바로 클라이언트에게 전송
		response.addCookie(new Cookie("id","test"));
		
	
	%>
	<a href="Ex02GetCookie.jsp">쿠키확인</a>

</body>
</html>