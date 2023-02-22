<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body>
	<!--  
		어플리케이션 객체는 jsp페이지에서 따로 선언하지 않아도 사용할 수 있는 내장 객체이다. 
		자신이 속한 웹어플리케이션 범위 안의 모든 jsp 범위에서 공유됨
		-> 웹브라우저를 종료하면 없어지는 세션과 달리 어플리케이션은 서버를 종료해야 초기화가 됨.  
		-->
	<% 
		application.setAttribute("name", "홍길동");
		application.setAttribute("age", 20);
	
	
	%>
	
	<h2> 어플리케이션이 생성되었습니다.</h2>

	<a href = "applicationGet.jsp">어플리케이션 얻기</a>


</body>




</html>