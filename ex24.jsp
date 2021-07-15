<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지 이동(Redirect)을 위한 값 전달</title>
</head>
<body>
	<!-- JSP 액션태그 -->
	<jsp:forward page="ex25.jsp">
		<jsp:param value="hong" name="id"/>
		<jsp:param value="1234" name="pw"/>
	</jsp:forward>
	<!--
	JSP 페이지 이동시 값 전달
    1. jsp:forward 액션 태그 param
    2. 내장객체 request, response, application, session에 setAttribute/getAttribue함수
       객체 수명주기
       application : 웹브라우저를 닫을 때 소멸
       session : 로그아웃하거나 브라우저 닫을 때 소멸
       request : forward, include에서는 객체 존재
                 !! ☆앵커태그로 이동시 객체 사라짐.☆
       response : 웹브라우저에 데이타 전달
       
       결론 : session객체나 request객체에 setAttribute/getAttribue함수
    3. GET방식으로 주소줄에 데이타 전달
       예) "ex25.jsp?id=hong&pw=1234"
    4. form태그의 input hidden객체의 value를 통해서 전달
    5. 세션(서버에 값 저장), 쿠키(클라이언트PC에 파일로 값 저장)
          로그인했을때(장바구니-회원)   로그인안했을때(장바구니-손님:비회원)
  -->
  <!-- 
		JSP에서 페이지 이동하는 방법 4가지
		1. response.sendRedirect() 함수
		  : 내부데이타가 소멸(데이타 전달 못함)
		< % response.sendRedirect("ex25_dest.jsp"); %>
		< % response.sendRedirect("http://www.naver.com"); %>
		2. forward 액션태그
		   : 내부데이타 전달 가능
		<jsp:forward page="ex25_dest.jsp" />
		3. pageContext객체 이용
		   : 내부데이타 전달 가능
		  pageContext.forward("ex25_dest.jsp");
		4. 자바스크립트 이용
		<script>location.href = "ex25_dest.jsp"; </script>
		<script>alert('권한이 없어요!'); window.history.back(); </script>
		5. html meta 태그 
		<meta http-equiv=refresh content="0;url=ex25_dest.jsp" />
		
		6.ctag lib 방법
		<c:redirect url="ex25.jsp">
		<c:param name="id" value="hong"/>
		<c:param name="pw" value ="1234"/>
		</c:redirect>
	 -->
</body>
</html>