<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션의 값 읽기</title>
</head>
<body>
	세션 정보 조회:<br>
	user_id : <%=session.getAttribute("user_id") %>
	user_name : <%=session.getAttribute("user_name") %>
	
</body>
</html>