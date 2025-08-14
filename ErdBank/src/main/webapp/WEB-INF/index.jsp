<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Bank</title>
	</head>
	<body>
		<h3>미니 계좌관리 프로젝트</h3>
		
		<p>
			그린은행에 오신 것을 환영합니다.<br/>
			계좌이체를 하려면 로그인을 하시기 바랍니다.<br/>
			로그인을 해야 서비스를 이용할 수 있습니다.<br/>
		</p>
		
		<form action="">
			<table>
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="로그인"/>
					</td>
				</tr>
			</table>
		</form>
		
		<p>
			OOO님 반갑습니다. 서비스를 이용하시기 바랍니다.<br/>
			<a href="#">로그아웃</a>
		</p>
		
		<a href="/ErdBank/account/list.do">계좌목록</a>
		<a href="/ErdBank/customer/list.do">학생목록</a>
		<a href="/ErdBank/transaction/list.do">거래목록</a>
		
	</body>
</html>