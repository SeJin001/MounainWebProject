<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> ADMIN PAGE </title>
</head>
<body>
	<form action = "adminLoginProc.jsp" method = "post">
		<table border = "1" align = "center">
			<tr>
				<td> 아이디 : <input type = "text" name = "id"> </td>
			</tr>
			<tr>
				<td> 비밀번호 : <input type = "password" name = "pw"> </td>
			</tr>
			<tr>
				<td> <input type = "submit" value = "LOGIN" > </td>
			</tr>
		</table>
	</form>
</body>
</html>