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
		int  age = 0;
		
		String strAge = request.getParameter("age");
		
		age = Integer.parseInt(strAge);
	
		if (age >= 20){
			response.sendRedirect("OK.jsp");
			
			
		}else{
			response.sendRedirect("NG.jsp");
		}
		
	%>


</body>
</html>