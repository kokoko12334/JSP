<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--    
	   일반적으로 jstl이란 jstl+el의 조합을 말한다.
	   html코드내에 java 코드인 스크립트릿 코드를 대체하여 사용한다.
		
	--%>

	<%--
		set: 변수값 선언
		out: 출력
		remove: 변수값 제거
		
	 --%>
	<c:set var = "name" value = "홍길동" scope = "page"/>




	<%-- var: 변수 이름  
		value: 변수의 값지정  
		scope: 범위지정(page, request, session, application --%>

	이름: <c:out value = "${name}"/>

	<c:remove var = "name" scope = "page"/>

	<hr>
	
	
	<%-- 
		if : if문(else는 없음)
		test = "조건식
	--%>
	<c:if test = "${1<2}">   <%-- 해당 조건식이 참이면 태그안의 내용 시행 --%> 
		<p>test 완료</p>
	
	</c:if>	

</body>
</html>