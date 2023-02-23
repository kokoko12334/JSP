package com.jsp.kg;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class Kgmemberdao {

	private DataSource ds;
	// data source 객체는 connection pool을 관리함
	// 이 객체는 jndi api를 통하여 사용된다.
	// jndi: java nameing & directory interface
	// 이름을가지고 정보(데이터베이스 객체)를 얻을 수 있는 api이다.
	
	
	public Kgmemberdao() {
		
		
		try {
			
			Context context = new InitialContext();
			
			// context는 jndi 서비스를 제공하는 객체
			
			ds = (DataSource)context.lookup("java:comp/env/jdbc/oracle"); //context.xml에 들어가서 이름을 지정
			
		}catch(Exception e){
			e.printStackTrace();
			
		}
		
	}
	
	
	
	public ArrayList<Kgmemberdto> kgmemberlist(){
		
		
		ArrayList<Kgmemberdto> list = new ArrayList<>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement("SELECT * FROM KGMEMBER");
			rs = pstmt.executeQuery(null);
			
			while(rs.next()) {
				String id = rs.getString("ID");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String tel = rs.getString("tel");
				
				
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try {
				if(rs != null)rs.close();
				if(conn != null)conn.close();
				if(pstmt != null)pstmt.close();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		
		return list;
		
		
	}
	
	
	
	
	
	
	
	
	
	
}
