<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이동된 페이지</title>
</head>
<body>
	리다이렉트된 페이지는 ex25.jsp입니다.<br>
	id 파라미터 값 : <%= request.getParameter("id") %><br>
	pw 파라미터 값 : <%= request.getParameter("pw") %>
</body>
</html>