package com.bookcaine.web.entity;

public class TypeView {

	int id;
	String name;
	
	public TypeView() {
		// TODO Auto-generated constructor stub
	}

	public TypeView(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "TypeView [id=" + id + ", name=" + name + "]";
	}
	
	
	
	
}
