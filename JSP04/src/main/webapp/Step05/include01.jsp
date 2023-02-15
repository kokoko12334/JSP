<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include01</title>
</head>

<!--  
	include는 현재에 문서에 다른 문서의 파일의 내용을 포함해서 출력하는 것을 말한다.
	<html>안의 내용 다(head, body) 가져옴 
-->

<body>
	<%!
		int x = 100;
	
	%>


	<h2>include01 페이지</h2>
	
	<%@ include file = "include02.jsp"%>
	
	<h2>indeclude01페이지2</h2>




</body>



</html>