package com.jsp.memo;
import java.sql.*;
import java.util.ArrayList;
public class MemoDAO {

	
	//DAO: Data Access Object
	//데이터베이스에 접근하여 CRUD 를 처리하는 객체
	
	// 싱글톤: 단 하나의 객체만 사용하도록 보장
	// 따라서 외부에서는 객체 생성을 제한하도록 함 => 우선 외부에서는 생성 제한 =>접근 제어자는 private을 쓰면 됨.
	
	
	private MemoDAO() {
		
	}
	
	private static MemoDAO instance = new MemoDAO();  //해당 클라스 내부에서 객체를 생성
	
	
	public static MemoDAO getinstance() {
		return instance;
	} //생성된 것을 리턴함. => 그러면 외부에서는 이 리턴 값만 받을 수 있음. 이때 정적 static(서로 공유)를 써야 싱글톤의 의미가 맞음.
	
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private String driver = "oracle.jdbc.OracleDriver";
	private String url =  "jdbc:oracle:thin:@localhost:1521:xe";
	private String uid = "c##JSPUSER";
	private String upw = "jsp123";
	
	
	//db에 접속하여 데이터를 넣는 메소드
	
	public int memoInsert(String nickName, String contents) {
		int result = 0;
		String query = "INSERT INTO MEMO(MEMOID, NICKNAME, CONTENTS)"
				+ "VALUES(MEMO_SEQ.NEXTVAL, ?, ?)";  //?로 간단히 표현
		
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, nickName); //?는 0이 아닌 1부터 시작
			pstmt.setString(2, contents); //?가 먼지 format처럼 지정함
			
			
			
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			
			try {
				
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		
		
		
		return result;
		
		
		
		
		
		
	}
	
	public ArrayList<MemoDTO> memoList(){
		
		ArrayList<MemoDTO> list = new ArrayList<MemoDTO>();
		
		String query = "SELECT * FROM MEMO ORDER BY MEMOID DESC";
		
		
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(query);
				
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int memoid = rs.getInt("MEMOID");
				String nickname = rs.getString("NICKNAME");
				String contents = rs.getString("CONTENTS");
				Timestamp regtime = rs.getTimestamp("REGTIME");
				
				list.add(new MemoDTO(memoid, nickname, contents, regtime));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				
				if(rs != null)rs.close();
				if(conn != null)conn.close();
				if(pstmt != null)pstmt.close();
				
				
			}catch (Exception e2) {
				
			}
		}
		
		
		
		
		
		return list;
		
	}
	
	
	
}
