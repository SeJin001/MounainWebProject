<%@ page import ="java.util.*, UserDataBase.*" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>회원가입</title>
  <style>
*{margin:0; paddong:0px;}
   body {
	width:1300px; 
	margin: auto;
	background-image:url('image/background/mount.jpg');
	
  }
   table {
    width: 600px;
    height: 600px;
    margin-left: auto;
    margin-right: auto;
  }
  .left {
  	width:150px;
  }
  .all {
	 width: 1300px;
     margin: auto;
     background-color: White;
	}
  .big {
	width:300px;
	line-height: 50px;
	font-size: 20px;
  }
  
	input[type=submit]{
	  background:#1AAB8A;
	  color:#fff;
	  border:none;
	  position:relative;
	  width:65px;
	  height:40px;
	  font-size:15px;
	  cursor:pointer;
	  transition:800ms ease all;
	  outline:none;
	}
	input[type=submit]:hover{
	  background:#fff;
	  color:#1AAB8A;
	}
	input[type=submit]:before,input[type=submit]:after{
	  content:'';
	  position:absolute;
	  top:0;
	  right:0;
	  height:2px;
	  width:0;
	  background: #1AAB8A;
	  transition:400ms ease all;
	}
	input[type=submit]:after{
	  right:inherit;
	  top:inherit;
	  left:0;
	  bottom:0;
	}
	input[type=submit]:hover:before,input[type=submit]:hover:after{
	  width:100%;
	  transition:800ms ease all;
	}
  
  #footer {
	margin-top: 200px;  
  }
  </style>
  </head>
 <body>

 <div class="all">
 <div id="baner"><%-- 배너칸 --%>
	 <jsp:include page="top.jsp" flush="false"/>
</div>
<jsp:useBean id="userBean" scope="page" class="UserDataBase.UserBean"/>
<jsp:setProperty name="userBean" property="*" />

<form name ="Form" method="post" action="signUpPric.jsp">
  <table>
    <tr>
      <td class="left">아이디 입력</td>
    <td>
      <input type="text" name="UserId" placeholder="ID를 입력하시오" class="big" >
      <input type="submit" value="중복체크">
	  
    </td>
    </tr>

   <tr>
     <td>비밀번호 입력</td>
     <td><input type="password" name="UserPassword" placeholder="숫자, 특수기호를 넣으시오" class="big">
     
     </td>
  </tr>
  <tr>
      <td>이름</td>
      <td>
        <input type="text" name="UserName" placeholder="한글로 작성하시오" class="big">
 		
      </td>
  </tr>

  <tr>
      <td>성별</td>
  <td>
    <select name="Gender">
	   <option SELECTED value="남자">남자 </option> 
	   <option value="여자">여자 </option>
	</select><p>
	
   </td>
  </tr>
  
  <tr>
    <td>신체사이즈</td>
  <td>
    <input type="text" name="UserSize" placeholder="ex)180" class="big">
    
  </td>
  </tr>
  
  <tr>
    <td>핸드폰번호</td>
      <td>
        <input type="text"  name="UserPhone" placeholder="ex)0101234789" class="big"> 
		
   </td>
   </tr>
   
      <tr>
       <td>이메일주소</td>
        <td>
          <input type="text" name="UserEmail" placeholder="ex)amUman559@naver.com" class="big">
          
      </td>
      </tr>
   
      <tr>
      	<td></td>
        <td>
        <input type="submit" value="회원가입">
        <input type="submit" value="취소">
        </td>
      </tr>
    </table>
   </form>
 <div id="footer"><%-- 하단배너 --%>
	<jsp:include page="Bottom.jsp" flush="false"/>
</div>
  </div>
  </body>

</html>
