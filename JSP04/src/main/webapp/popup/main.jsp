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
		Cookie[] cookies = request.getCookies();
		
		boolean bool = false;
		if(cookies != null){
			for(int i = 0; i<cookies.length; i++){
				String name = cookies[i].getName();
				String value = cookies[i].getValue();		
				
				if(name.equals("pop") && value.equals("notshow")){
					bool = true;
				}
				
			}
			
		}
		
		
		if(bool == false){
			out.print("<script>");
			out.print("window.open('popup.jsp', 'pop', 'width = 100', 'height = 200');");
			out.print("</script>");
			
		}
		
	
	%>







</body>
</html>