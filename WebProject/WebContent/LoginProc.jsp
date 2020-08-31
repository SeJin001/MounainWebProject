<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
      String userID = (String)request.getAttribute("userID");
      String userPassword = (String)request.getAttribute("userPassword");
      String rememberCheck = request.getParameter("rememberCheck");
      Connection conn = null;
      Statement stmt = null;
      ResultSet idc = null;
      ResultSet pwc = null;
   	
      if( userID.equals("admin") && userPassword.equals("admin")){
    		//session.setAttribute("adminLogin", "ok");
    		response.sendRedirect("admin/adminMain.jsp");
      } else {  
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			String jdbcServer = "jdbc:mysql://localhost:3306/jsppro?serverTimezone=UTC";
			String dbId = "root";
			String dbPw = "poly1234@";
			conn = DriverManager.getConnection(jdbcServer,dbId,dbPw);
			stmt=conn.createStatement();
			idc = stmt.executeQuery("select * from UserMember where userID='"+userID+"' and userPassword='"+userPassword+"';");
			if(idc.next()){
			out.print("로그인 성공");
			}else {
			out.print("로그인 실패");
			}
      }
    		
    /*	if(rememberCheck.equals(null)){
    		session.removeAttribute(userID);
    		session.removeAttribute(userPassword);
    		session.removeAttribute(rememberCheck);
    		response.sendRedirect("loginReview.jsp");
  		} else {
			session.setAttribute("memId", i);
			session.setAttribute("memPw", p);
			session.setAttribute("memSave", rememberCheck);
			response.sendRedirect("loginReview.jsp");
			}
      }*/
%>
</body>
</html>