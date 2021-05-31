package com.bookcaine.web.entity;

public class Admin {

	private int id;
	private String pwd;
	
	public Admin() {
		
	}
	
	public Admin(int id, String pwd) {
		super();
		this.id = id;
		this.pwd = pwd;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	@Override
	public String toString() {
		return "Admin [id=" + id + ", pwd=" + pwd + "]";
	}
	
}
