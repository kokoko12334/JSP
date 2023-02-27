<%@page import="com.jsp.members.MembersDTO"%>
<%@page import="java.sql.Timestamp"%>
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
	<jsp:useBean id = "dto" class = "com.jsp.members.MembersDTO"></jsp:useBean>
	<jsp:setProperty property = "*" name = "dto"></jsp:setProperty>

	<% 
		request.setCharacterEncoding("UTF-8");
		
	
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		Timestamp time = new Timestamp(System.currentTimeMillis());
				
		MembersDTO dto2 = new MembersDTO(name, id, pw, email, time, address);
		
		MembersDAO dao = MembersDAO.getInstance();
		
		boolean check = dao.confirmId(id);
		
		if(check){
		%>
		<script>
			alert("아이디가 중복입니다.");
			window.location = "join.html";
		</script>	
			
		<%
		}else{
			int result = dao.insertMember(dto2);
			
			if(result ==1){
			
				 
			%>
			<script>
				alert("회원가입 성공");
				window.location = "login.jsp";
			
			</script>
		<% }else{ %>
		
			<script>
				alert("실패");
				window.location = "join.html";
			
			</script>
		
		<%} %>
			
	<% } %>
	
	
	
	






</body>

</html>