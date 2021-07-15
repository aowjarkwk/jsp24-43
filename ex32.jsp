<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 세션(session) </title>
</head>
<body>
    <!-- 쿠키와 세션 -->
	<!-- 쿠키 : 웹브라우저에 로컬PC에 파일로 데이타를 저장하기(비로그인) -->
    <!-- 세션 : 톰캣서버 PC에 메모리에       데이터를 저장하기(로그인) -->
	<!-- JSESSIONID : 톰캣서버가 세션을 유지하기 위해 -->
	<!--               처음 접속하는 웹앱에 부여하는 키 -->
	<!--  
	                           Client           Server 
	     1.맨처음접속 SID없음           ---- >          SID 쿠키로 발급해줌
	     2.쿠키에 SID저장함             <------
	     3.requset에 SID넣어서 전송    ------ >       SID같은지 여부를 판별
	                                                 같으면 재전송 안함.
	                                                 틀리거나 없으면 재발급
	     4.세션이 유지 됨.                 
	  -->
    <!-- Client   < ----------- >    Server  -->
    <!--            JSESSIONID발급해줌.(세션유지됨.)-->
    <!--  브라우저닫아도 세션유지-Reponse.setCookie("JSESSIONID", 값) -->
    <!--  브라우저에 JSESSIONID 쿠키값이 있으면,              -->
    <!--  톰캣서버는 새로운 JSESSIONID를 발급하지 않음(유지!) -->
	<!-- 세션유지 조건: 동일한 도메인 주소일때 -->
	<%
		/* 현재시간 출력 */
		java.util.Date time = new java.util.Date();
		java.text.SimpleDateFormat formatter = 
					new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	%>
	현재시간 : <%= formatter.format(time) %> <br>
	<!--  JSESSIONID 값 -->
	세션 ID : <%= session.getId() %> <br>
	<%
		time.setTime( session.getCreationTime() ); 
	%>
	세션생성시간 : <%= formatter.format(time) %> <br>
	<%
		time.setTime( session.getLastAccessedTime() ); 
	%>
	마지막접근시간: <%= formatter.format(time) %>
</body>
</html>