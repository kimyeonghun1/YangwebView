package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class fieldDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	fieldVO vo1_field = null;
	fieldVO vo2_field = null;
	fieldVO vo3_field = null;
	fieldVO vo4_field = null;
	ArrayList<fieldVO> array_field_all = null;
	String site_name;

	// 커넥션 함수 생성
	public void connection() {

		try {
			// 1. 드라이버 동적 로딩
			Class.forName("org.mariadb.jdbc.Driver");//드라이버에 접속할수 있게 해주는 라이브러리
			String url = "jdbc:mariadb://211.48.228.15:3306/iot_db";
			String user = "smhrd";
			String password = "smhrd1234";
			// 2. 데이터 베이스 연결 객채(Connection) 생성
			
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("연결실패");
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
	
	//현장 추가
	 public int fieldAdd(String field_name, String field_addr,String field_file, String field_memo) {

	      //받아온 값을 db 테이블에 삽입
	      try {
	         connection();
	      
	         String sql = "insert into site_loc(site_name, site_addr,site_file, site_memo) values(?,?,?,?)";
	         
	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1, field_name);
	         psmt.setString(2, field_addr);
	         psmt.setString(3, field_file);
	         psmt.setString(4, field_memo);

	         cnt = psmt.executeUpdate();
	      
	      } catch (Exception e) {
	         System.out.println("추가 실패..");
	         e.getStackTrace();//해당 예외가 출력된다.
	      }finally {
	         close();
	      }
	      return cnt;
	   }
	 
	 //현장 리스트 확인
	 public ArrayList<fieldVO> fieldAllList() {
	       array_field_all = new ArrayList<fieldVO>();      
	            
	            try {
	               connection();
	               
	               String sql = "select site_seq, site_name, site_addr, site_memo, site_file from site_loc";
	               psmt = conn.prepareStatement(sql);
	                        
	               rs = psmt.executeQuery();
	               
	               while(rs.next()) {
	                  System.out.println("현장 리스트 불러오기 성공..");
	                  
	                  int get_site_seq = rs.getInt("site_seq");
	                  String get_site_name = rs.getString("site_name");
	                  String get_site_addr = rs.getString("site_addr");
	                  String get_site_memo = rs.getString("site_memo");
	                  String get_site_file = rs.getString("site_file");
	                  
	                  vo1_field = new fieldVO(get_site_seq, get_site_name, get_site_addr, get_site_memo, get_site_file);
	                  array_field_all.add(vo1_field);
	               }   
	               
	            } catch (Exception e) {
	               System.out.println("현장 전체 리스트 불러오기 실패..");
	               e.printStackTrace();
	            }finally {
	               close();
	               }
	            return array_field_all;
	            
	         }   
	 
	 //현장 one select 확인
	 public fieldVO fieldOne(int site_seq) {
		 
		      try {
		         connection();
		         
		         String sql = "select site_name from site_loc where site_seq=?";
		         psmt = conn.prepareStatement(sql);
		                  
		         psmt.setInt(1, site_seq);  
		         
		         rs = psmt.executeQuery();
		         
		         while(rs.next()) {
		            System.out.println("현장one 이름 불러오기 성공..");
		            
		            String get_site_name = rs.getString("site_name");
		            
		            vo2_field = new fieldVO(get_site_name);
		         }   
		         
		      } catch (Exception e) {
		         System.out.println("현장one 이름 불러오기 실패..");
		         e.printStackTrace();
		      }finally {
		         close();
		         }
		      return vo2_field;
		      
		   }   
	
	 //현장 정보 수정
	 public int fieldUpdate(String field_name, String field_addr, String field_memo, int site_seq) {
	      try {
	         connection();
	         
	         String sql = "update site_loc set site_name = ?, site_addr=?, site_memo=? where site_seq=?";
	         psmt = conn.prepareStatement(sql);
	            
	         psmt.setString(1, field_name);      
	         psmt.setString(2, field_addr);   
	         psmt.setString(3, field_memo);
	         psmt.setInt(4, site_seq);
	                  
	         cnt = psmt.executeUpdate();
	         
	      } catch (Exception e) {
	         System.out.println("현장 정보 수정 실패..");
	         e.printStackTrace();
	      }finally {
	         close();
	      }
	      return cnt;
	   }
		 
	 	//현장 정보 삭제
		public int fieldDelete(int field_seq_int) {
		      try {
		         connection();

		         String sql = "delete from site_loc where site_seq=?";
		         psmt = conn.prepareStatement(sql);
		         psmt.setInt(1, field_seq_int);   
		         
		         cnt = psmt.executeUpdate();
		         
		      } catch (Exception e) {
		         System.out.println("현장 삭제 실패..");
		         e.printStackTrace();
		      }finally {
		         close();
		         }
		      return cnt;
		   }	 

		//현장 one select 확인
	      public fieldVO fieldName_Addr(int site_seq) {
	         
	              try {
	                 connection();
	                 
	                 String sql = "select site_name, site_addr from site_loc where site_seq=?";
	                 psmt = conn.prepareStatement(sql);
	                          
	                 psmt.setInt(1, site_seq);  
	                 
	                 rs = psmt.executeQuery();
	                 
	                 while(rs.next()) {
	                    System.out.println("현장Name_Addr  불러오기 성공..");
	                    
	                    String get_site_name = rs.getString("site_name");
	                    String get_site_addr = rs.getString("site_addr");
	                    
	                    vo3_field = new fieldVO(get_site_name, get_site_addr);
	                 }   
	                 
	              } catch (Exception e) {
	                 System.out.println("현장Name_Addr  불러오기 실패..");
	                 e.printStackTrace();
	              }finally {
	                 close();
	                 }
	              return vo3_field;
	              
	           }   
	      
	      public fieldVO field_one(int site_seq) {
	          
	          try {
	             connection();
	             
	             String sql = "select site_name, site_addr, site_file, site_memo from site_loc where site_seq=?";
	             psmt = conn.prepareStatement(sql);
	                      
	             psmt.setInt(1, site_seq);  
	             
	             rs = psmt.executeQuery();
	             
	             while(rs.next()) {
	                System.out.println("현장one  불러오기 성공..");
	                
	                String get_site_name = rs.getString("site_name");
	                String get_site_addr = rs.getString("site_addr");
	                String get_site_file = rs.getString("site_file");
	                String get_site_memo = rs.getString("site_memo");
	                
	                vo4_field = new fieldVO(get_site_name, get_site_addr, get_site_file, get_site_memo);
	             }   
	             
	          } catch (Exception e) {
	             System.out.println("현장one  불러오기 실패..");
	             e.printStackTrace();
	          }finally {
	             close();
	             }
	          return vo4_field;
	          
	       }  
	      
}
