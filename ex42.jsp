<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> JS에서 JSTL변수값에 접근하는 법 </title>
</head>
<body>
	<c:set var="name" value="이순신" />
  	name : ${ name } <br>
	<script>
		window.onload = function() {
			var name_js = '<c:out value="${name}"/>';
			alert( name_js );
		};
	</script>
</body>
</html>