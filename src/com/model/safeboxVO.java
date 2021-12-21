package com.model;

public class safeboxVO {
	
	private int device_seq;
	private String device_id;
	private String device_location;
	private String reg_date;
	private String admin_id;
	
	//��ü ������ 
	public safeboxVO(int device_seq, String device_id, String device_location, String reg_date,
			String admin_id) {
		super();
		this.device_seq = device_seq;
		this.device_id = device_id;
		this.device_location = device_location;
		this.reg_date = reg_date;
		this.admin_id = admin_id;
	}
	
	//���� �߰� �������� ��� ����Ʈ ������
	public safeboxVO(int device_seq, String device_id) {
		super();
		this.device_seq = device_seq;
		this.device_id = device_id;
	}
	
	//���� ��ü ����Ʈ ������
	public safeboxVO(int device_seq, String device_id, String device_location, String reg_date) {
		super();
		this.device_seq = device_seq;
		this.device_id = device_id;
		this.device_location = device_location;
		this.reg_date = reg_date;
	}

	public int getDevice_seq() {
		return device_seq;
	}

	public safeboxVO(String device_id, String device_location) {
		super();
		this.device_id = device_id;
		this.device_location = device_location;
	}

	public void setDevice_seq(int device_seq) {
		this.device_seq = device_seq;
	}

	public String getDevice_id() {
		return device_id;
	}

	public void setDevice_id(String device_id) {
		this.device_id = device_id;
	}

	public String getDevice_location() {
		return device_location;
	}

	public void setDevice_location(String device_location) {
		this.device_location = device_location;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	
	
	
	
	
	
}
