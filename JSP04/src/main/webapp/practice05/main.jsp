<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<!--  include file은 글자 자체만 복사 include page는 아예 컴파일을 한다.=> doctype html태그등을 다 포함시켜야 함. -->
	<%@ include file = "header.jspf" %>
	<jsp:include page = "header.jspf"></jsp:include> <!-- 써놓은 글자 다 나옴=> 위에서 말했듯이 속성정보등 다 나옴 -->
	
	<div>
    	<h2> body 부분</h2>
    </div>

	<%@ include file = "footer.jspf" %>

</body>


</html>