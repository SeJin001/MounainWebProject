<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	
		<style>
			* { margin : 0px;
		        padding : 0px;
		        text-decoration : none;
		        list-style-type: none; }
		     
		    #wrapper { width : auto;
		    		   height: auto; 
		    		   font-family : arial, sans;
		       		   color: #5CACEB;}
		    .logo { float : left;
		            width : 200px; }
		    .logo img { width : 200px;
		                height : 200px; }
		    #lolba { width : 1300px;
		           text-align: center;
		           padding-left : 10px;}
		    .menu { float : left;
		            margin : auto;
		            display:inline;
		            padding : 25px 25px 25px 35px;
		            overflow: hidden; 
		            font-size: 20px; }
		    .mainmenu { padding : 8px 8px 8px 8px; }
		    .menu .mainmenu:hover { background-color : #2663B7; 
		    						color: white;
		    						text-decoration:none; }
		    .submenu { padding-top : 30px;
		    		   visibility : hidden;
		    		   text-decoration:none; }
		    .list { padding : 8px 8px 8px 8px; }
		   	.list:hover { background-color : #2663B7;
		   				  color: white; 
		   				  text-decoration:none;}
		    .menu:hover .submenu { visibility : visible; 
		    					   text-decoration:none; }
		    .login { text-align : right; 
		    		 display : block; 
		    		 margin-right : 10px; 
		    		 text-decoration:none; }
		  li { text-decoration:none; color: white;}
		  a:visited {text-decoration: none; color: #5CACEB;}
		</style>
	
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title> 등산가사 ^-^ </title>
	</head>
	
	<body>
		<div id = "wrapper">
		
	      <!-- top패널 -->
	      <div id = "header">
	      
	        <!-- 기업 로고 -->
	        <div class = "logo">
	        	<a href = "index.jsp"> <img src = "image/Logo/mainLogo3.JPG""> </a>
	        </div>
	        
	        <!-- 로그인 -->
	        <div class = "login">
	        	<a href = "LoginPage.jsp"> LOGIN </a> |
	        	<a href = "signUp.jsp"> SIGN UP </a>
	        </div>
	
	        <!-- 메뉴바 -->
	        <div id = "lolba">
		        <ul class = "menu">
		        	<li> <a href = "Stroy.jsp" class = "mainmenu"> SINCE 1995 </a> </li>
		        	<ul class = "submenu">
		        		<li class = "list"> <a href = "Stroy.jsp"> STORY </a> </li>
		        		<li class = "list"> <a href = "model.jsp"> MODEL PP </a> </li>
		        	</ul>
		        </ul>
		        
		        <ul class = "menu">
		        	<li> <a href = "#" class = "mainmenu"> NOTICE </a> </li>
		        	<ul class = "submenu">
		        		<li class = "list"> <a href = "#"> NOTICE </a> </li>
		        		<li class = "list"> <a href = "#"> EVENT </a> </li>
		        	</ul>
		        </ul>
		        	
		        <ul class = "menu">
		        	<li> <a href = "#" class = "mainmenu"> LINE UP </a> </li>
		        	<ul class = "submenu">
		        		<li class = "list"> <a href = "#"> ALPINE SHELLS </a> </li>
		        		<li class = "list"> <a href = "#"> SNOW SHELLS </a> </li>
		        		<li class = "list"> <a href = "#"> SNOW SHELLS </a> </li>
		        	</ul>
		        </ul>
		        	
		       	<ul class = "menu">
		        	<li> <a href = "#" class = "mainmenu"> ORDER </a> </li>
		        	<ul class = "submenu">
		        		<li class = "list"> <a href = "order.jsp"> ORDER </a> </li>
		        		<li class = "list"> <a href = "#"> ORDER CHECK </a> </li>
		        	</ul>
		        </ul>
		        	
		        <ul class = "menu">
		        	<li> <a href = "#" class = "mainmenu"> SERVICE </a> </li>
		        	<ul class = "submenu">
		        		<li class = "list"> <a href = "#"> Q & A </a> </li>
		        		<li class = "list"> <a href = "#"> LOCATION </a> </li>
		        	</ul>
		       	</ul>     	
	        </div>
	      </div>
	    </div>
	    
	</body>
</html>