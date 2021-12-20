package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.fieldDAO;
import com.model.fieldVO;

@WebServlet("/safeboxListCheckService")
public class safeboxListCheckService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String field_seq = request.getParameter("field_seq");
		int field_seq_int = Integer.parseInt(field_seq);
		
		if(field_seq_int>0) {
			System.out.println("��� ����Ʈ ������ �̵� ����!");
			
			HttpSession session = request.getSession();
			// ���� �� ����
			session.setAttribute("field_seq_session2", field_seq_int);
			
			response.sendRedirect("safeboxEdit.jsp");
			
		}else {
			System.out.println("��� ����Ʈ ������ �̵� ����!");
		}
		
		
		
		
		
		
		
		
		
		
		
	}

}
