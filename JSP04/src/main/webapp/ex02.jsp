<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
		Date date = new Date();
	
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 ss초");
		
		String date2 = format1.format(date);
	%>
	
	<h2><%=date2 %></h2>
	
</body>

</html>