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
	
		if(request.getParameter("pop") != null){
			String popup = request.getParameter("pop");
			if(popup.equals("notshow")){
				
				Cookie cookie = new Cookie("pop", "notshow");
				cookie.setMaxAge(60*60*24);
				cookie.setPath("/");
				response.addCookie(cookie);
				
				out.print("<script>");
				out.print("window.close();");
				out.print("</script>");			
				}
			
			
		}
	
	%>





	<p>공지사항</p>
	
	<br><br><br><br><br><br><br><br>
	
	<form action = "popup.jsp" method = "post">
		오늘 공지사항 보지 않기
		<input type = "checkbox" name = "pop" value = "notshow">
		<input type = "submit" value = "클릭">	
	</form>



</body>
</html>