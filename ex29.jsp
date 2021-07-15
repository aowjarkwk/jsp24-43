<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<<jsp:useBean id="users" scope="request" class="jsp_examples.Users"/>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 빈 이용하기</title>
</head>
<body>
	<!-- 자바(커피) 빈(Bean) 이란? 
		java bean은 자바클래스를 new로 객체화(인스턴스화)한 것.
		spring java been : 같은 개념. 스프링 관리자(컨테이너)가 관리하는 객체.
	
		jsp:useBean 액션태그 사용! 순수자바 빈을 접근함.
		
		id : 자바빈(객체) 변수 이름
		scope : 자바빈 객체가 생존하는 영역(생존범위)
			  : page(기본값), request, session, application
		class : 패키지이름을 포함한 자바빈 클래스 이름
		
		자바 순수 코드(Bean, .java)과 web.xml파일을 수정하면, Server Restart를 해줘야함
	 -->
	 
	 <%
	 	users.setUser_id("hong");
	 	users.setUser_pw("1234");
	 	
	 %>
	
	<%= users.getUser_id() %>님 환영합니다!
	
	
</body>
</html>