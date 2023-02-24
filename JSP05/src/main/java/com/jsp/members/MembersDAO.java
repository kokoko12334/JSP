package com.jsp.members;
import java.sql.*;
import javax.sql.DataSource;
import javax.naming.*;
public class MembersDAO {

	

	private DataSource ds;

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private MembersDAO() {
		try {
		Context context = new InitialContext();
		ds = (DataSource)context.lookup("java:comp/env/jdbc/oracle"); //context.xml에 들어가서 이름을 지정
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	private static MembersDAO instance = new MembersDAO();
	
	private static MembersDAO getInstance() {
		return instance; 
	}
	

	
	private void close(Connection conn) {
		
		try {
		if(conn != null) {
			conn.close();
		 }
		}catch(Exception e) {
			e.printStackTrace();
		}
	}


	
	private void close(PreparedStatement pstmt) {
		
		try {
		if(conn != null) {
			conn.close();
		 }
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
	
	private void close(ResultSet rs) {
		
		try {
		if(conn != null) {
			conn.close();
		 }
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	//회원가입 후 회원의 데이터를 db에 넣는 메소드
	public int insertMember(MembersDTO dto) {
		int result = 0;
		String query = "INSERT INTO MEMBERS(ID, PW, NAME, EMAIL, ADDRESS) VALUES(?,?,?,?,?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getAddress());
			
			result = pstmt.executeUpdate();
		
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(conn);
		}
		
		
		return result;
		
	}
	
	
	public boolean confirmId(String id) {
		boolean idCheck = false;
		//데이터베이스에서 뽑아서  n까지 확인
		String query = "SELECT ID FROM MEMBERS WHERE ID = ?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				idCheck = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
			close(conn);
		}
		
		
		return idCheck;
		
	}
	
	
	
	
	public int loginCheck(String id, String pw) {
		int result = 0;
		String query = "SELECT PW FROM MEMBERS WHERE ID = ?";
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String dbpw = rs.getString("pw");
				
				if(pw.equals(dbpw)) {
					result = 1;
				}else {
					result = 0;
				}
				
			}else {
				result = -1;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn);
			close(pstmt);
		}
		
		return result;
	}
	
	public MembersDTO getMember(String id) {
		MembersDTO dto = null;
		String query = "SELECT * FROM MEMBERS WHERE ID = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				
			String pw =	rs.getString("PW");
			String name = rs.getString("NAME");
			String email = rs.getString("EMAIL");
			Timestamp regdate = rs.getTimestamp("REGDATE");
			String address = rs.getString("ADDRESS");
			dto = new MembersDTO(id, pw, name, email, regdate, address);	
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
		}
		
		return dto;
	}
	
	public int updateMember(MembersDTO dto) {
		
		int result = 0;
		String query = "UPDATE MEMBERS SET PW = ?, EMAIL = ?, ADDRESS = ? WHERE ID = ?";
		
		
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,  dto.getPw());
			pstmt.setString(2,  dto.getEmail());
			pstmt.setString(3,  dto.getAddress());
			pstmt.setString(4,  dto.getId());
			
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close(pstmt);
			close(conn);
			close(rs);
		}
		
		return result;
		
	}
	
	
	public int deleteMember(String id){
		int result = 0 ;
		
		String  query = "DELETE FROM MEMBERS WHERE ID = ?";
		
		try {
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn);
			close(pstmt);
			
			
		}
		
		return result;
	}
	
	
	

}
