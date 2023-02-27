<%@page import="com.jsp.members.MembersDAO"%>
<%@page import="com.jsp.members.MembersDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% 
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MembersDAO dao = MembersDAO.getInstance();
		int result = dao.loginCheck(id, pw);
		
		if(result == -1){
			System.out.println("아이디 없음");
			response.sendRedirect("login.jsp");
		}else if(result == 0){
			System.out.println("비밀번호 틀림");
			response.sendRedirect("login.jsp");
		}else{
			session.setAttribute("id", id);
			response.sendRedirect("main.jsp?id="+id);
		}
		
		
	
	%>



</body>
</html>