<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body><!--  모든 쿠키 이름 배열 출력 -->


	<%
		Cookie[] cookies = request.getCookies();
		
		for(int i = 0; i<cookies.length; i++){
			
			out.print("<h2>쿠키이름: "+ cookies[i].getName()+"</h2>");
			out.print("<h2>쿠키값: "+ cookies[i].getValue()+"</h2>"+"<br>");
			
			
		}
	
	%>

</body>
</html>