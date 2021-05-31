package com.bookcaine.web.entity;

import java.util.Date;

public class Review {
	private int id;
	private String writerId;
	private int bookId;
	private String content;
	private Date regDate;
	private String nickname;
	// 날짜별로 저장하는 저장소 만들고 + 쿼리를 날짜별로 해서 넣어주기  

	public Review() {

	}

	public Review(int id, String writerId, int bookId, String content, Date regDate, String nickname) {
		super();
		this.id = id;
		this.writerId = writerId;
		this.bookId = bookId;
		this.content = content;
		this.regDate = regDate;
		this.nickname = nickname;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getWriterId() {
		return writerId;
	}

	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	public String getNickname() {
		return nickname;
	}
	
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "{\"id=\":" + id + ", \"writerId\":\"" + writerId + "\", \"bookId\":\"" + bookId
				+ "\", \"content\":\"" + content + "\", \"regDate\":\"" + regDate + "\", \"nickname\":\"" + nickname + "\"}";
	}

}
