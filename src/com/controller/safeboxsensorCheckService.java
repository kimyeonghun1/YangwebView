package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/safeboxsensorCheckService")
public class safeboxsensorCheckService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String safebox_seq = request.getParameter("safebox_seq");
		int safebox_seq_int = Integer.parseInt(safebox_seq);
		
		if(safebox_seq_int>0) {
			System.out.println("���-���� ��� ������ �̵� ����!");
			
			HttpSession session = request.getSession();
			// ���� �� ����
			session.setAttribute("safebox_seq_int_session", safebox_seq_int);
			
			response.sendRedirect("sensorList.jsp");
			
		}else {
			System.out.println("���-���� ��� ������ �̵� ����!");
		}
		
		
		
	}

}
