<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	String name = request.getParameter("name");	
	String gender = request.getParameter("gender");	
	String age = request.getParameter("age");	
	String addr = request.getParameter("addr");	

	String host = "jdbc:oracle:thin:@localhost:1521:xe"; 
	String user = "tndus159200297";
	String pass = "1234";
	
	try {
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		// SQL 실행 객체 생성
		String sql = "INSERT INTO USER5 VALUES (?,?,?,?)";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, name);
		pstm.setString(2, gender);
		pstm.setString(3, age);
		pstm.setString(4, addr);
		
		pstm.executeUpdate();
		
		pstm.close();
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("../list5.jsp");
%>