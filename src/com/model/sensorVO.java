package com.model;

public class sensorVO {

	private int sensor_seq;
	private String sensor_name;
	private String sensor_id;
	private String reg_date;
	private String admin_id;
	private int device_seq;
	
	//��ü ������
	public sensorVO(int sensor_seq, String sensor_name, String sensor_id, String reg_date, String admin_id,
			int device_seq) {
		super();
		this.sensor_seq = sensor_seq;
		this.sensor_name = sensor_name;
		this.sensor_id = sensor_id;
		this.reg_date = reg_date;
		this.admin_id = admin_id;
		this.device_seq = device_seq;
	}
	
	//���� �߰� ������, ���� ��ü ����Ʈ Ȯ�� ������
	public sensorVO(int sensor_seq, String sensor_name, String sensor_id, String reg_date, int device_seq) {
		super();
		this.sensor_seq = sensor_seq;
		this.sensor_name = sensor_name;
		this.sensor_id = sensor_id;
		this.reg_date = reg_date;
		this.device_seq = device_seq;
	}
	
	// ���� ���� ������ ������
	public sensorVO(String sensor_name, String sensor_id, int device_seq) {
		super();
		this.sensor_name = sensor_name;
		this.sensor_id = sensor_id;
		this.device_seq = device_seq;
	}


	public int getSensor_seq() {
		return sensor_seq;
	}

	
	public void setSensor_seq(int sensor_seq) {
		this.sensor_seq = sensor_seq;
	}

	public String getSensor_name() {
		return sensor_name;
	}

	public void setSensor_name(String sensor_name) {
		this.sensor_name = sensor_name;
	}

	public String getSensor_id() {
		return sensor_id;
	}

	public void setSensor_id(String sensor_id) {
		this.sensor_id = sensor_id;
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

	public int getDevice_seq() {
		return device_seq;
	}

	public void setDevice_seq(int device_seq) {
		this.device_seq = device_seq;
	}
	
	
	
}
