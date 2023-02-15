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
		String country = request.getParameter("country");
	%>
	
	
	<h2>가고싶은 나라: <%=country %></h2>


</body>


</html>