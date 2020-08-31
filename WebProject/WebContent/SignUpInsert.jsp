
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import = "java.sql.*, java.util.*, UserDataBase.*" %>

<jsp:useBean id="userMgr" class="UserDataBase.UserMgr" />
<jsp:useBean id="userBean" class="UserDataBase.UserBean"/>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <% 
request.setCharacterEncoding("UTF-8");
%>
<%
	userBean.setUserId(request.getParameter("UserId"));
	userBean.setUserPassword(request.getParameter("UserPassword"));
	userBean.setUserName(request.getParameter("UserName"));
	userBean.setGender(request.getParameter("Gender"));
	userBean.setUserSize(request.getParameter("UserSize"));
	userBean.setUserPhone(request.getParameter("UserPhone"));
	userBean.setUserEmail(request.getParameter("UserEmail")); 
%>

<%
    boolean flag = userMgr.memberSignUp(userBean);
%>
<%
if(flag){
	  out.println("<b>회원가입을 축하 드립니다.</b><p>");
	  out.println("<a href=LoginPage.jsp>로그인</a>");
	}else{
		
	  out.println("<b>다시 입력하여 주십시오.</b><p>");
	  out.println("<a href=signUp.jsp>다시 가입</a>");
	}
%>

</body>
</html>