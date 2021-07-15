<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션의 값 삭제(세션 종료)</title>
</head>
<body>
	섹션을 종료합니다.<br>
	로그아웃시 주로 세션종료함.<br>
	
	<%
		session.invalidate();
	%>
	
</body>
</html>