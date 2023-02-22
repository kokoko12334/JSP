<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page errorPage = "errorPage.jsp" %>    <!-- 지시자영역을 이용하여 기본 예외문구가 아닌 예외처리 화면을 따로 작성한다. 
												이때 에러페이지 이동시에 url은 기존 error.jsp로 유지된다. 즉 ~~/errorpage.jsp가
												로 이동은 하지만 url이 errorpage.jsp가 되는 것은 아니다.	
													
													-->
    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>


<body>
	<%
		int i = 10/0;
	
%>



</body>


</html>