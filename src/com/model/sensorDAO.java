package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class sensorDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	ArrayList<sensorVO> sensor_array = null;
	sensorVO vo1_sensor = null;
	ArrayList<sensorVO> sensor_array_all = null;
	sensorVO vo2_sensor = null;

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
	   
	//���� �߰�
	public int sensorAdd(String sensor_name, String sensor_id, int device_seq) {
		   
		   try {
	         connection();
	      
	         String sql = "insert into tbl_sensor(sensor_name, sensor_id, device_seq) values(?,?,?)";
	         
	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1, sensor_name);
	         psmt.setString(2, sensor_id);
	         psmt.setInt(3, device_seq);
	         
	         cnt = psmt.executeUpdate();
	      
	      } catch (Exception e) {
	         System.out.println("���� ��� ����..");
	         e.getStackTrace();
	      }finally {
	         close();
	      }
	      return cnt;
	   }   
	     
	//���� ���� ������ ���� ����Ʈ �ҷ�����
	public ArrayList<sensorVO> sensorList() {
		sensor_array = new ArrayList<sensorVO>();      
	      
	      try {
	         connection();
	         
	         String sql = "select sensor_name, sensor_id, device_seq from tbl_sensor";
	         psmt = conn.prepareStatement(sql);
	                  
	         rs = psmt.executeQuery();
	         
	         while(rs.next()) {
	            System.out.println("���� ����Ʈ �ҷ����� ����..");
	            
	            String get_sensor_name = rs.getString("sensor_name");
	            String get_sensor_id = rs.getString("sensor_id");
	            int get_device_seq = rs.getInt("device_seq");
	            
	            vo1_sensor = new sensorVO(get_sensor_name, get_sensor_id, get_device_seq);
	            sensor_array.add(vo1_sensor);
	         }   
	         
	      } catch (Exception e) {
	         System.out.println("���� ����Ʈ �ҷ����� ����..");
	         e.printStackTrace();
	      }finally {
	         close();
	         }
	      return sensor_array;
	      
	   }   
	
	//���� ��� ������ ���� ����Ʈ �ҷ�����
		public ArrayList<sensorVO> sensorAllList(int device_seq) {
			sensor_array_all = new ArrayList<sensorVO>();      
		      
		      try {
		         connection();
		         
		         String sql = "select sensor_seq, sensor_name, sensor_id, reg_date, device_seq from tbl_sensor where device_seq=?";
		         psmt = conn.prepareStatement(sql);
		         psmt.setInt(1, device_seq);
		                  
		         rs = psmt.executeQuery();
		         
		         while(rs.next()) {
		            System.out.println("���� ����Ʈ �ҷ����� ����..");
		            
		            int get_sensor_seq = rs.getInt("sensor_seq");
		            String get_sensor_name = rs.getString("sensor_name");
		            String get_sensor_id = rs.getString("sensor_id");
		            String get_reg_date = rs.getString("reg_date");
		            int get_device_seq = rs.getInt("device_seq");		            
		            
		            vo2_sensor = new sensorVO(get_sensor_seq, get_sensor_name, get_sensor_id, get_reg_date, get_device_seq);
		            sensor_array_all.add(vo2_sensor);
		         }   
		         
		      } catch (Exception e) {
		         System.out.println("���� ��ü ����Ʈ �ҷ����� ����..");
		         e.printStackTrace();
		      }finally {
		         close();
		         }
		      return sensor_array_all;
		      
		   }   
	
	//���� ���� ���� 
	public int sensorUpdate(String sensor_name_update, String sensor_id_update, int sensor_seq_int_session) {
	      try {
	         connection();
	         
	         String sql = "update tbl_sensor set sensor_name = ?, sensor_id=? where sensor_seq=?";
	         psmt = conn.prepareStatement(sql);
	            
	         psmt.setString(1, sensor_name_update);      
	         psmt.setString(2, sensor_id_update);  
	         psmt.setInt(3, sensor_seq_int_session);
	                  
	         cnt = psmt.executeUpdate();
	         
	      } catch (Exception e) {
	         System.out.println("���� ���� ���� ����..");
	         e.printStackTrace();
	      }finally {
	         close();
	      }
	      return cnt;
	   }
	
	//���� ���� ����
	public int sensorDelete(int sensor_seq) {
	      try {
	         connection();

	         String sql = "delete from tbl_sensor where sensor_seq=?";
	         psmt = conn.prepareStatement(sql);
	         psmt.setInt(1, sensor_seq);   
	         
	         cnt = psmt.executeUpdate();
	         
	      } catch (Exception e) {
	         System.out.println("���� ���� ���� ����..");
	         e.printStackTrace();
	      }finally {
	         close();
	         }
	      return cnt;
	   }
	
	
}
