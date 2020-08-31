<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.util.*, UserDataBase.*" %> 
<% 
request.setCharacterEncoding("UTF-8");
String ss = request.getParameter("UserId");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="userBean" class="UserDataBase.UserBean"/>
<jsp:setProperty name="userBean" property="*" />
<%System.out.println(userBean.getUserId());
System.out.println(ss);
%>

<form name ="Form" method="post" action="SignUpInsert.jsp">
<table>
    <tr>
      <td class="left">아이디 입력</td>
    <td>
      <input type="text" name="UserId" class="big"
     value="<jsp:getProperty name="userBean" property="UserId" />">
	  
    </td>
    </tr>

   <tr>
     <td>비밀번호 입력</td>
     <td><input type="text" name="UserPassword" class="big"
     value="<jsp:getProperty name="userBean" property="UserPassword" />">
     
     </td>
  </tr>
  <tr>
      <td>이름</td>
      <td>
        <input type="text" name="UserName" class="big"
        value="<jsp:getProperty name="userBean" property="UserName" />">
 		
      </td>
  </tr>

  <tr>
      <td>성별</td>
  <td>
    <input type="text" name="Gender" class="big"
     value="<jsp:getProperty name="userBean" property="Gender" />">
	
   </td>
  </tr>
  
  <tr>
    <td>신체사이즈</td>
  <td>
   <input type="text" name="UserSize" class="big"
     value="<jsp:getProperty name="userBean" property="UserSize" />">
    
  </td>
  </tr>
  
  <tr>
    <td>핸드폰번호</td>
      <td>
        <input type="text" name="UserPhone" class="big"
     value="<jsp:getProperty name="userBean" property="UserPhone" />">
		
   </td>
   </tr>
   
      <tr>
       <td>이메일주소</td>
        <td>
          <input type="text" name="UserEmail" class="big"
     value="<jsp:getProperty name="userBean" property="UserEmail" />">
          
      </td>
      </tr>
   
      <tr>
      	<input type="submit" value="확인완료"> 
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
      </tr>
    </table>
   </form>
</body>
</html>