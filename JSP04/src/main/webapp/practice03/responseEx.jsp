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
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	
	
	if (name.equals("홍길동")){
		response.sendRedirect("Ok.jsp");
	}else{
		response.sendRedirect("Ng.jsp");
	}
	
	
	%>



</body>


</html>