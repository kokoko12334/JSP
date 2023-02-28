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
		el은 자바빈의 프로퍼티(데이터)를 jsp표현식이나 액션태그를 사용하는 것보다 쉽고 간결하게 사용할 수 있다.
	
	--%>
	<jsp:useBean id = "member" class = "com.jsp.el.Member" scope = "page"></jsp:useBean>
	<jsp:setProperty property="id" name="member" value = "hong"/>
	<jsp:setProperty property="pw" name="member" value = "1234"/>
	<jsp:setProperty property="name" name="member" value = "홍길동"/>
	<jsp:setProperty property="age" name="member" value = "20"/>
	
	아이디: <jsp:getProperty property="id" name="member"/><br>
	비밀번호: <jsp:getProperty property="pw" name="member"/><br>
	이름: <jsp:getProperty property="name" name="member"/><br>
	나이: <jsp:getProperty property="age" name="member"/><br>


	아이디: ${member.id}<br>
	비밀번호: ${member.pw}<br>
	이름: ${member.name}<br>
	나이: ${member.age}<br>


</body>
</html>