package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class boardDAO {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		int cnt = 0;
		ArrayList<boardVO> board_array = null;
		boardVO vo_board = null;
		boardVO vo2_board = null;
		boardVO vo3_board = null;
		ArrayList<boardVO> boardall = null;
		
		
		
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
		   //���� ���� �ۼ� �޼ҵ�
		   public int boardwrite(String mnt_title, String mnt_content,String mnt_file,int device_seq, String admin_id) {
			   try {
			         connection();
			         
			   String sql = "insert into tbl_device_mnt (mnt_title, mnt_content, mnt_file,device_seq,admin_id) values (?,?,?,?,?)";
		         psmt = conn.prepareStatement(sql);
		 
		         psmt.setString(1, mnt_title);
		         psmt.setString(2, mnt_content);
		         psmt.setString(3, mnt_file);
		         psmt.setInt(4, device_seq);
		         psmt.setString(5, admin_id);
		         
		         cnt = psmt.executeUpdate();
		         
		      } catch (Exception e) {
		         System.out.println("���� ���� �ۼ� ����!");
		         e.printStackTrace();
		      }finally {
		         close();
		      }
		      return cnt;
		   }
		   
		   	// ���� ����Ʈ Ȯ�� �޼ҵ�
		   	public ArrayList<boardVO> boardArrayList() {
			   boardall = new ArrayList<boardVO>();      
		      
		      try {
		         connection();
		         
		         String sql = "select mnt_seq, mnt_title, admin_id, mnt_date from tbl_device_mnt";
		         psmt = conn.prepareStatement(sql);
		         
		                  
		         rs = psmt.executeQuery();
		         
		         while(rs.next()) {
		            System.out.println("���� ���� ����Ʈ �ҷ����� ����..");
		            
		            int get_mnt_seq = rs.getInt("mnt_seq");
		            String get_mnt_title = rs.getString("mnt_title");
		            String get_admin_id = rs.getString("admin_id");
		            String get_mnt_date = rs.getString("mnt_date");
		            
		            vo_board = new boardVO(get_mnt_seq, get_mnt_title, get_admin_id, get_mnt_date);
		            
		            boardall.add(vo_board);
		         }   
		         
		      } catch (Exception e) {
		         System.out.println("���� ���� ����Ʈ �ҷ����� ����..");
		         e.printStackTrace();
		      }finally {
		         close();
		         }
		      return boardall;
		      
		   }
		   	
		   	//���� ���� ���� �޼ҵ�
		   	public int boardedit(String mnt_title,int device_seq,String mnt_file,String mnt_content,int mnt_seq) {
			      try {
			         connection();
			         
			         String sql = "update tbl_device_mnt set mnt_title = ?, device_seq=? ,mnt_file=? , mnt_content=? where mnt_seq=?";
			         psmt = conn.prepareStatement(sql);
			         
			         psmt.setString(1, mnt_title); 
			         psmt.setInt(2, device_seq); 
			         psmt.setString(3, mnt_file);
			         psmt.setString(4, mnt_content);   
			         psmt.setInt(5, mnt_seq);
			     
			        
			         cnt = psmt.executeUpdate();
			         
			      } catch (Exception e) {
			         System.out.println("���� ���� ����!");
			         e.printStackTrace();
			      }finally {
			         close();
			      }
			      return cnt;
			   }
		  
		 // ���� ���� ���� �޼ҵ�
			public int boardDelete(int mnt_seq_int) {
			      try {
			         connection();

			         String sql = "delete from tbl_device_mnt where mnt_seq=?";
			         psmt = conn.prepareStatement(sql);
			         psmt.setInt(1, mnt_seq_int);   
			         
			         cnt = psmt.executeUpdate();
			         
			      } catch (Exception e) {
			         System.out.println("���� ���� ���� ����..");
			         e.printStackTrace();
			      }finally {
			         close();
			         }
			      return cnt;
			   }
			
			// ���� ���� one select(������������ ������)
			public boardVO board_one(int mnt_seq) {
		         
	              try {
	                 connection();
	                 
	                 String sql = "select mnt_title,device_seq,mnt_content,mnt_file from tbl_device_mnt where mnt_seq=?";
	                 psmt = conn.prepareStatement(sql);
	                          
	                 psmt.setInt(1, mnt_seq);  
	                 
	                 rs = psmt.executeQuery();
	                 
	                 while(rs.next()) {
	                    System.out.println("��������  �ҷ����� ����..");
	                    
	                    String get_mnt_title = rs.getString("mnt_title");
	                    String get_mnt_content = rs.getString("mnt_content");
	                    String get_mnt_file = rs.getString("mnt_file");
	                    int get_device_seq = rs.getInt("device_seq");
	                    
	                    vo2_board = new boardVO(get_mnt_title,get_mnt_content,get_mnt_file,get_device_seq);
	                 }   
	                 
	              } catch (Exception e) {
	                 System.out.println("��������  �ҷ����� ����..");
	                 e.printStackTrace();
	              }finally {
	                 close();
	                 }
	              return vo2_board;
	              
	           }   
			
			// ���� ���� one select(������������ ������)
			public boardVO board_all(int mnt_seq) {
		         
	              try {
	                 connection();
	                 
	                 String sql = "select mnt_seq, mnt_title,mnt_content,mnt_file, device_seq, admin_id, mnt_date from tbl_device_mnt where mnt_seq=?";
	                 psmt = conn.prepareStatement(sql);
	                          
	                 psmt.setInt(1, mnt_seq);  
	                 
	                 rs = psmt.executeQuery();
	                 
	                 while(rs.next()) {
	                    System.out.println("��������  �ҷ����� ����..");
	                    
	                    int get_mnt_seq = rs.getInt("mnt_seq");
	                    String get_mnt_title = rs.getString("mnt_title");
	                    String get_mnt_content = rs.getString("mnt_content");
	                    String get_mnt_file = rs.getString("mnt_file");
	                    int get_device_seq = rs.getInt("device_seq");
	                    String get_admin_id = rs.getString("admin_id");
	                    String get_mnt_date = rs.getString("mnt_date");
	                    
	                    vo3_board = new boardVO(get_mnt_seq, get_mnt_title, get_mnt_content, get_mnt_file, get_device_seq, get_admin_id, get_mnt_date);
	                 }   
	                 
	              } catch (Exception e) {
	                 System.out.println("��������  �ҷ����� ����..");
	                 e.printStackTrace();
	              }finally {
	                 close();
	                 }
	              return vo3_board;
	              
	           }   
				
 }
