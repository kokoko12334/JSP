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
		out.print("서버: " + request.getServerName()+"<br>");
		out.print("컨택스트 패스 : " + request.getContextPath() + "<br>");
		out.print("포트번호 : " + request.getServerPort() + "<br>");
		out.print("요청방식: " + request.getMethod() + "<br>");
		out.print("프로토콜: " + request.getProtocol() + "<br>");
		out.print("URL: " + request.getRequestURL() + "<br>");
		out.print("URI: " + request.getRequestURI() + "<br>");
		
	%>


</body>
</html>