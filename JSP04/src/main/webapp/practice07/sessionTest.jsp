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
<!--  세션 목록 다 출력 -->
	<% 
	
	String sName;
	String sValue;
	
	Enumeration<String> e = session.getAttributeNames();
	if(request.isRequestedSessionIdValid()){
		
		while(e.hasMoreElements()){
			sName = e.nextElement();
			
			sValue = session.getAttribute(sName).toString();
			out.print("<h2>이름 : " + sName);
			out.print("<h2>값 :" + sValue);
			out.print("<br>");
		}
	
	}else{
		out.print("<h2>"+"세션 없음");
	}
	



	%>



</body>
</html>