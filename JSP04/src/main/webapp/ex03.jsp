<%@page import="java.util.Random"%>
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
		public int ran(){
		int num = (int) Math.random()*10+1;
		return num;
	}
		
	
	%>
	
	<%
		
	%>
	
	<h2><%= ran() %></h2>
	



</body>







</html>