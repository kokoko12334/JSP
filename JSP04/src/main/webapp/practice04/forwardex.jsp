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
	%>

	<jsp:forward page = "nation.jsp"></jsp:forward>
	<!-- 해당 페이지로 정보랑 같이 토스 -->
	


</body>


</html>