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
		String food = request.getParameter("food");
		String name = request.getParameter("name");
	
	%>
	<h2>이름: <%=name %></h2>
	<h2>음식: <%=food %></h2>


</body>



</html>