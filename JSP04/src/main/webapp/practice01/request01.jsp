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
	String StId = request.getParameter("studentID");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String major = request.getParameter("major");
	
	%>

	<h2> 학생 정보</h2>
	<p>학번: <%=StId %></p>
	<p>이름: <%=name %></p>
	<p>나이: <%=age %></p>
	<p>전공: <%=major %></p>
	


</body>


</html>