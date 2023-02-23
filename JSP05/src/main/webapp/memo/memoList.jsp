<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.jsp.memo.MemoDTO"%>
<%@page import="java.util.ArrayList"%>
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

<h2>나의 메모장</h2>

	<table>
		<tr>
			<th>메모번호</th>
			<th>닉네임</th>
			<th>메모글</th>
			<th>작성일</th>
			<th>삭제</th>
		</tr>
		
 <% 
		MemoDAO dao = MemoDAO.getinstance();
 
 		ArrayList<MemoDTO> list =  dao.memoList();
 		for(int i = 0; i< list.size(); i++){
 			
 		
 			int id = list.get(i).getMemoId();
 			String nickname = list.get(i).getNickName();
 			String contents = list.get(i).getContents();
 			Timestamp timestamp = list.get(i).getRegTime();
 			String time = new SimpleDateFormat("yyyy/MM/dd HH:mm").format(timestamp);
 		
 %>

		
		<tr>
			<td><%= id %></td>
			<th><%= nickname %></th>
			<th><%= contents %></th>
			<th><%= time %></th>
			<td><a href = "memodelete.jsp?memoId=<%=id %>">삭제하기</a></td>
			<!-- ?는 그다음에 가져갈 데이터를 지정함(이름도 지정해서). -->
		</tr>
<% 
 		}
%>
	
	</table>

	<a href = "memoForm.html">메모 작성하기</a>

</body>
</html>