<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP 내장객체 - application</title>
		<%-- 
			날짜 : 2025/07/28
			이름 : 이수연
			내용 : JSP 내장객체 application 실습
		--%>
	</head>
	<body>
		<h3>JSP 내장객체 - application</h3>
		
		<h4>서버정보</h4>
		<p>
			WAS 번저 : <%= application.getServerInfo() %><br/>
			Servlet 버전 : <%= application.getMajorVersion() %><br/>
			
		</p>
		
		
		<h4>환경정보</h4>
		
		<h4>자원정보</h4>
		
		<h4>로그정보</h4>
	
	</body>
</html>