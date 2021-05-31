package com.bookcaine.web.entity;

import java.util.Date;

public class Comment {
	private int id;
	private String content;
	private Date regdate;
	private String member_id;
	private String review_id;
	
	public Comment() {
		// TODO Auto-generated constructor stub
	}
	
	public Comment(int id,String content,Date regdate,Date regdate1, String member_id,String review_id) {
		super();
		this.id = id;
		this.content = content;
		this.regdate = regdate;
		this.review_id = review_id;
	}
	
	public int getId() {
		return id;
	}
	public String getContent() {
		return content;
	}
	public String getMember_id() {
		return member_id;
	}
	public Date getRegdate() {
		return regdate;
	}
	public String getReview_id() {
		return review_id;
	}
	
}


