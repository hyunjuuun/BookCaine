package com.bookcaine.web.entity;

public class Author {

	private String name;
	private int id;
	private String details;
	
	public Author() {
		// TODO Auto-generated constructor stub
	}

	public Author(String name, int id, String details) {
		super();
		this.name = name;
		this.id = id;
		this.details = details;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	@Override
	public String toString() {
		return "Author [name=" + name + ", id=" + id + ", details=" + details + "]";
	}
	
	
}
