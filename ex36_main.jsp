<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- true가 기본값 -->
<%@ page session="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 데이타 전달 방법들 </title>
</head>
<body>
	<!-- JSP페이지 간의 데이타 전달  -->
	<!-- 1. application 객체 : setAttr/getAttr -->
	<!--    수명: 브라우저 앱이 닫힐 때까지 -->
	<!-- 2. pageContext 객체 : setAttr/getAttr -->
	<!--    수명: 단일페이지에서만 -->
	<!-- 3. request 객체 : setAttr/getAttr-->
	<!--    수명: 단일 요청에 대해서(리다이렉트 하면-앵커,JS,Meta(응답해주면) 사라짐) -->
	<!--        : forward에 대해서는 살아있음. -->
	<!-- 4. session 객체 : setAttr/getAttr-->
	<!--    수명: 단일 세션 아이디에 까지, 로그아웃하기 전까지 -->
	<!-- 5. 주소줄에 Get방식으로 데이타 전달 : request.GetParameter() -->
	<!--    단점: 정보가 유출됨.  -->
	<!-- 6. input hidden tag value전달 -->
	<!--    HTML 입력폼에서 서버로 전달됨. -->
	<!-- 수명에 따른 분류 -->
	<!--  page < request < session < application(servletContext)  -->
	<%
		//로그인 여부를 확인한다.
		//세션에 user_id값이 존재하는지 여부로 확인.
		String user_id = (String)session.getAttribute("user_id");
		String user_pw = (String)session.getAttribute("user_pw");
		//null체크
		if( user_id != null && user_pw != null ) {
			//로그인 상태
	%>
			<h3>안녕하세요. <%= user_id %>님 환영합니다.</h3>
			<p><a href="ex38_logout_ok.jsp">로그아웃하기</a></p>	
	<%
		}else{
			//로그아웃 상태
			//로그인화면으로 바로 리다이렉트함.
			response.sendRedirect("ex37_login.jsp");
		}
	%>
</body>
</html>