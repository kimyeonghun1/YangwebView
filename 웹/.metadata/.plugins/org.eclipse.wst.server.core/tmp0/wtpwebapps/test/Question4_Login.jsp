<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>도서관리프로그램</h1>
	<form>
	<table>
	<tr>
	<td>ID</td>
	<td><input type="text" name="id"></td>
	<td rowspan="3"><button type="submit">로그인</button></td>
	</tr>
	
	<tr>
	<td>PW</td>
	<td><input type="text" name="pw"></td>
	</tr>
	
	<tr>
	<td colspan="3">아이디가 없다면<a href="Question4_Jois.jsp">회원가입</a> 클릭</td>
	
	</tr>
	</table>
	</form>


</body>
</html>