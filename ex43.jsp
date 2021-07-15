<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> EL의 연산자 </title>
</head>
<body>
	<!--
		수치연산자 : +, -, *, / or div, % or mod, 단항연산자 -부호
		비교연산자 : == or eq, != or ne, < or lt, > or gt,
		             <= or le, >= or ge
		논리연산자 : && or and, || or or, ! or not
		empty 연산자 : empty <값> 
		               null이면, true 
		               빈 문자열이면, true
		               길이가 0인 배열, true
		               빈 Map이면, true
		               빈 Collection이면, true
		               그외의 값은 false 
		삼항 연산자 : ? 연산자
	  -->
	  ${ 10+1 } <br>
	  ${ 10/3 } <br>
	  <%-- ${ 10++ } ++ -- 지원안함 --%>
	  ${ 20 == 20 } <br>
	  ${ "hong" == "hong" } <br>
	  ${ 10 < 20 } <br>
	  ${ empty(null) } <br>
	  ${ empty("") } <br>
	  ${ empty("홍길동") } <br>
	  ${ true ? "참이다." : "거짓이다." } <br>
	  <!-- 문자열 연결 -->
	  <!-- += -->
	  <!-- +는 안됨. -->
	  ${ "대한민국" += "만세" } <br>
	  <% request.setAttribute("name", "홍길동"); %>
	  ${ requestScope.name += "만세" } <br>
	  <!-- 
	     pageScope : page Scope에 접근하기 위한 객체 
	     reqeustScope : request Scope에 접근하기 위한 객체 
 	     sessionScope : session Scope에 접근하기 위한 객체 
		 applicationScope : application Scope에 접근하기 위한 객체 
      --> 
	  <!-- 스크립트릿의 변수를 표현언어에서 사용하려면 -->
	  <!-- request.setAttr() 함수로 넣어주면 된다. -->
	  <%  
	  	String age = "30";
	  	request.setAttribute("age", age);
	  %>
	  ${ requestScope.age } <br>
	  <!-- 세미콜론 연산자 -->
	  <!-- 두개의 식을 붙일때 -->
	  <!-- 앞의 식은 무시되고, 뒤의 식이 출력됨. -->
	  ${ 1 + 1 ; 10 + 10 } <br>
	  ${ 1 + 1 ; 10 + 10 ; 20 + 20 } <br>
	  <!-- 특수문자 표현 -->
	  <!-- JSP에서 "${ 10 }"출력하고 싶다.  -->
	  <!--  \${ 10 } -->
	  \${ 10 }
	  <!--  표현언어 $ { }  # { } 의 차이 -->
	  <!--  $ { } : 미리 컴파일하고 실행 -->
	  <!--  # { } : 참조시(읽을때) 컴파일&실행 -->
</body>
</html>