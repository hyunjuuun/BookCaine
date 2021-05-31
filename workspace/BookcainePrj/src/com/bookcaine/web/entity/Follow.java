package com.bookcaine.web.entity;

public class Follow {
	private String followingMember;
	private String followedMember;
	
	
	public Follow() {
		
	}
	@Override
	public String toString() {
		return "Follow [followingMember=" + followingMember + ", followedMember=" + followedMember + "]";
	}
	
	public String getFollowingMember() {
		return followingMember;
	}
	
	public void setFollowingMember(String followingMember) {
		this.followingMember = followingMember;
	}
	
	public String getFollowedMember() {
		return followedMember;
	}
	
	public void setFollowedMember(String followedMember) {
		this.followedMember = followedMember;
	}
	
	
}
