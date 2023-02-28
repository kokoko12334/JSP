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
	<h2> el표현식으로 데이터 꺼내기</h2>


	<% 
		int[] intArray = {10,20,30,40};
	
		request.setAttribute("score", intArray);
		// request영역에 바인딩
		
		
		
	%>

	배열: ${score[2]}<br>

	<% 
	
	ArrayList<String> list = new ArrayList<String>();
	
	list.add("아");
	list.add("아2");
	list.add("아3");
	request.setAttribute("names", list);
	
	%>






</body>



</html>