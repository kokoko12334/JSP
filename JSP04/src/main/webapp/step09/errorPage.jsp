<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isErrorPage = "true" %>   <!--  에러 페이지임을 명시 exception 사용가능 -->

<%
	response.setStatus(200);

%>

<!--  사전 세팅 -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>에러가 발생하였습니다. </h2>


	<h2><%=exception.getMessage() %></h2>




</body>
</html>