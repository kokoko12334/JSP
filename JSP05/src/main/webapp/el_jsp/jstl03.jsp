<%@page import="com.jsp.kg.Kgmemberdto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>  
<%@page import="com.jsp.kg.Kgmemberdao"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
	
	
	 --%>

	<% 
		Kgmemberdao dao = new Kgmemberdao();
		
		ArrayList<Kgmemberdto> list = dao.kgmemberlist();
		 
		request.setAttribute("members", list);
		
		
	%>
	<c:forEach var = "member" items = "${members}">
	
		<p> 아이디: ${member.id }, 비밀번호: ${member.pwd}
			이름: ${member.name }, 나이: ${member.age}, 번호: ${member.phone}	
		</p> 
	
	
	</c:forEach>
	
	
	
	
	
	
	
</body>
</html>