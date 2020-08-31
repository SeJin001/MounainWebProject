<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import = "java.util.*" %>
 <%@page import = "UserDataBase.UserMember" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	* {
		text-align : center;
	}
</style>
</head>
<body>

	<jsp:useBean id = "userdb" class = "UserDataBase.UserMemberDataBase" scope = "page"/>
	<%
		ArrayList<UserMember> list = userdb.getUserMemberList();
		int count = list.size();
	%>
	<table border = "1" width = "1000" align = "center" >
		<tr>
			<td> 회원 아이디 </td>
			<td> 회원 비밀번호 </td>
			<td> 회원 이름 </td>
			<td> 회원 성별 </td>
			<td> 회원 신체사이즈 </td>
			<td> 회원 주소 </td>
			<td> 회원 핸드폰 번호 </td>
			<td> 회원 등급 </td>
			<td colspan = "2"> 관리자 기능 </td>
		</tr>
	<%
			if(count > 0){
			for(UserMember user : list){
	%>
			<tr>
				<td> <%= user.getUserID() %> </td>
				<td> <%= user.getUserPassword() %> </td>
				<td> <%= user.getUserName() %> </td>
				<td> <%= user.getGender() %> </td>
				<td> <%= user.getUserSize() %> </td>
				<td> <%= user.getUserPhone() %> </td>
				<td> <%= user.getUserEmail() %> </td>
				<td> <%= user.getUserRank() %> </td>
				<td> <a href = "adminUserRankModify.jsp?UserID=<%=user.getUserID()%>"> 회원 등급 수정 </a> </td>
				<td> <a href = "adminUserDelete.jsp?UserID=<%=user.getUserID()%>"> 회원 삭제 </a> </td>
			</tr>
	<%
			}
		}
	%>
	</table>

</body>
</html>