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
	%>
		<script>
			alert("메모가 등록되었습니다.");
			window.location = "memoList.jsp";
		</script>
	
	<%}else{ %>	
		
		<script>
			alert("메모등록 실패.");
			window.location = "memoForm.html";
		</script>
		
	<%} %>	
	




</body>
</html>