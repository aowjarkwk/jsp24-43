<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<<jsp:useBean id="users" scope="request" class="jsp_examples.Users"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 표현언어</title>
</head>
<body>
	<!-- EL(Expression Language) : 표현언어  -->
	<!-- JSP 2.3 버전 <=>EL 3.0 버전 -->
	<!-- 표현식이 복잡하기때문에 간단히 변수출력을 위해서 -->
	
	<!-- 서버단에서 컴파일(번역) 순서 -->
	<!-- 자바 -> EL/JSTL -> 스크립트릿  -->
	
	<!-- 클라이언트(Browser) 컴파일 순서 -->
	<!-- HTML/CSS -> 자바스크립트 -->
	
	<%
		users.setAddress("서울");
	%>
	<!-- 표현식 -->
	<%= users.getAddress() %><br>
	<!-- EL -->
	${ users.address }<br>
	
	<!-- 표현식 : 반복문 -->
	<%
		for(int i =0; i<5; i++){
			%>
		i : <%= i %><br>
	<% 		
		}
	%>
	<!-- EL : 반복문  -->
	<!-- EL에서는 스크립트릿의 변수를 바로 표현을 할 수 없음. -->
	<!-- JSTL(ctag lib)로 변수를 표현한다. -->
	<%
		for(int i =0; i<5; i++){
			%>
		i : ${ i }<br>
	<% 		
		}
	%>
</body>
</html>