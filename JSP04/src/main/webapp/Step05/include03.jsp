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
		int x = 100;
	%>
	<h2>include03 페이지</h2>
	<!--  page는 두 번 컴파일 되서 include03, include04는 서로 다른 파일 즉 x를 선언했어도 오류가 남. -->
	<jsp:include page = "include04.jsp"></jsp:include>

	<h2>include03 페이지2</h2>


</body>
</html>