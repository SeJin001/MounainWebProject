<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
*{margin:0; paddong:0px;}
	body {
	  background-image:url('image/background/mount.jpg');
	}
	.all {
	 width: 1300px;
     margin: auto;
     background-color: White;
	}
	#login {
	 margin-top: 400px;
	}
	#footer {
	 margin-top: 400px;
	}
</style>
</head>
<body>
<div class="all">
<div id="baner"><%-- ���ĭ --%>
	 <jsp:include page="top.jsp" flush="false"/>
</div>
<div id="login"><%-- �α���â --%>
	 <jsp:include page="Login.jsp" flush="false"/>
</div>
<div id="footer"><%-- �ϴܹ�� --%>
	 <jsp:include page="Bottom.jsp" flush="false"/>
</div>


</div>
</body>
</html>