package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class adminDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	adminVO vo = null;
	ArrayList<adminVO> adminall = null;
	

	public void connection() {
	      try {
	    	  Class.forName("org.mariadb.jdbc.Driver");
	          String url = "jdbc:mariadb://211.48.228.15:3306/iot_db";
	          String user="smhrd";;
	          String password="smhrd1234";
	          conn = DriverManager.getConnection(url, user, password);
	      } catch (Exception e) {
	         e.printStackTrace();
	         System.out.println("���� ����");
	      }
	      
	   }
	   
	   public void close() {
	      try {
	         if(rs!=null) {
	            rs.close();
	         }
	         if(psmt!=null) {
	            psmt.close();
	         }
	         if(conn!=null) {
	            conn.close();
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	   }
	 //ȸ������ �޼ҵ�
	   public int join(String admin_id, String admin_pwd,String admin_name,String admin_phone,String admin_email,String admin_dept) {

	      try {
	         connection();
	      
	         String sql = "insert into tbl_admin (admin_id, admin_pwd, admin_name, admin_phone, admin_email, admin_dept) values (?,?,?,?,?,?)";
	         
	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1, admin_id);
	         psmt.setString(2, admin_pwd);
	         psmt.setString(3, admin_name);
	         psmt.setString(4, admin_phone);
	         psmt.setString(5, admin_email);
	         psmt.setString(6, admin_dept);
	            
	         cnt = psmt.executeUpdate();
	      
	      } catch (Exception e) {
	         System.out.println("���� ����!");
	         e.getStackTrace();
	      }finally {
	         close();
	      }
	      return cnt;
	   }
	   //�α��� �޼ҵ�
	   public adminVO login(String admin_id, String admin_pwd) {
		      try {
		         connection();
		         
		         String sql = "select admin_id, admin_pwd, admin_name, admin_phone, admin_email, admin_dept from tbl_admin where admin_id=? and admin_pwd=?";
		         psmt = conn.prepareStatement(sql);
		         psmt.setString(1, admin_id);   
		         psmt.setString(2, admin_pwd);      
		         
		         rs = psmt.executeQuery();
		         
		         if(rs.next()) {
		            System.out.println("�α��� ����!");
		            String get_admin_id = rs.getString("admin_id");
		            String get_admin_pwd = rs.getString("admin_pwd");
		            String admin_name = rs.getString("admin_name");
		            String admin_phone = rs.getString("admin_phone");
		            String admin_email = rs.getString("admin_email");
		            String admin_dept= rs.getString("admin_dept");
		            
		            
		            
		            vo = new adminVO(admin_id, admin_pwd, admin_name, admin_phone, admin_email,admin_dept);
		                  
		         }else {
		            System.out.println("�α��� ����..");
		         }
		         
		      } catch (Exception e) {
		         System.out.println("�α��� ����!");
		         e.printStackTrace();
		      }finally {
		         close();
		      }
		      return vo;
		   }
	   
	 //���� �޼ҵ�
	   public int update(String admin_pwd,String admin_name,String admin_phone,String admin_email,String admin_dept, String admin_id) {
	      try {
	         connection();
	         
	         String sql = "update tbl_admin set admin_pwd = ?, admin_name=?, admin_phone=?, admin_email=?, admin_dept=? where admin_id=?";
	         psmt = conn.prepareStatement(sql);
	         
	         psmt.setString(1, admin_pwd); 
	         psmt.setString(2, admin_name);   
	         psmt.setString(3, admin_phone);
	         psmt.setString(4, admin_email);
	         psmt.setString(5, admin_dept);
	         psmt.setNString(6, admin_id);
	        
	         cnt = psmt.executeUpdate();
	         
	      } catch (Exception e) {
	         System.out.println("���� ����!");
	         e.printStackTrace();
	      }finally {
	         close();
	      }
	      return cnt;
	   }
	 //main �׸� �߰��ϱ� 
	  // �α��� �� �̸���,��ȭ��ȣ,�Ҽ� ��������
	   public ArrayList<adminVO> allMember() {
	      adminall = new ArrayList<adminVO>();      
	      
	      try {
	         connection();
	         
	         String sql = "select admin_email, admin_phone, admin_dept from tbl_admin";
	         psmt = conn.prepareStatement(sql);
	                  
	         rs = psmt.executeQuery();
	         
	         while(rs.next()) {
	            System.out.println("ȸ������ �ҷ����� ����!");
	            
	            String get_email = rs.getString("admin_email");
	            String get_phone = rs.getString("admin_phone");
	            String get_dept = rs.getString("admin_dept");
	            
	            vo = new adminVO(get_email,get_phone, get_dept);
	            adminall.add(vo);
	         }   
	         
	      } catch (Exception e) {
	         System.out.println("ȸ������ �ҷ����� ����!");
	         e.printStackTrace();
	      }finally {
	         close();
	         }
	      return adminall;
	      }
	   
	 //id �ߺ�üũ �޼ҵ�
	   public boolean idCheck(String admin_id) {
	      boolean idcheck = false;
	      
	      try {
	         connection();
	         
	         String sql = "select admin_id from tbl_admin where admin_id=?";
	         psmt = conn.prepareStatement(sql);
	         psmt.setNString(1, admin_id);      
	         
	         rs = psmt.executeQuery();
	         
	         if(rs.next()) {
	            //�Է��� �̸��� ��� �Ұ�
	            System.out.println("���̵� �ߺ�");
	            idcheck = true;
	            
	         }else {
	            //�Է��� �̸��� ��� ����
	            System.out.println("���̵� �ߺ� x");
	            idcheck = false;
	         }
	         
	      } catch (Exception e) {
	         System.out.println("���̵� �ߺ� x");
	         e.printStackTrace();
	      }finally {
	         close();
	      }
	      return idcheck;
	   }
}
