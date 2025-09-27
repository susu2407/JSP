<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<!-- 
			스크립트릿(Scriptlet)
			 - 정적문서(HTML)에 프로그래밍 코드를 작성하기 위한 코드영역
			 - 동적문서(JSP) 스크립트릿 싱행으로 정적문서 변환
			 
			 표현식(Expression)
			  - 자바 변수 값을 간단하게 출력하기 위한 스크립트 요소
			   - 간단한 
		 -->
	</head>
	<body>
		<h4>1. 스크랩트 요소</h4>
		<h4>스크립트릿(Scriptlet)</h4>
		<%
			//스크립트릿(자바 프로그래밍 스코프)
			int 	var1 = 1;
			boolean var2 = true;
			double	var3 = 3.14;
			String 	var4 = "Hello";
			
			// 브라우저 출력
			out.print("<p>var1 : " +var1 + "</p>");
			out.print("<p>var2 : " +var2 + "</p>");
		%>
		
		<h4>표현식</h4>
		
		<p>var3 : <%= var3 %></p>
		<p>var4 : <%= var4 %></p>
		
	
	</body>
</html>