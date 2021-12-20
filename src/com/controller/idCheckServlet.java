package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.adminDAO;


@WebServlet("/idCheckServlet")
public class idCheckServlet extends HttpServlet {
	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		String admin_id = request.getParameter("admin_id");
		
		adminDAO dao = new adminDAO();
		boolean check = dao.idCheck(admin_id);
		
		//��� ��Ʈ��(���)
		PrintWriter out = response.getWriter();
		//��θ� ���ؼ� ���䵥���͸� ���
		out.print(check);
	}

}
