package com.jsp.memo;

import java.sql.Timestamp;

public class MemoDTO {

	// DTO: Data Transfer Object
	// 계층간 데이터 교환을 하기 위한 자바 빈즈(클래스)
	
	
	
	private int memoId;
	private String nickName;
	private String contents;
	private Timestamp regTime;
	
	//기본 생성자
	public MemoDTO() {
		
		
	}


	public MemoDTO(int memoId, String nickName, String contents, Timestamp regTime) {
		super();
		this.memoId = memoId;
		this.nickName = nickName;
		this.contents = contents;
		this.regTime = regTime;
	}


	public int getMemoId() {
		return memoId;
	}


	public void setMemoId(int memoId) {
		this.memoId = memoId;
	}


	public String getNickName() {
		return nickName;
	}


	public void setNickName(String nickName) {
		this.nickName = nickName;
	}


	public String getContents() {
		return contents;
	}


	public void setContents(String contents) {
		this.contents = contents;
	}


	public Timestamp getRegTime() {
		return regTime;
	}


	public void setRegTime(Timestamp regTime) {
		this.regTime = regTime;
	}
	
	
	
	
}
