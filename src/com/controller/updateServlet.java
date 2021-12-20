package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.adminDAO;
import com.model.adminVO;

@WebServlet("/updateServlet")
public class updateServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("euc-kr");
		
		HttpSession session = request.getSession(); //���ǰ�ü ����
		adminVO vo = (adminVO)session.getAttribute("admin"); //���� �α����� ������� ����
		
		String admin_id = vo.getAdmin_id();
		//������ ����� ����
		String admin_pwd = request.getParameter("admin_pwd");
		String admin_name = request.getParameter("admin_name");
		String admin_phone = request.getParameter("admin_phone");
		String admin_email = request.getParameter("admin_email");
		String admin_dept = request.getParameter("admin_dept");
	
		// String user_no = request.getParameter("user_no");
		

		adminDAO dao = new adminDAO();
		int cnt = dao.update(admin_pwd, admin_name, admin_phone, admin_email, admin_dept, admin_id);
		
		if(cnt>0) {
			System.out.println("���� ����");
			
			vo = new adminVO(admin_pwd, admin_name, admin_phone, admin_email, admin_dept);
			session.setAttribute("admin", vo); //������ ������ ����
			
			response.sendRedirect("notice.jsp");
		}else {
			System.out.println("���� ����");
			response.sendRedirect("mypage.jsp");
		}
	}

}
