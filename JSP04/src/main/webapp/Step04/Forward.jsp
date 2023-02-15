<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forward</title>
</head>

<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	
	<jsp:forward page = "Food.jsp"></jsp:forward>  
	<
	<!--  여기서 말고 다른 곳으로 토스 단, 페이지경로는 여기로 유지 즉, /food.jsp가 되지는 않음
		redirect랑 차이점은 redirect는 경로만 바꾸어주는 것이고
		forward는 request,response도 같이 넘겨줌. 
		-->
		
		
		
	<!-- 하나의 jsp 페이지에서 다른 jsp페이지로 요청처리를 전달할 때 사용한다.
		웹브라우저의 주소는 그대로 요청받은 jsp 주소로 유지된다. 
		요청흐름이 이동할때 request, response 기본객체가 전달된다.
	
	 -->



</body>

</html>