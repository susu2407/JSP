<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	String queryString = request.getQueryString();
	String uid = request.getParameter("uid");
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
		// → 클라이언트(브라우저)가 ?uid=값 형태로 보낸 쿼리스트링이나, <form>에서 전송한 데이터 중 name="uid" 값을 꺼내온다. 
		// 즉 : 로그인 화면에서 아이디 입력한 값을 서버에서 받아오는 예시 코드이다.
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>결과 페이지2</title>
	</head>
	<body>
		<h3>POST 요청결과(전송 데이터 수신)</h3>
		
		<p>
			쿼리스트링 : <%= queryString %><br>
			아이디	: <%= uid %><br>
			이름		: <%= name %><br>
			생년월일 : <%= birth %><br>	
		</p>

		<a href="../1_request.jsp">뒤로 가기</a>

	
	</body>
</html>