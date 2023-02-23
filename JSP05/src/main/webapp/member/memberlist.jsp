<%@page import="com.jsp.kg.Kgmemberdto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.jsp.kg.Kgmemberdao"%>
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
 	Kgmemberdao dao = new Kgmemberdao();
 
 	ArrayList<Kgmemberdto> list = dao.kgmemberlist();
 	
 	for(int i = 0; i<list.size(); i++){
 		
 		Kgmemberdto dto = list.get(i);
 		out.print("<h2>아이디: "+ dto.getId()+"<br>");
 		out.print("<h2>이름: "+ dto.getName()+"<br>");
 		out.print("<h2>비밀번호: "+ dto.getPwd()+"<br>");
 		out.print("<h2>나이: "+ dto.getAge()+"<br>");
 		out.print("<h2>전화번호: "+ dto.getPhone()+"<br>");
 		
 	}
 
 
 
 %>



</body>

</html>