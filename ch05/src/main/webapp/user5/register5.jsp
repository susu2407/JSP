<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>user5::register</title>
	</head>
	<body>
		<h3>User5 등록</h3>
		
		<a href="../jdbc.jsp">처음으로</a>
		<a href="./list5.jsp">목록이동</a>
		
		<form action="./proc/register5_p.jsp" method="post">
			<table border="1">
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" placeholder="이름 입력"/></td>
				</tr>
				<tr>
					<td>성별</td>
					 <!-- 한 줄 입력창
     				 <td><input type="text" name="gender" placeholder="M or F 입력"/></td>
     				  -->
     				 <!-- 라디오 버튼 -->
					 <td>
						<label><input type="radio" name="gender" value="M">남(M)</label>
			 			<label><input type="radio" name="gender" value="F">여(F)</label>
	 				 </td>
					 <!-- select 박스
					 <td>
						 <select type="text" name="gender">
					        <option value="M">남(M)</option>
					        <option value="F">여(F)</option>
						 </select>
			 		</td>
			 		-->
				</tr>
				<tr>
					<td>나이</td>
					<td><input type="number" name="age" placeholder="숫자 입력"/></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="addr" placeholder="주소 입력"/></td>
				</tr>
				<tr>					
					<td colspan="2" align="right">
						<input type="submit" value="등록하기"/>
					</td>
				</tr>			
			</table>

		</form>		
				
	</body>
</html>