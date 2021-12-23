package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class noticeDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	ArrayList<noticeVO> notice_array = null;
	noticeVO noticevo = null;
	noticeVO noticevoselect = null;
	
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
	   
	   //�˸��� ��ü ����Ʈ Ȯ�� �޼ҵ�
	   public ArrayList<noticeVO> noticeAllList() {
		   notice_array = new ArrayList<noticeVO>();      
	      
	      try {
	         connection();
	         
	         String sql = "select notice_seq, notice_content, notice_date, device_seq, notice_check from tbl_notice";
	         psmt = conn.prepareStatement(sql);
	         
	                  
	         rs = psmt.executeQuery();
	         
	         while(rs.next()) {
	            System.out.println("�˸��� ����Ʈ �ҷ����� ����..");
	            
	            int get_notice_seq = rs.getInt("notice_seq");
	            String get_notice_content = rs.getString("notice_content");
	            String get_notice_date = rs.getString("notice_date");
	            int get_device_seq = rs.getInt("device_seq");
	            int get_notice_check = rs.getInt("notice_check");
	            
	            noticevo = new noticeVO(get_notice_seq, get_notice_content, get_notice_date, get_device_seq, get_notice_check);
	            notice_array.add(noticevo);
	         }   
	         
	      } catch (Exception e) {
	         System.out.println("�˸��� ��ü ����Ʈ �ҷ����� ����..");
	         e.printStackTrace();
	      }finally {
	         close();
	         }
	      return notice_array;
	      
	   }
	   
	   public String selectOne() {
			String notice_check = null;

			try {
				connection();

				String sql = "select notice_check from tbl_notice where manager_no in (select max(notice_seq) from tbl_notice)";
				psmt = conn.prepareStatement(sql);

				rs = psmt.executeQuery();

				while (rs.next()) {
					System.out.println("�ֽ� ������ �ҷ����� ����!");

					notice_check = rs.getString("notice_check");

				}

			} catch (Exception e) {
				System.out.println("�ֽ� ������ ��ȸ ����!");
				e.getStackTrace();
			} finally {
				close();
			}
			return notice_check;

		}

		   public String notice_check_0(int notice_seq) {
				String notice_check = null;
				try {
					connection();
					
					String sql = "update tbl_notice set notice_check='0' where notice_seq=?";
					psmt = conn.prepareStatement(sql);
					psmt.setInt(1, notice_seq);
				
					psmt.executeUpdate();
				} catch (Exception e) {
					System.out.println("0���� ���� ����!");
					e.printStackTrace();
				}finally {
					close();
				}
				return notice_check;
			}

		public int gasOne() {
			int alert_cnt = 0;

			try {
				connection();

				String sql = "select alert_cnt from tbl_notice where notice_seq in (select max(notice_seq) from tbl_notice);";
				psmt = conn.prepareStatement(sql);

				rs = psmt.executeQuery();

				while (rs.next()) {
					System.out.println("�ֽ� ������ �ҷ����� ����!");

					alert_cnt = rs.getInt("alert_cnt");
					
				}
			} catch (Exception e) {
				System.out.println("�ֽ� ������ ��ȸ ����!");
				e.getStackTrace();
			} finally {
				close();
			}

			return alert_cnt;

		}

		public void Alert_cnt_1() {

			try {
				connection();

				String sql = "update tbl_notice set alert_cnt='0' where notice_seq in (select max(notice_seq) from tbl_notice)";
				psmt = conn.prepareStatement(sql);
				

				psmt.executeUpdate();
			} catch (Exception e) {
				System.out.println("���� ����!");
				e.printStackTrace();

			} finally {
				close();
			}

		}
	 
}
