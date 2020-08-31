<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>model_pp</title>

    <style type="text/css">
	/* 마우스오버 사진확대 */
    .sample_image  img {
        -webkit-transform:scale(1);
        -moz-transform:scale(1);
        -ms-transform:scale(1);
        -o-transform:scale(1);
        transform:scale(1);
        -webkit-transition:.3s;
        -moz-transition:.3s;
        -ms-transition:.3s;
        -o-transition:.3s;
        transition:.3s;

    }
    .sample_image:hover img {
        -webkit-transform:scale(1.2);
        -moz-transform:scale(1.2);
        -ms-transform:scale(1.2);
        -o-transform:scale(1.2);
        transform:scale(1.2);
        border-color:#333;
    }


  </style>



    <style>

          h1 {
            font-size: 52px; font-weight: 900;
          }  /* 제목 */

          h2 {
            font-size: 30px; font-weight: 400;
          }  /* 인덱스 */

          h3 {
            font-size: 20px; font-weight: 150;
          }  /* 본문 내용 */

		/* 아래부터 레이아웃 */

      #pp-container {
        width: 960px;
        margin: 0px auto;
        padding: 20px;
        /* border: 1px solid #bcbcbc; */
      }
      #pp-header {
        padding: 20px 0px 20px 185px;
        text-algin: cnter;
        margin-bottom: 20px;
        /* border: 1px solid #bcbcbc; */

      }
      #pp-photo1 {
        width: 430px;
        height:430px;
        padding: 20px;
        margin-bottom: 20px;
        float: left;
        /* border: 1px solid #bcbcbc; */
      }
      #pp-content1 {
        width: 430px;
        height:215px;
        padding: 20px 20px 20px 40px;
        margin-bottom: 20px;
        float: right;
        /* border: 1px solid #bcbcbc; */
      }

      #pp-photo2 {
        width: 430px;
        height:430px;
        padding: 20px;
        margin-bottom: 20px;
        float: right;
        /* border: 1px solid #bcbcbc; */
      }
      #pp-content2 {
        width: 430px;
        height:215px;
        padding: 20px 20px 20px 40px;
        margin-bottom: 20px;
        float: left;
        /* border: 1px solid #bcbcbc; */
      }

      #pp-photo3 {
        width: 430px;
        height:430px;
        padding: 20px;
        margin-bottom: 20px;
        float: left;
        /* border: 1px solid #bcbcbc; */
      }
      #pp-content3 {
        width: 430px;
        height:215px;
        padding: 20px 20px 20px 40px;
        margin-bottom: 20px;
        float: right;
        /* border: 1px solid #bcbcbc; */
      }
      #pp-photo4 {
        width: 430px;
        height:430px;
        padding: 20px;
        margin-bottom: 20px;
        float: right;
        /* border: 1px solid #bcbcbc; */
      }
      #pp-content4 {
        width: 430px;
        height:215px;
        padding: 20px 20px 20px 40px;
        margin-bottom: 20px;
        float: left;
        /* border: 1px solid #bcbcbc; */
      }

      #pp-footer {
        clear: both;
        padding: 20px 0px 20px 100px;
        /* border: 1px solid #bcbcbc; */
      }
    </style>
  </head>
  
  <%--여기서부터 내용 */--%>
  <body>
    <div id="pp-container">

      <div id="pp-header">
        <h1>PRODUCTION PROCESS</h1>
        <h2>&nbsp;&nbsp;&nbsp; History doesn't happen overnight</h2>
      </div>

      <div id="pp-photo1">
        <div class="sample_image">
          <img src="image/model/model1.jpg" style="width:430px; height:430px"alt="model1">
        </div>
      </div>
      <div id="pp-content1">
        <h2>1. Order, requirements check</h2>
        <h3>&nbsp;&nbsp; - Body size in detail </h3>
        <h3>&nbsp;&nbsp; - Review requirements carefully </h3>

      </div>

      <div id="pp-photo2">
        <div class="sample_image">
          <img src="image/model/model2.jpg" style="width:430px; height:430px" alt="model2">
        </div>
      </div>

      <div id="pp-content2">
        <h2>2. Use the best material</h2>
        <h3>&nbsp;&nbsp; - GORE-TEX , RDS ducks and geese down</h3>
        <h3>&nbsp;&nbsp; - Use of materials to reflect requirements</h3>
      </div>

      <div id="pp-photo3">
        <div class="sample_image">
          <img src="image/model/model3.jpg" style="width:430px; height:430px" alt="model3">
        </div>
      </div>
      <div id="pp-content3">
        <h2>3. Manual process</h2>
        <h3>&nbsp;&nbsp; -  Quality improvement through </h3>
        <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; full manual work </h3>
      </div>

      <div id="pp-photo4">
        <div class="sample_image">
          <img src="image/model/model4.jpg" style="width:430px; height:430px" alt="model4">
        </div>
      </div>
      <div id="pp-content4">
        <h2>4. Meticulous quality inspection</h2>
        <h3>&nbsp;&nbsp; -  155 Functional Testing</h3>
        <h3>&nbsp;&nbsp; -  Full refund of dissatisfaction</h3>
      </div>

      <div id="pp-footer">
        <h2>If you have anything you want, tell us right now !</h2>
      </div>
    </div>
  </body>
</html>
    