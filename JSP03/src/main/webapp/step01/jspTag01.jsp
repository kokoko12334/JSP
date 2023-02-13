<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>

<body>

	<%--    
		스크립트릿(scriptlet)
		
		<% %>: 자바의 여러가지 기능을 쓸 수 있는 영역

	--%>

	<% 
		for(int i = 1; i <= 10; i++){
			if(i == 1){
				out.print(i);
			}
		}
	
	%>
	
	
	
	<%  
		for(int i = 1; i <= 5; i++){
			
		
	%>
		<p>안녕하세요</p>
	
	<%
		}
	%>

</body>

</html>