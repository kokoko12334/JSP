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
	Cookie cookie = new Cookie("cookieName", "cookieValue");
	//쿠키생성: new Cookie(쿠키이름, 쿠키값);
	
	cookie.setMaxAge(60*60);              //초단위 60*60 = 3600초 = 1시간동안 쿠키 유지
	
			
	response.addCookie(cookie);		
	//response객체에 cookie 심기		
				
			
			
%>

<h2> 쿠키가 탑재되었습니다. </h2>

<a href = "cookieGet.jsp"> 쿠키 열기</a>



</body>
</html>