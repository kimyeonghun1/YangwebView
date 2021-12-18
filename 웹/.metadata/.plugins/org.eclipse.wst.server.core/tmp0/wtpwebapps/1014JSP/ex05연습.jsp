<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
tr{
	height: 400px;
	text-align: center;
	}
table{
	margin: 0 auto;
	}

</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr");
		String name = request.getParameter("name");
		String java = request.getParameter("java");
		String web = request.getParameter("web");
		String iot = request.getParameter("iot");
		String android = request.getParameter("android");
		
		int javaA = Integer.parseInt(java);
		int webA = Integer.parseInt(web);
		int iotA = Integer.parseInt(iot);
		int androidA = Integer.parseInt(android);
		
		int avg = (javaA + webA + iotA + androidA)/4;
	%>


<fieldset>
	<legend>성적확인프로그램</legend>
	<table width="500">
		<tr>
			<td>이름</td>
			<td><%=name%></td>
		</tr>
		<tr>
			<td>java점수</td>
			<td><%=java %></td>
		</tr>
		<tr>
			<td>web점수</td>
			<td><%=web %></td>
		</tr>
		<tr>
			<td>iot점수</td>
			<td><%=iot %></td>
		</tr>
		<tr>
			<td>android점수</td>
			<td><%=android %></td>
		</tr>
		<tr>
			<td>평균점수</td>
			<td><%=avg %></td>
		</tr>
		<tr>
			<td>학점</td>
			<td><%=gradeA %></td>
		</tr>
	
	
	</table>


</fieldset>

</body>
</html>