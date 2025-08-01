<%@page import="vo.User4VO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	String name = request.getParameter("name");

	String host = "jdbc:oracle:thin:@localhost:1521:xe"; 
	String user = "tndus159200297";
	String pass = "1234";
	
	// 수정할 사용자 객체
	User4VO user4 = null;

	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");		
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		String sql = "SELECT * FROM USER4 WHERE NAME=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, name);
		
		ResultSet rs = psmt.executeQuery();
		
		if(rs.next()){
			user4 = new User4VO();
			user4.setName(rs.getString("NAME"));
			user4.setGender(rs.getString("GENDER"));
			user4.setAge(rs.getShort("AGE"));
			user4.setAddr(rs.getString("ADDR"));
		}
		
		rs.close();
		psmt.close();
		conn.close();	
		
	}catch(Exception e){
		e.printStackTrace();
	}
	


%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>use4::modify</title>
	</head>
	<body>
		<h3>User4 수정</h3>
		
		<a href="../jdbc.jsp">처음으로</a>
		<a href="./list4.jsp">목록이동</a>
		
		<form action="./proc/modify4.jsp" method="post">
			<table border="1">
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" readonly value="<%= user4.getName() %>" placeholder="이름 입력"/></td>
				</tr>
				<tr>
					<td>성별</td>
					<td><input type="text" name="gender" value="<%= user4.getGender() %>" placeholder="M/F 입력"/></td>
				</tr>
				<tr>
					<td>나이</td>
					<td><input type="number" name="age" value="<%= user4.getAge() %>" placeholder="숫자 입력"/></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type=text name="addr" value="<%= user4.getAddr() %>" placeholder="광역시 입력"/></td>
				</tr>
				<tr>					
					<td colspan="2" align="right">
						<input type="submit" value="수정하기"/>
					</td>
				</tr>			
			</table>		
		</form>			
	</body>
</html>