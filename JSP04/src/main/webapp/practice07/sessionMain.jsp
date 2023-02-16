<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body>
	<!--  getAttributeNames 메소드로 이름 받고 값을 각각 출력 -->
	<!--  세션값이 sung과 일치한다면 환영 -->
	
	<%
		Enumeration<String> e = session.getAttributeNames();
		String name;
		String value;
		while(e.hasMoreElements()){
			name = e.nextElement();
			
			value = (String)session.getAttribute(name);
			if(value.equals("sung")){
				out.print("<h2>" + value+"님 안녕하세요."+"<br>");
				break;
			}
		}
		
	
	
	%>
	
	<a href = "sessionLogout.jsp"> 로그아웃</a><br>
	<a href = "sessionTest.jsp"> 세션 목록확인</a>




</body>


</html>