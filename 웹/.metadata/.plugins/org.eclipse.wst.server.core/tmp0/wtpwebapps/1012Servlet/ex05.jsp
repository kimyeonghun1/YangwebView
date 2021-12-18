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
	//POST����� �� �ѱ� ���ڵ��ϴ¹��
	String name = request.getParameter("name");
	String java = request.getParameter("java");
	String web = request.getParameter("web");
	String iot = request.getParameter("iot");
	String android = request.getParameter("android");
	
	// int java = Integer.parseInt(request.getParameter("java")); ����ȯ ���ϰ� �ѹ��� int���� �ȴ�.

	
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
		<legend>����Ȯ�����α׷�</legend>
		<table width="500">
			<tr>
				<td>�̸�</td>
				<td><%=name %></td>
			</tr>
			<tr>
				<td>JAVA����</td>
				<td><%=java %></td>
			</tr>
			<tr>
				<td>WEB����</td>
				<td><%=web %></td>
			</tr>
			<tr>
				<td>IOT����</td>
				<td><%=iot %></td>
			</tr>
			<tr>
				<td>ANDROID����</td>
				<td><%=android %></td>
			</tr>

			<tr>
				<td>�������</td>
				<td><%=avg %></td>
			</tr>

			<tr>
				<td>����</td>
				<td><b><%=gradeA %></b></td>
			</tr>
		</table>
	</fieldset>
</body>
</html>