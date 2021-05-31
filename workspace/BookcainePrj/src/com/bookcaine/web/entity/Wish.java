package com.bookcaine.web.entity;

public class Wish {
	String memberId;
	int bookId;
	
	public Wish() {
		// TODO Auto-generated constructor stub
	}
	
	public Wish(String member_id, int book_id) {
		super();
		this.memberId = member_id;
		this.bookId = book_id;
	}

	public String getMember_id() {
		return memberId;
	}
	public void setMember_id(String member_id) {
		this.memberId = member_id;
	}
	public int getBook_id() {
		return bookId;
	}
	public void setBook_id(int book_id) {
		this.bookId = book_id;
	}
	
	
}
