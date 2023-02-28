<%@page import="com.jsp.el.Member"%>
<%@page import="java.util.ArrayList"%>
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
		choose 태그는 자바의 switch문과 비슷한 역할을 한다. elseif기능
	--%>

	<c:set var = "num" value = "20"/>
	<c:choose>
		
		
		<c:when test = "${num == 10}">
		
			num은 10입니다.<br>
		
		</c:when>
	
	
		<c:when test = "${num == 20}">
		
			num은 20입니다.<br>
		
		</c:when>
	
	
	
		<c:when test = "${num == 30}">
		
			num은 30입니다.<br>
		
		</c:when>
	
	
		<c:otherwise>
			num은 10,2,30,이 아닙니다.<br>
		
		</c:otherwise>
	
	
	
	</c:choose>
	
	
	<%-- 
		foreach: for문이름
	--%>
	
	<c:forEach var = "i" begin= '0' end = '30' step = '3'>
	
		${i}
	
	</c:forEach>	
	
	<hr>
	
	<% 
		ArrayList<String> list = new ArrayList<>();
		
		list.add("홍길동");
		list.add("성중ㅈㅈ");
		list.add("ㅇㅁㄴㅇㄴㅁ");
		request.setAttribute("names", list);
		
		
		
	%>
	<c:forEach var = "name" items = "${names}" >
		${name}
	
	
	</c:forEach>
	
	
	
	<% 
	
		ArrayList<Member> list2 = new ArrayList<Member>();
	
		list2.add(new Member("hong", "1234", "홍길동", 20));
		list2.add(new Member("mong", "1234", "홍동", 21));
		list2.add(new Member("song", "1234", "길동", 23));
		
		request.setAttribute("members", list2);
	
	%>
	
	
	<c:forEach var = "member" items = "${members}">
	
		<p> 아이디: ${member.id }, 비밀번호: ${member.pw}
			이름: ${member.name }, 나이: ${member.age}	
		</p> 
	
	
	</c:forEach>
	
	
	
	

</body>
</html>