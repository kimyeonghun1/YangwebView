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
	<!-- Servlet = JSP : �Ȱ��� ��� ���� ����
	ù��° ���� : JSP -> WAS(Tomcat) ->Servelet ->class ->�޸����� ->������������ȯ
	�ι�° ���� ���� : JSP -> WAS(Tomcat) ->�޸𸮿� ����� class ->������������ȯ
	
	 -->
	
	

	
	<% //��ũ��Ʋ��(Scriptlet): JSP �ȿ��� Java�ڵ带 ������ �� �ִ� ����
		int num1 = 10;
		int num2 = 5;
		int result = num1 + num2;
		
		int sum = 0;
		
		for(int i = 0 ; i < 101 ; i++){
			sum += i;
		}
		
		
	%>
	
	num1�� num2�� �� : <b><%=result %></b>
	<br> 1~100������ ���� : <%=sum %>
	
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
<!--�ڹٽ�ũ��Ʈ: html������ �ȿ��� �ؼ��ϰ� ����  -->
<!-- �ڹٽ�ũ��Ʈ�� db�� ������ �� �� ����.  -->
<!-- jsp: ��Ĺ�� ������ ������� �Ѵ�.  -->
<!-- jsp:�ڹ� ���� ������
	html������ java �ڵ带 �ۼ�
	�����ϴ� �������� �� �� ���� ���߰���
 -->