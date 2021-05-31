package com.bookcaine.web.entity;

import java.util.Date;

public class Gathering {
	private int id;
	private String title;
	private Date regDate;
	private int adminId;
	private int bookdId;
	
	public Gathering() {
		
	}
	
	public Gathering(int id, String title, Date regDate, int adminId, int bookdId) {
		super();
		this.id = id;
		this.title = title;
		this.regDate = regDate;
		this.adminId = adminId;
		this.bookdId = bookdId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public int getBookdId() {
		return bookdId;
	}

	public void setBookdId(int bookdId) {
		this.bookdId = bookdId;
	}

	@Override
	public String toString() {
		return "Gathering [id=" + id + ", title=" + title + ", regDate=" + regDate + ", adminId=" + adminId
				+ ", bookdId=" + bookdId + "]";
	}
	
}
