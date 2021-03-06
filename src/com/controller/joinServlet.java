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
		//요청 데이터 인코딩 방식 지정
				request.setCharacterEncoding("euc-kr");
				
				//요청데이터 받아주기
				String admin_id = request.getParameter("admin_id");
				String admin_pwd = request.getParameter("admin_pwd");
				String admin_name = request.getParameter("admin_name");
				String admin_phone = request.getParameter("admin_phone");
				String admin_email = request.getParameter("admin_email");
				String admin_dept = request.getParameter("admin_dept"); 
								 
				
				adminDAO dao = new adminDAO();
				int cnt = dao.join(admin_id, admin_pwd, admin_name, admin_phone, admin_email,admin_dept);
				
				if(cnt>0) {
					System.out.println("가입 성공");
					
					
					
				}else {
					System.out.println("가입 실패..");
					
				}
				//출력 스트링(통로)
				PrintWriter out = response.getWriter();
				//통로를 통해서 응답데이터를 출력
				out.print(cnt);
	}

}
