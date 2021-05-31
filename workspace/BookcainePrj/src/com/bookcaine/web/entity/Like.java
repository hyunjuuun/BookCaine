package com.bookcaine.web.entity;

public class Like {
	private String memeber_id;
	private String review_id;
	
	
	public Like(String memeber_id, String review_id) {
		super();
		this.memeber_id = memeber_id;				
		this.review_id =review_id;
	}
	
	public String getMemeber_id() {
		return memeber_id;
	}
	public String getReview_id() {
		return review_id;
	}
	
	
}
