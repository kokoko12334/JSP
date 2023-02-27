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

 <% 
 	String id = request.getParameter("id");
 
 	
 	MembersDAO dao = MembersDAO.getInstance();
 	
 	int result = dao.deleteMember(id);
 	
 	if(result == 1){
 	%>
 	<script>
 		alert("탈퇴하였습니다.");
 		
 		window.location("login.jsp");
 	</script>
 		
 	<%} %>
 




</body>
</html>