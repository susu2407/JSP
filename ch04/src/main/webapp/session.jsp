<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 자동 로그인 여부 확인
	Cookie[] cookies = request.getCookies();

	for(Cookie cookie : cookies) {
		
		if(cookie.getName().equals("auto")) {
			
			String id = cookie.getValue();
			
			// 사용자 객체 생성
			//UserVO = vo = new UseVO();
			//vo.setID(id);
			
		}
	}
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>session</title>
		<%--
			날짜 : 2025/07/29
			이름 : 이수연
			내용 : JSP 쿠키 실습하기
		 --%>
	</head>
	<body>
		<h3>session 실습</h3>
		
		<h4>session ID 확인</h4>
		<p>
			session 객체 ID값 : 
			<%= session.getId() %>
		</p>
		
		<form action="./proc/createCookie.jsp" method="post">		
			<input text="text" name="id" placeholder="아이디 입력"/><br/>
			<input text="password" name="pw" placeholder="비빌번호 입력"/><br/>
			<input type="submit" value="로그인" />		
		</form>
	
	</body>
</html>