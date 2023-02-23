package com.jsp.kg;




public class Kgmemberdto {
	//private으로 접근 제한, 테이블의 열이름들, 초기화, 생성자, getter, setter 만들기
	 private String id;
	 private String pwd;
	 private String name;
	 private int age;
	 private String phone;
	
	public Kgmemberdto() {}

	public Kgmemberdto(String id, String pwd, String name, int age, String phone) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.age = age;
		this.phone = phone;
	}
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	
	
	
	
	
	
	
	
	
}
