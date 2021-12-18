<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<style>
	/* CSS */
	</style>
</head>
<body>
	<script>
	//JavaScript
	</script>
	<!-- Servlet = JSP : 똑같은 기능 정의 가능
	첫번째 실행 : JSP -> WAS(Tomcat) ->Servelet ->class ->메모리저장 ->응답페이지변환
	두번째 이후 실행 : JSP -> WAS(Tomcat) ->메모리에 저장된 class ->응답페이지변환
	
	 -->
	
	

	
	<% //스크립틀릿(Scriptlet): JSP 안에서 Java코드를 구현할 수 있는 영역
		int num1 = 10;
		int num2 = 5;
		int result = num1 + num2;
		
		int sum = 0;
		
		for(int i = 0 ; i < 101 ; i++){
			sum += i;
		}
		
		
	%>
	
	num1과 num2의 합 : <b><%=result %></b>
	<br> 1~100까지의 합은 : <%=sum %>
	
	<table border="1">
	<tr>
		<%for(int i = 0 ; i <=10 ; i++){%>
			
			<td>1</td>
		
		
		<% }%>
		
		<%
		
		
		%>
				
				
	</tr>
	</table>
	

</body>
</html>
<!--자바스크립트: html페이지 안에서 해석하고 구동  -->
<!-- 자바스크립트는 db에 연결을 할 수 없다.  -->
<!-- jsp: 톰캣이 동작을 시켜줘야 한다.  -->
<!-- jsp:자바 서버 페이지
	html내에서 java 코드를 작성
	응답하는 페이지를 좀 더 쉽게 개발가능
 -->