<%@page import="java.util.ArrayList"%>
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
		ArrayList<Integer> lst = new ArrayList(); 
		
	
		while(lst.size()<6){
			int num = (int)(Math.random()*45+1);
			if (! lst.contains(num)){
				lst.add(num);}
			
		}
		
		
		for(int e: lst){
			out.print("<h>"+e +"<br>");
			
		}
	%>
	

</body>


</html>