<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ex </title>
</head>


<body>
	<% 
		int count = 0;
	
		if(application.getAttribute("visit") != null){
			count = (Integer)application.getAttribute("visit");
		}
		
		count ++;
		
		application.setAttribute("visit", count);
		
	%>

	<h2>현재 방문자수: <%= count %></h2>
	
	
	
	<script>
		var i = <%= count%>;
		
		if(i == 10){
			alert("10번 째 방문자입니다.");
			
		}
	
	
	</script>
	
</body>



</html>