<%@page import="sun.font.Script"%>
<%@page import="com.model.fieldVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="com.model.fieldDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="fieldVO" class="com.model.fieldVO" scope="page" />
<jsp:setProperty name="fieldVO" property="fieldName" />
<jsp:setProperty name="fieldVO" property="fieldAddr" />
<jsp:setProperty name="fieldVO" property="fieldMemo" />

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String admin_id = null;
		if(session.getAttribute("admin_id") != null){
			admin_id = (String) session.getAttribute("userID");
		}
		if(admin_id == null){
			PrintWriter script = response.getWriter();//�ڹٿ��� script ����ϰڴ�.
			script.println("<script>");
			script.println("alert('�α����� �ʿ��մϴ�.')");
			script.println("location.href = 'login.jsp");
			script.println("</script>");
			
		}else{
			//������ �ּ��� �ϳ��� ���� ���� ��� �ڷ� �ѷ�������.
			if(fieldVO.getFieldName() == null || fieldVO.getFieldAddr() == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('������ �ּҸ� �ùٸ��� �Է��� �ּ���.')");
			script.println("history.back()");
			script.println("</script>");
			}else{
				
				fieldDAO fielddao = new fieldDAO();
				int result = fielddao.fieldAdd(fieldVO.getFieldName(), fieldVO.getFieldAddr(), fieldVO.getFieldMemo());
				if(result ==-1){//�����ͺ��̽� ������ �� ���.
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('���� �߰��� �����߽��ϴ�.')");
					script.println("history.back()");
					script.println("</script>");
					
				}
				else{//������ ��� 
					PrintWriter script = response.getWriter();
					script.println("<script>");
				    script.println("location.href = 'fieldlist.jsp'");
					script.println("</script>");
				}
			}
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	%>

</body>
</html>