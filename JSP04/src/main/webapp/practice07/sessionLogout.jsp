<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  세션 다 삭제 -->


	<% 
	
		session.invalidate();
		if(request.isRequestedSessionIdValid()){
			out.print("있음"+"<br>");
		
		}else{
			out.print("<h2>"+"세션삭제");
		}
	
	%>


</body>
</html>