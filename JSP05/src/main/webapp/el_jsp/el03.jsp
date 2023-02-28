<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!--  기존 방식 -->
	<p>기존의 방식</p>
	<% 
	 	request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
	
	
	%>
	
	아이디: <%=id %><br>
	비밀번호: <%=pw %><br>
	이름: <%=name %><br>
	나이: <%=age %><br>




	<p> el방식 </p>
	아이디: ${param.id }<br>
	비밀번호: ${param.pw }<br>
	이름: ${param.name }<br>
	나이: ${param.age }<br>





</body>
</html>