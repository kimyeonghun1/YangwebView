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
		request.setCharacterEncoding("Euc-kr");
		
		String id = request.getParameter("id");

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";

			Connection conn = DriverManager.getConnection(url, dbid, dbpw); //jsp는 컨트롤+스페이스+o가 안된다.

			String sql = "SELECT * FROM jdbc_member WHERE id = ?"; // ?가 없으므로 psmt. 도 필요없다.
		
			
			PreparedStatement psmt = conn.prepareStatement(sql);
			psmt.setString(1, id); //이 값이 반드시 executeQuery 보다 먼저 와야 한다. 아니면 ? 값이 뭔지 몰라 오류가 난다.
			
			ResultSet rs= psmt.executeQuery();
			
			while(rs.next()){//next는 rs를 하나하나 검색하게 해주는 기능이다.
				
				//위에 html에서 받아오는id와 db에서 가져오는 id의 변수명이 같아서 오류가 나므로 getid로
				String getid = rs.getString(1);
				String pw = rs.getString(2);
				String nick = rs.getString(3);
		%>
			<!-- 스크립틀릿의 영역을 분할 여기는 html의 영역-->	
			
				
				<tr>
					<td><%=id %></td>
					<td><%=pw %></td>
					<td><%=nick %></td>
				
				</tr>
		
			<!-- 스크립틀릿의 영역을 분할 -->	
		<% 		
			}

			

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	</table>

</body>
</html>