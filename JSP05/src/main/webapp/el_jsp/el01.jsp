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
		el(expression language)은 
		정수, 실수, 논리, 문자열, null 사용가능
	
	--%>


	정수: ${100}<br>
	실수: ${1.11}<br>
	논리: ${true}<br>
	문자열: ${"ㅇㅇ"}<br>
	null: ${null}<br>



	<%-- 
		산술, 비교, 논리, 조건
	--%>
	
	<p> 산술 연산자</p>
	${1+2}<br>
	${1-2}<br>
	${1*2}<br>
	${1/2}<br>


	<p> 비교 연산자</p>
	${1>2}<br>
	${1<2}<br>
	${1 != 2}<br>
	${1 == 2}<br>
	${(2>1) || (3<1) }

	
	
	<p>조건(삼항) 연산자</p>
	<!-- ?앞에 ()조건이 참이면 : 기준으로 앞의 거 실행 아니면 뒤에거 시행 -->
	${(3<1) ? '참.' : '거짓..' } 
	
	
	
	




</body>

</html>