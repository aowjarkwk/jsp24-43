<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 사용하기 1</title>
</head>
<body>
	<!-- JSTL의 정식명칭: JavaServer Page Standard Tag Library  -->
	<!--                   자바서버  페이지 표준 태그 라이브러리  -->
	<!-- HTML 태그처럼 표현식을 간단히 출력하기 위해 만듦. -->
	<!-- JSTL + EL 형태로 표현식을 간편하게 함.  -->
	<!-- 표현식을 간단하게 EL로 표현  -->
	
	<!-- < % = student % >  $ { student }  -->
	<!-- < % = if % >     < c : if > -->
	<!-- < % = for % >     < c : for > -->
	
    <!-- JSTL core 태그들 -->
    <!--
    	< c :set> : 변수 선언
    	< c :out> : 출력
    	< c :if> : 조건문
    	< c :choose> : switch문과 유사
    	< c :when> : switch case 해당
    	< c :otherwise> switch문의 default 해당
    	< c :forEach> for문(향상된)
      -->
      <!-- JSP 변수선언 -->
      <%
      	String name = "홍길동";
      %>
      name : <%=name %> <br>
      <!-- JSTL 변수선언 -->
      <c:set var ="name" value="홍길동"/>
      name : ${ name }<br>
      
      <!-- JSP 반복문 -->
   
	<%
		for(int i =1; i<=5; i++){
			%>
		i : <%= i %><br>
	<% 		
		}
	%>
	<!-- JSTL 반복문 -->
	<c:forEach var="i" begin="1" end="5" step="1">
	i : ${ i }<br>
	</c:forEach>
</body>
</html>