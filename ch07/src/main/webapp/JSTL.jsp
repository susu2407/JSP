<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="C" uri="jakarta.tags.core" %>
<%@ taglib prefix="f" uri="jakarta.tags.functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSTL</title>
		<%--
			날짜 : 2025/07/31
			이름 : 이수연
			내용 : JSTL(Java Standards Tag Library) 실습하기
		 --%>
	</head>
	<body>
		<h3>JSTL(Java Standards Tag Library) 실습</h3>
		
		<h4>스크립트 방식</h4>
		<%
			// 변수
			String str = "hello";
			out.println("<p>str : " + str + "</p>");
			
			int num1 =1;
			int num2 =2;
			int num3 =3;
			
			// 조건문
			if(num1 < num2) {
				out.println("<p>num1은 num2 보다 작다.</p>");
			}
			
			if(num1 > num2) {
				out.println("<p>num1은 num2 보다 크다.</p>");
			}else{
				out.println("<p>num1은 num2 보다 작다.</p>");
			}
			
			if(num1 > num2) {
				out.println("<p>num1은 num2 보다 크다.</p>");
			}else if(num2 > num3) {
				out.println("<p>num2은 num3 보다 크다.</p>");
			}else{
				out.println("<p>num3가 제일 크다.</p>");
			}
			
			// 반복문
			for(int i=1; i<=5; i++) {
				out.println("<p>i : " + i + "</p>");
			}
			
			int sum = 0;
			for(int k=1 ; k<=10 ; k++) {
				sum += k;
			}
			
			out.println("<p>1부터 10까지 합 : " + sum + "</p>");
			
			String[] cities = {"서울", "대전", "대구", "부산", "광주"};
			for(String city : cities) {
				out.println("<p>city : " + city + "</p>");
			}
			
			// 문자열 처리
			String message = "Hello Korea";
			
			out.println("<p>문자열 길이 : " + message.length() + "</p>");
			out.println("<p>문자열 자르기 : " + message.substring(6, 11) + "</p>");
			out.println("<p>문자열 교체 : " + message.replace("Korea", "Busan") + "</p>");
			out.println("<p>문자열 인덱스 : " + message.indexOf("e") + "</p>");
			
		%>
		
		<h4>JSTL 방식</h4>
		
		<!-- 변수 -->
		<C:set var="str" value="hello"></C:set>
		<p>str : ${str}</p>
		
		<C:set var="num1" value="1"></C:set>
		<C:set var="num2" value="2"></C:set>
		<C:set var="num3" value="3"></C:set>
		
		<!-- 조건문 -->
		<C:if test="${num1 lt num2}">
			<p>num1은 num2 보다 작다.</p>
		</C:if>
		
		<C:choose>
			<C:when test="${num1 gt num2}">
				<p>num1은 num2 보다 크다.</p>
			</C:when>
			<C:otherwise>
				<p>num2은 num3 보다 작다.</p>
			</C:otherwise>
		</C:choose>
		
		<C:choose>
			<C:when test="${num1 gt num2 }">
				<p>num1은 num2 보다 크다.</p>
			</C:when>
			<C:when test="${num2 gt num3 }">
				<p>num2은 num3 보다 크다.</p>
			</C:when>
			<C:otherwise>
				<p>num3가 제일 크다.</p>
			</C:otherwise>
		</C:choose>
		
		<!-- 반복문 -->
		<C:forEach var="i" begin="1" end="5">
			<p>i L ${i}</p>
		</C:forEach>
		
		<C:set var="sum" value="0"/>
		<C:forEach var="k" begin="1" end="10">
			<C:set var="sum" value="${sum + k}"/>
		</C:forEach>
		<p>1부터 10까지 합 : ${sum}</p>
		
		<C:set var="cities">서울, 대전, 대구, 부산, 광주</C:set>
		<C:forEach var="city" items="${cities }">
			<p>city : ${city}</p>
		</C:forEach>
		
		
		<!-- 문자열 처리 -->
		<C:set var="message" value="Hello Korea"/>
		<p>문자열 길이 : ${f:length(message)}</p>
		<p>문자열 자르기 : ${f:substring(message, 6, 11)}</p>
		<p>문자열 교체 : ${f:replace(message, "Korea", "Busan")}</p>
		<p>문자열 인덱스 : ${f:indexOf(message, "e")}</p>
		
		
	
	</body>
</html>