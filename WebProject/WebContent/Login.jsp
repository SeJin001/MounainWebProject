<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<style type: text/css>
@import url(https://fonts.googleapis.com/css?family=Roboto:300);
table{border-callapse: callapse;}
.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
  
}

.submit-button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background-color:#3DB7CC;
  width: 100%;
  border: 0; 
  padding: 15px;
  color: #ffffff;
  font-size: 14px;
 transition: all 0.3 ease;
  cursor: pointer;
}

.submit-button:hover,.submit-button:active,.submit-button:focus {
  background: #008299;
}

.form .message {
  margin: 15px 0 0;
  color: #005766;
  font-size: 12px;
  text-align: center;
  
}
 
.form .message a {
  color: #005766;
  text-decoration: none;
  text-align: center;
}


.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
  text-align: center;
  
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
  text-align: center;
}
.container .info {
  margin: 50px auto;
  text-align: center;
  
}
.container .info h1 {
  margin-top: 10px;
  padding: 0;
  font-size: 36px;
  font-weight: 200px;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
  
}
.container .info span a {
  color: #000000;
  text-decoration: none;
  
}
.container .info span .fa {
  color: #EF3B3A;

}
.remember {
width: 270px;
}

.t1 {
margin-top:15px;
}

</style>
<style>
#login-button{
background-color: #3DB7CC ;
}
	h1 {           	  
	  color: #000000;
	  font-size: 12px;
	  text-align: left;
	  width: 100px;
       }  
</style>
</head>
<%	
	String memLogin = (String)session.getAttribute("memLogin");
	String adminLogin = (String)session.getAttribute("adminLogin");
	String userID = (String)session.getAttribute("userID");
	String userPassword = (String)session.getAttribute("userPassword");
	String rememberCheck = (String)session.getAttribute("rememberCheck");
	if (userID == null){
		System.out.println("아무것도 없지롱");
%>

	
<body>
<div class="login-page">
<div class="form">
	    <form class="login-form" method="post" action="LoginProc.jsp">
			<input type="text" name="userID" placeholder="username"/>
			<input type="password" name="userPassword" placeholder="password" class="t1"/>
		
		  <table class="remember">
		    <tr>
			  <td><h1>Remember ?</h1></td>
			  <td><input type="checkbox" name="save" /></td>
			</tr> 
		  </table>
		
			<input type="submit" value="LOGIN" class="submit-button" id="login-button"> 
		 
		<p class="message"><a href="signUp.jsp">Create an account</a></p>
		<p class="message"><a href="admin/adminLogin.jsp">Admin Page</a></p>
		
		</form>
</div>
</div>
<% 	}else { 
	response.sendRedirect("index.jsp");
	}
%>


</body>	
</html>