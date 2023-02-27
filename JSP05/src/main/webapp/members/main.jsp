<%@page import="com.jsp.members.MembersDTO"%>
<%@page import="com.jsp.members.MembersDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2> 메인화면입니다. </h2><br>
	
	<% 
		String id = request.getParameter("id");
		MembersDAO dao = MembersDAO.getInstance();
	
		MembersDTO dto = dao.getMember(id);
		
		String name = dto.getName();
		String addr = dto.getAddress();
		String email = dto.getEmail();
		
	%>
	
	<h2>이름: <%=name %></h2><br>
	<h2>아이디: <%=id %></h2><br>
	<h2>이메일: <%=email %></h2><br>
	<h2>주소: <%=addr %></h2><br>
	
	
	
	<a href  = "logOut.jsp"> 로그아웃</a>
	<a href = "delete.jsp?id= <%=id%>"> 계정 삭제</a>
	<a href = "modify.jsp"> 비밀번호 수정</a>


</body>
</html>