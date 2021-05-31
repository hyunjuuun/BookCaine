package com.bookcaine.web.entity;

public class Rating {
	String memberId;
	int bookId;
	int star;
	
	public Rating() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public Rating(String member_id, int book_id, int star) {
		super();
		this.memberId = member_id;
		this.bookId = book_id;
		this.star = star;
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
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	@Override
	public String toString() {
		return "Rating [member_id=" + memberId + ", book_id=" + bookId + ", star=" + star + "]";
	}
	
	
}
