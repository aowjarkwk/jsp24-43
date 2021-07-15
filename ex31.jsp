<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이클립스 실행환경의 실제 구동 경로</title>
</head>
<body>
	<%
		String appRealPath = application.getRealPath("/");
		out.println( appRealPath + "<br>" );
		String contextPath = request.getContextPath();
		out.println( contextPath + "<br>" );
		String contextRealPath = request.getServletContext().getRealPath("/");
		out.println( contextRealPath + "<br>" );
	%>
	<br>
	<!-- IE는 내년 6월까지 지원하고, 없어짐. -->
	<!-- MS Edge나 크롬, 사파리, 파이어폭스 -->
	<!-- 프로젝트 폴더 -->
	<!-- C:\Users\윈도우계정\Documents\jsp\jsp_examples -->
	<img alt="샘플이미지" src="./images/image1.png"  /> <br>
	<!-- IE에서는 동작함. Chrome에서는 미동작(보안정책)  -->
	<img alt="샘플이미지" src="<%= appRealPath %>images\image1.png"  /> <br>
	<img alt="샘플이미지" src="<%= request.getContextPath() %>/images/image1.png">
</body>
</html>