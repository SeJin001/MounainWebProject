<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page import = "java.sql.*" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!-- 회원 삭제 -->
<body>
<%
	request.setCharacterEncoding("utf-8");

	Connection con = null;
	PreparedStatement pstmt = null;

	String UserID = request.getParameter("UserID");
	
	String query = "delete from usermember where userid = ?";
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String jdbcDriver = "jdbc:mysql://localhost:3306/jsppro?serverTimezone=UTC&useSSl=false&characterEncoding=utf-8";
		String dbUser = "root";
		String dbPass = "poly1234@";
		con = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		pstmt = con.prepareStatement(query);

		pstmt.setString(1, UserID);
		pstmt.executeUpdate();
	}
	
	catch(SQLException ex){
		System.out.println("SQLException"+ex);
	}
	catch(Exception ex) {
		System.out.println("Exception"+ex);
	}
	
	finally{
		if(pstmt!=null){
			pstmt.close();
		}
		if(con!=null){
			con.close();
		}
	}
	response.sendRedirect("adminMemberManager.jsp");
%>

</body>
</html>