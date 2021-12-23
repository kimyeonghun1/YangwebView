package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.adminDAO;
import com.model.adminVO;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");

		String admin_id = request.getParameter("admin_id");
		String admin_pwd = request.getParameter("admin_pwd");
		

		adminDAO dao = new adminDAO();
		adminVO vo = dao.login(admin_id, admin_pwd);
		

		if (vo != null) {
			
			// ���� ��ü ����
			HttpSession session = request.getSession();
			// ���� �� ����
			session.setAttribute("admin", vo);

			
		} else {
			
		}
		
		//��� ��Ʈ��(���)
				PrintWriter out = response.getWriter();
				//��θ� ���ؼ� ���䵥���͸� ���
				out.print(vo);
	}

}
