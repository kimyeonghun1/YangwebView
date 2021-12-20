package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.adminDAO;


@WebServlet("/joinServlet")
public class joinServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//��û ������ ���ڵ� ��� ����
				request.setCharacterEncoding("euc-kr");
				
				//��û������ �޾��ֱ�
				String admin_id = request.getParameter("admin_id");
				String admin_pwd = request.getParameter("admin_pwd");
				String admin_name = request.getParameter("admin_name");
				String admin_phone = request.getParameter("admin_phone");
				String admin_email = request.getParameter("admin_email");
				String admin_dept = request.getParameter("admin_dept"); 
								 
				
				adminDAO dao = new adminDAO();
				int cnt = dao.join(admin_id, admin_pwd, admin_name, admin_phone, admin_email,admin_dept);
				
				if(cnt>0) {
					System.out.println("���� ����");
					
					//forward ������� ������ �̵�
					RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
					
					//request������ ����ؾ��� ������ ����
					request.setAttribute("admin_id", admin_id);
					
					//������ �̵��� �� request, response ��ü ����				
					rd.forward(request, response);
					
					//response.sendRedirect("join_success.jsp?email="+email);
					//������Ʈ�� ������� ������ ���� > ���� ���� getParameter()�� 
					
				}else {
					System.out.println("���� ����..");
					response.sendRedirect("notice.jsp");
				}
				//��� ��Ʈ��(���)
				PrintWriter out = response.getWriter();
				//��θ� ���ؼ� ���䵥���͸� ���
				out.print(cnt);
	}

}
