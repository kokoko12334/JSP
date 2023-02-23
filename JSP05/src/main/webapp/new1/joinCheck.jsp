<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>Insert title here</title>

</head>




<body>

	<%!
		private String id, pwd, name, tel;
		private int age;
	
		
		Connection conn;
		Statement stmt;
		ResultSet rs;
		String driver = "oracle.jdbc.OracleDriver";
		String url =  "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "c##JSPUSER";
		String upw = "jsp123";
	%>
	
	<% 
		request.setCharacterEncoding("UTF-8");
		
		id = request.getParameter("id");
		pwd = request.getParameter("pwd");
		name = request.getParameter("name");
		tel = request.getParameter("tel");
		String ageStr = request.getParameter("age");
		
		age = Integer.parseInt(ageStr);
		
		
		String query = "INSERT INTO KGMEMBER(ID, PWD, NAME, AGE, TEL)"
				+ " VALUES('"+ id +"', '"+ pwd +"','"+ name +"', "+ age +", '"+ tel +"')";
		
		
	
		try{
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url, uid, upw);
			
			stmt = conn.createStatement();
			int su = stmt.executeUpdate(query);
			
			if(su == 1){
				System.out.println("insert 성공");
				response.sendRedirect("joinForm.html");
			}else{
				System.out.println("insert 실패");
				response.sendRedirect("joinForm.html");
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}
		
	
	
	
	%>
	




</body>



</html>