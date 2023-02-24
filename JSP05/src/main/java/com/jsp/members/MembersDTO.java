package com.jsp.members;

import java.sql.Timestamp;

public class MembersDTO {

	
	private String id;
	private String pw;
	private String name;
	private String email;
	private Timestamp regdate;
	private String address;
	
	
	
	
	public MembersDTO() {
		
	}




	public MembersDTO(String id, String pw, String name, String email, Timestamp regdate, String address) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
		this.regdate = regdate;
		this.address = address;
	}




	public String getId() {
		return id;
	}




	public void setId(String id) {
		this.id = id;
	}




	public String getPw() {
		return pw;
	}




	public void setPw(String pw) {
		this.pw = pw;
	}




	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public Timestamp getRegdate() {
		return regdate;
	}




	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}




	public String getAddress() {
		return address;
	}




	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
