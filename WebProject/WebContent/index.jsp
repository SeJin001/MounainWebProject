<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>오더회사</title>
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
	#header {
	 width: 1300px;
	 height:auto;
	 margin: auto;
	 text-align: center;
	}
	#baner {
	 width: 1300px;
	 height: 50px; 
	 margin-top: 20px;
	}
	#lineUp{
	width: 1300px;
	margin-top: 50px;
	margin-left: 10px;
	}
	#video {
	width: 1300px;
	margin-top: 220px;
	}
	#lineUp img{
	padding:0px 80px 0px 80px;
	}
	#buttom{
	 width: 1300px;
	}
	#buttom  btmin {
	 text-align:left;
	}
	#event {
	margin-top:100px;
	width:20%;
    float:left;
    margin-left: 10px;
	}
	#note {
	margin-top:100px;

    float:right;
	}
	#footer {
	 width: auto;
	 height: auto;
	 clear:both;
	}
	
</style>
</head>
<body>
<div class="all">
	<div id="header"><%-- 웹 광고판 --%>
		 <jsp:include page="imageChange.jsp" flush="false"/>
	</div>
	<div id="baner"><%-- 배너칸 --%>
	
		 <jsp:include page="top.jsp" flush="false"/>
	</div>
	<div id="video">
		<video src="image/advertising/adv2.mp4" autoplay="autoplay" muted="muted" width="1300px"> </video>
	</div>
	<div id="lineUp"><%-- 라인업칸 --%>
		<h1>LINE UP</h1>
			<a href="#"><img src="image/LineUp/Lineup1_1.JPG"></a>
			<a href="#"><img src="image/LineUp/Lineup1_2.JPG"></a>
			<a href="#"><img src="image/LineUp/Lineup1_3.JPG"></a>
	</div>
	<div id ="event"><%-- 이벤트,공지사항칸 --%>
		<h1>EVENT</h1>
			<a href="#"><img src="image/Event/Event1.JPG"></a>
		</div>
	<div id ="note">
		<h1>NOTE</h1>
			<a href="#"><img src="image/ProDuctReview/ProDuctReview1.JPG" width="650"></a>
	 	</div>
	<div id="footer"><%-- 하단배너 --%>
		 <jsp:include page="Bottom.jsp" flush="false"/>
	</div>
</div>
</body>
</html>