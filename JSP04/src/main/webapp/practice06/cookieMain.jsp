<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>



<body>
	<h1> cookieMain.jsp 페이지입니다. </h1>
	
	<% 
	
	Cookie[] cookies = request.getCookies();

	for(int i = 0; i <cookies.length; i++){
		
		String str = cookies[i].getValue();
		
		if(str.equals("hong")){
			out.print("<h2>"+ str+"님"+ "안녕하세요"+"<br>");
			
			
			}
		
		
	}
	%>
	<a href = "cookieLogout.jsp">로그아웃</a><br>
	<a href = "cookieTest.jsp"> 쿠키 확인 </a>


</body>


</html>