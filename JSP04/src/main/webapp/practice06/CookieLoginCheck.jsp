<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logincheck</title>

</head>

<body>
		<% 
			request.setCharacterEncoding("UTF-8");
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			
			if(id.equals("hong") && pwd.equals("1234")){
				Cookie cookie = new Cookie("id", id);
				cookie.setMaxAge(60*60);
				response.addCookie(cookie);		
				
				response.sendRedirect("cookieMain.jsp");
				
			}else{
				
				response.sendRedirect("cookieLogin.html");				
				}
			
		
		%>





</body>


</html>