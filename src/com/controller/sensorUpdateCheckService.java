package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sensorUpdateCheckService")
public class sensorUpdateCheckService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String sensor_seq = request.getParameter("sensor_seq");
		int sensor_seq_int = Integer.parseInt(sensor_seq);
		
		if(sensor_seq_int>0) {
			System.out.println("���� ���� ������ �̵� ����!");
			
			HttpSession session = request.getSession();
			// ���� �� ����
			session.setAttribute("sensor_seq_int_session", sensor_seq_int);
			
			response.sendRedirect("sensorUpdate.jsp");
			
		}else {
			System.out.println("���� ���� ������ �̵� ����!");
		}
		
	}

}
