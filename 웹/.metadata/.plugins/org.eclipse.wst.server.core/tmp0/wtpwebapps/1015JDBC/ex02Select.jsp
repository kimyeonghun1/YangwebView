<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>PW</th>
			<th>NICK</th>
		</tr>
		<%
			//JDBC(Select)

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";

			conn = DriverManager.getConnection(url, dbid, dbpw); //jsp�� ��Ʈ��+�����̽�+o�� �ȵȴ�.

			String sql = "SELECT * FROM jdbc_member"; // ?�� �����Ƿ� psmt. �� �ʿ����.

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {//next�� rs�� �ϳ��ϳ� �˻��ϰ� ���ִ� ����̴�.

				String id = rs.getString(1);
				String pw = rs.getString(2);
				String nick = rs.getString(3);
		%>
		<!-- ��ũ��Ʋ���� ������ ���� ����� html�� ����-->


		<tr>
			<td><%=id%></td>
			<td><%=pw%></td>
			<td><%=nick%></td>

		</tr>

		<!-- ��ũ��Ʋ���� ������ ���� -->
		<%
			}

		} catch (Exception e) {
		e.printStackTrace();
		} finally {

		try {
		if (rs != null) {
			rs.close();
		}
		if (psmt != null) {
			psmt.close();
		}
		if (conn != null) {
			conn.close();
		}

		} catch (Exception e2) {
		e2.printStackTrace();
		}

		}
		%>
		
		<!-- 
		 -->
	</table>
	

</body>
</html>