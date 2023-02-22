package com.java.jsp;

public class Student {
	//자바 빈 규약
	// 1. 빈이 퍀지화 되어이썽야 한다.
	// 2, 기본생성자를 반드시 가지고 있어야 한다.
	//멤버변수의 접근제한자는 private 
	// 멤버변수의 전급하기 위한 public getter setter 멧드가 존재해야 한다.
	
	
	private int studentID;
	private String name;
	private int age;
	private int grade;
	
	public Student() {}

	
	public int getStudentID() {
		return studentID;
	}

	public void setStudentID(int studentID) {
		this.studentID = studentID;
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

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	
	
	

}
