<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 Cookie</title>
</head>
<body>
	쿠키 : Cookie - 과자(부스러기, 흔적, 기록)
	예) 장바구니 - 비회원(비로그인 사용자)
	
	쿠키 설정과 읽기 <br>
	<%
		String encodedName = java.net.URLEncoder.encode("홍길동","utf-8");
		Cookie cookie = new Cookie("name1",encodedName);
		cookie.setMaxAge(60*60*24*30);//한달동안 유효함.
		response.addCookie(cookie);
	%>
	<%=cookie.getName() %>쿠키의 값 = "<%=cookie.getValue() %>"
	<%
		String encodedStr = cookie.getValue();
		String decodedStr = java.net.URLDecoder.decode(encodedStr, "utf-8");
		out.print("<br>");
		out.print("인코딩값 : " + encodedStr);
		out.print("<br>");
		out.print("디코딩값 : " + decodedStr);
	%>	
	
</body>
</html>