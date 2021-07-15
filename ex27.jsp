<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request,session객체의 데이터 받기</title>
</head>
<body>
	ex27.jsp<br>
	
	name 파라미터의 값 : <%=request.getAttribute("name") %><br>
	age 파라미터의 값 : <%=request.getAttribute("age") %><br>
	
	phone 파라미터의 값 : <%=session.getAttribute("phone") %><br>
	address 파라미터의 값 : <%=session.getAttribute("address") %>
	
	ex28.jsp로 다시 forward
	<%-- 
	<jsp:forward page="ex28.jsp"/> --%>
	
	<a href="ex28.jsp" >ex28.jsp</a>
	
</body>
</html>