<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> ADMIN PAGE </title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals("admin") && pw.equals("admin")){
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
	    response.sendRedirect("adminMain.jsp");
	}
	
	else{
		response.sendRedirect("adminLogin.jsp");
	}
%>
</body>
</html>