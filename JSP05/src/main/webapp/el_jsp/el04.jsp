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
	 el은 서블릿 보관소에 지정된 데이터를 사용할 수 있다.
	 
	--%>


	<% 
		application.setAttribute("appliName", "appliValue");
		session.setAttribute("sessionName", "sessionValue");
		pageContext.setAttribute("pageName", "pageValue");
		request.setAttribute("requestName", "requestValue");
	
	
	%>
	
	어플리케이션: ${applicationScope.appliName }<br>
	세션: ${sessionScope.sessionName }<br>
	페이지: ${pageScope.pageName }<br>
	요청: ${requestScope.requestName }<br>

</body>
</html>