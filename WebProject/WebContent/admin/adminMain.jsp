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
<!-- ȸ������, �ֹ�����, ������, QnA ����,  -->
	<table border = "1" width = "1500" align = "center">
		<tr height = "30"> <!-- ��ũ Ŭ�� ��, �� �ش��ϴ�  -->
			<td> <a href = "adminMemberManager.jsp" target = "change"> ȸ�� ���� </a> </td>
			<td> <a href = "adminOrderManager.jsp" target = "change"> �ֹ� ���� </a> </td>
			<td> <a href = "#" target = "change"> ��� ���� </a> </td>
			<td> <a href = "#" target = "change"> Q & A ���� </a> </td>
		</tr>
		<tr height = "700">
			<td colspan = "4"> <iframe name = "change" width = "1500" height = "700">  </iframe> </td>
		</tr>
		<tr height = "30">
			<td colspan = "4">
			<form action="adminLogoutProc.jsp">
				<input type = "submit" value = "������ �α׾ƿ�"><!-- ��ũ Ŭ�� �� �α��� ȭ������ -->
			</form>
			</td> 
		</tr>
	</table>
</body>
</html>