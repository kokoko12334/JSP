<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>


	<!--  아이디 : sung pwd=  1111 sessionmain으로 넘기기
	
		setAttribute("id", id)
		리다로 main으로 가기
	
	-->
	
	<% 
	
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
	
		if(id.equals("sung") && pwd.equals("1111")){
			session.setAttribute("id", id );
			response.sendRedirect("sessionMain.jsp");
		}else{
			response.sendRedirect("sessionLogin.html");
		}
	
	
	%>















</body>

</html>