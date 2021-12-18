<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
tr {
	height: 40px;
	text-align: center;
}

table {
	margin: 0 auto;
}
</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr");
	//POST방식일 때 한글 인코딩하는방식
	String name = request.getParameter("name");
	String java = request.getParameter("java");
	String web = request.getParameter("web");
	String iot = request.getParameter("iot");
	String android = request.getParameter("android");
	
	// int java = Integer.parseInt(request.getParameter("java")); 형변환 안하고 한번에 int형이 된다.

	
	int javaA = Integer.parseInt(java);
	int webA = Integer.parseInt(web);
	int iotA = Integer.parseInt(iot);
	int androidA = Integer.parseInt(android);

	int avg =(javaA + webA + iotA + androidA) / 4;
	
	String gradeA = "";
	if (avg <= 100 || avg >= 95)
		gradeA = "A+";
	else if (avg <= 94 || avg >= 85)
		gradeA = "A";
	else if (avg <= 84 || avg >= 80)
		gradeA = "B+";
	else if (avg <= 79 || avg >= 70)
		gradeA = "C";
	else
		gradeA = "";
	%>
	<fieldset>
		<legend>성적확인프로그램</legend>
		<table width="500">
			<tr>
				<td>이름</td>
				<td><%=name %></td>
			</tr>
			<tr>
				<td>JAVA점수</td>
				<td><%=java %></td>
			</tr>
			<tr>
				<td>WEB점수</td>
				<td><%=web %></td>
			</tr>
			<tr>
				<td>IOT점수</td>
				<td><%=iot %></td>
			</tr>
			<tr>
				<td>ANDROID점수</td>
				<td><%=android %></td>
			</tr>

			<tr>
				<td>평균점수</td>
				<td><%=avg %></td>
			</tr>

			<tr>
				<td>학점</td>
				<td><b><%=gradeA %></b></td>
			</tr>
		</table>
	</fieldset>
</body>
</html>