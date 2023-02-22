<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  그냥 html에 클래스기능(객체지향)을 쓰는 듯 -->
	<jsp:useBean id="student" class = "com.java.jsp.Student" scope = "page"/>
	<%--
		id: 자바빈 객체의 이름을 명시
		class: 패키지 이름을 포한한 자빈 클래스의 완전한 이름을 명시
	 	scope: 자바빈 객체가 지정될 영역을 명시(page, request, session, application)
	 	
	 	name: 자바빈 이름(객체 이름)
	 	property: 속성 이름(생성자)
	 	value: 속성에 넣을 데이터(생성자 값)
	 --%>
	 
	<!--  객체생성 -->
	<jsp:setProperty name = "student" property = "studentID" value = "202301"/> <!-- property에 해당하는 setter메소드를 찾아간다. -->
	<jsp:setProperty name = "student" property = "name" value = "홍길동"/>
	<jsp:setProperty name = "student" property = "age" value = "20"/>
	<jsp:setProperty name = "student" property = "grade" value = "1"/>
	
	<!-- 객체의 속성값 받아오기 -->
	학번: <jsp:getProperty  name="student" property = "studentID"/> <!-- property에 해당하는 getter메소드를 찾아간다. -->
	이름: <jsp:getProperty  name="student" property = "name"/>
	나이: <jsp:getProperty  name="student" property = "age"/>
	학년: <jsp:getProperty  name="student" property = "grade"/>


</body>
</html>