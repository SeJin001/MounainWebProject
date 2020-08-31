<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import ="java.util.*, UserDataBase.*" %> 
<% 
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="regBean" class="UserDataBase.SignUpBean"/>
<jsp:setProperty name="regBean" property="*" />


<html>
<head>
<title>회원가입 확인</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script charset="UTF-8" language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="#ffffff">
<br>



	<table width="75%" align="center" bgcolor="#ffffff">
	<tr>
	<td align="center" bgcolor="#B2EBF4">

		<table width="95%" align="center" bgcolor="#ffffff" border="0">

		<form name="regForm" method="post" action="MemberInsert.jsp">
		<tr height="80px"align="center" bgcolor="#FFFFFF">
		<td colspan="3"><font color="#1111111"><b>
		<jsp:getProperty name="regBean" property="mem_name" />
		Check your info ! </b></font> </td>
		</tr>

		<tr>
		<td align="center"> Id </td>
		<td><input type="text" name="mem_id"
		value="<jsp:getProperty name="regBean" property="mem_id" />"></td>
		</tr>
		<tr>
		<td align="center"> Password </td>
		<td><input type="text" name="mem_passwd"
		value="<jsp:getProperty name="regBean" property="mem_passwd" />"></td>
		</tr>
		<tr>
		<td align="center"> Name </td>
		<td><input type="text" name="mem_name"
		value="<jsp:getProperty name="regBean" property="mem_name" />"></td>
		</tr>
		<tr>
		<td align="center"> E-mail </td>
		<td><input type="text" name="mem_email"  size="30"
		value="<jsp:getProperty name="regBean" property="mem_email" />"></td>
		</tr>
		<tr>
		<td align="center"> Phone </td>
		<td><input type="text" name="mem_phone"
		value="<jsp:getProperty name="regBean" property="mem_phone" />"></td>
		</tr>
		<tr>
		<td align="center"> Size </td>
		<td><input type="text" name="mem_size" size="50"
		value="<jsp:getProperty name="regBean" property="mem_size" />"></td>
		</tr>
		<tr>
		<td align="center"> Gender </td>
		<td><input type="text" name="mem_gender"
		value="<jsp:getProperty name="regBean" property="mem_gender" />"></td>
		</tr>
		<tr>
		<td align="center"> Grade </td>
		<td><img src="C:\Users\최선우\Documents\JSPpjt\BRONZE.jpg" style="width:10px; height:10px"alt="model1"> Bronze
		</td>
		</tr>
		<tr>
		<td colspan="2" align="center">
				<input type="submit" value="complete !">
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				<input type="button" value="retry !" onClick="history.back()">
		</td>
		</tr>
		</form>
		</table>

	</td>
	</tr>
	</table>



</body>
</html>
