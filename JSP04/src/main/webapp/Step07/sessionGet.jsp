<%@page import="java.util.Enumeration"%>
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
		//getAttribute은 세션의 이름(고유값)으로 받을 수 있음.
		//반환타입이 object라서 문자열 변환
		String sessionNameValue = (String)session.getAttribute("sessionName");
		out.print("sessionName의 값: "+ sessionNameValue+"<br>");
		
		
		int sessionNumberValue = (Integer)session.getAttribute("sessionNumber");
		out.print("sessionNumber의 값: "+ sessionNumberValue+"<br>");
		
		String sName;
		String sValue;
		
		Enumeration<String> e = session.getAttributeNames();
		
		while(e.hasMoreElements()){
			sName = e.nextElement();
			
			sValue = session.getAttribute(sName).toString();
			out.print("이름:" + sName);
			out.print("값:" + sValue);
			out.print("<br>");
		}
	
	
		
		String sessionId = session.getId();
		//한 브라우저당 고유한 아이디가 생성이 된다.
		//웹브라우저별로 생성되어진 세션을 구분할 수 있다.
		out.print("<h2>id: "+sessionId+"<br>");
		
		
		
		int sessionInter = session.getMaxInactiveInterval();
		//세션의 유효시간(기본 30분)
		
		out.print("세션의 유효시간: " + sessionInter+"<br>");
		
		out.print("<h2>"+ "세션 remove이후"+"<br>");
		session.removeAttribute("sessionName");
		
		Enumeration<String> e1 = session.getAttributeNames();
		
		while(e1.hasMoreElements()){
			sName = e1.nextElement();
			
			sValue = session.getAttribute(sName).toString();
			out.print("이름:" + sName);
			out.print("값:" + sValue);
			out.print("<br>");
		}
		
		out.print("<br>");
		
		out.print("<h2>"+ "모든 세션 삭제 이후"+"<br>");
		session.invalidate();
		//세션 무효화: 모든 세션 삭제
		
		if(request.isRequestedSessionIdValid()){
			out.print("있음"+"<br>");
			
		}else{
			out.print("없음");
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	%>

	





</body>
</html>