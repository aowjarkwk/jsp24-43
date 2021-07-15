<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션에 값 쓰기</title>
</head>
<body>
	<%
		session.setAttribute("user_id", "hong");
		session.setAttribute("user_name", "홍길동");
	%>
	세션에 데이터를 저장하였습니다.<br>
	
	세션의 유효기간을 지정함.(초단위:10은 10초)<br>
	
	<%
		/* 7일을 유효기간으로 한다.*/
		session.setMaxInactiveInterval(60*60*24*7);
	%>
	web.xml에서 세션유효기간을 설정(분 단위)<br>
	<!-- 
	<session-config>
    	<session-timeout>60</session-timeout>
    </session-config> 
    -->
	
</body>
</html>