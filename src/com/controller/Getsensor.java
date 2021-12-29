package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.GasDAO;
import com.model.GasVO;
import com.google.gson.JsonArray;
import com.google.gson.Gson;

@WebServlet("/Getsensor")
public class Getsensor extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		GasDAO dao = new GasDAO();
	      ArrayList<GasVO> cnt = dao.gasData();
	      JsonArray jarray = new JsonArray();
	      
	      
	      PrintWriter out = response.getWriter();
	      Gson gson = new Gson();
	      for(int i=0;i<cnt.size();i++) {
	         jarray.add(gson.toJson(cnt.get(i)));
	      }
	           
	      out.print(jarray);
	      
	}

}
