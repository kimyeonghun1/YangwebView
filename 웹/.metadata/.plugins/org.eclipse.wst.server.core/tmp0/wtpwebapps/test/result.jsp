<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<table border="1px">
	<h1>��ȣ�� ���� ���</h1>
	<tr>
		<td>�̸�</td>
		<td><%=request.getParameter("name")%></td>
	</tr>
	<tr>
		<td>�����ϴ� ����</td>
		<td>
			<%
				String[] num = request.getParameterValues("fruit");
			for (int i = 0; i < num.length; i++) {
				out.print(num[i]+" ");
			}
			%>
		</td>
	</tr>
	</table>



</body>
</html>