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
		// 세션객체는 생성하지 않아도 사용가능
		//setAttribute("이름", "값")
		session.setAttribute("sessionName", "sessionValue" );
		session.setAttribute("sessionNumber", 1234 );
	
	%>

	<h2> 세션 생성되었습니다.</h2>
	<a href = "sessionGet.jsp">get이동</a>


</body>


</html>