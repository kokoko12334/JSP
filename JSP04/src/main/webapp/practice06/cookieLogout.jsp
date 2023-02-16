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
		Cookie[] cookies = request.getCookies();
	
		for(int i =0; i <cookies.length; i++){
			
			String str = cookies[i].getValue();
			if(str.equals("hong")){
				
				cookies[i].setMaxAge(0);   //쿠기 삭제하는 방법 => 직접 삭제가 안되므로 지속시간을 0으로 만들고 다시 줌
											// => 삭제됨
				
				response.addCookie(cookies[i]);
				
				out.print("<h2>" + cookies[i].getValue() + "쿠키가 삭제 되었습니다.");
				
				
			}
			
		}
	
	
	%>
</body>
</html>