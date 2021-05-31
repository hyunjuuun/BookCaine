package com.bookcaine.web.entity;

public class Attend {
	String memberId;
	int gatheringId;
	
	public Attend() {
		// TODO Auto-generated constructor stub
	}
	
	public Attend(String member_id, int gathering_id) {
		super();
		this.memberId = member_id;
		this.gatheringId = gathering_id;
	}

	public String getMember_id() {
		return memberId;
	}
	public void setMember_id(String member_id) {
		this.memberId = member_id;
	}
	public int getGathering_id() {
		return gatheringId;
	}
	public void setGathering_id(int gathering_id) {
		this.gatheringId = gathering_id;
	}
	
	
}
