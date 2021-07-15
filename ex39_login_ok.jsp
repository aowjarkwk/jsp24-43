<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 액션-UI없음</title>
</head>
<body>
	<%
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		System.out.println( "user_id:" + user_id );
		System.out.println( "user_pw:" + user_pw );
		//문자열 값이 없는 경우 : null이거나 "" 값이 비어 있을때
		//null체크
		if( user_id == null || user_pw == null ){
			//로그인 아이디 또는 암호가 없는 경우
			//유저가 잘못 입력한 경우.
	%>
			<script>
				alert("아이디 또는 암호가 없습니다.");
				location.href="ex37_login.jsp";
			</script>
	<%
			return;
		}else {
			System.out.println( "user_id:" + user_id.length() );
			System.out.println( "user_pw:" + user_pw.length() );
			//if( user_id.length() == 0 || user_pw.length() == 0 ) {
			if( user_id.equals("") || user_pw.equals("") ) {	
	%>
				<script>
					alert("아이디 또는 암호가 입력되지 않았습니다.");
					location.href="ex37_login.jsp"; 
				</script>
	<%
				return;
			}
	%>
			<script>
				alert("로그인되었습니다.");
			</script>
	<%
		//로그인 성공 처리
		session.setAttribute("user_id", user_id);
		session.setAttribute("user_pw", user_pw);
		//메인으로 이동
		response.sendRedirect("ex36_main.jsp");
		}
	%>
</body>
</html>