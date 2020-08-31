<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Stroy</title>
<style>
	*{margin:0; paddong:0px;}
	body {
	  background-image:url('image/background/mount.jpg');
	}
	.all {
      width: 1300px;
      height:auto;
      margin: auto;
      background-color: white;
    }
   #baner {
	 width: 1300px;
	 height: 50px; 
	}
	#typing {
	 margin-bottom: 100px;
	}
	#footer {
	 margin-top: 150px;
	 width: auto;
	 height: auto;
	 clear:both;
	}
	
</style>
</head>
<body>
<div class="all">
<div id="baner"><%-- 배너칸 --%>
		<jsp:include page="top.jsp" flush="false"/>
</div>
<div id="typing"><%-- 내용물 --%>
		 <jsp:include page="Company.jsp" flush="false"/>	 
</div>
<div id="footer"><%-- 하단배너 --%>
	 <jsp:include page="Bottom.jsp" flush="false"/>
</div>
</div>
</body>
</html>