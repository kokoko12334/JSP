<%@page import="com.jsp.memo.MemoDAO"%>
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
		request.setCharacterEncoding("UTF-8");
	
	
		String nickname = request.getParameter("nickName");
		String contents = request.getParameter("contents");
		
				
		MemoDAO dao = MemoDAO.getinstance();
		int result = dao.memoInsert(nickname, contents);
		
		if(result == 1){
			out.print("<h2> 메모 등록");
			
		}else{
			
			out.print("<h2> 메모 등록 실패");
			
		}
		
	
	
	%>




</body>
</html>