<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> ADMIN PAGE </title>
<style>
	* {
		text-decoration : none; 
		text-align : center;
	}
</style>
</head>
<body>
<!-- 회원관리, 주문관리, 재고관리, QnA 관리,  -->
	<table border = "1" width = "1500" align = "center">
		<tr height = "30"> <!-- 링크 클릭 시, 각 해당하는  -->
			<td> <a href = "adminMemberManager.jsp" target = "change"> 회원 관리 </a> </td>
			<td> <a href = "adminOrderManager.jsp" target = "change"> 주문 관리 </a> </td>
			<td> <a href = "#" target = "change"> 재고 관리 </a> </td>
			<td> <a href = "#" target = "change"> Q & A 관리 </a> </td>
		</tr>
		<tr height = "700">
			<td colspan = "4"> <iframe name = "change" width = "1500" height = "700">  </iframe> </td>
		</tr>
		<tr height = "30">
			<td colspan = "4">
			<form action="adminLogoutProc.jsp">
				<input type = "submit" value = "관리자 로그아웃"><!-- 링크 클릭 시 로그인 화면으로 -->
			</form>
			</td> 
		</tr>
	</table>
</body>
</html>