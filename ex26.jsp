<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request,session 객체에 데이터 실어 보내기</title>
</head>
<body>
	 
	 ex26.jsp<br>
	 <%
	 	request.setAttribute("name", "tom");
	 	request.setAttribute("age", "30");
	 	
	 	session.setAttribute("phone", "010-1111-2222");
	 	session.setAttribute("address", "LA");
	 	
	 %>
	 <jsp:forward page="ex27.jsp"/>
	 
	 
</body>
</html>