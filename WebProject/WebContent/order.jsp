<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원가입</title>
<style>
body {
   width: 1300px;
   margin: auto;
     background-image:url('image/background/mount.jpg');
}
.all {
	 width: 1300px;
     margin: auto;
     background-color: White;
	}
td {
  font-style:obligue;
  font-size:20px;
  font-family:'Malgun Gothic';
}

table {
   width: 600px;
   height: 600px;
   margin-left: auto;
   margin-right: auto;
}
tr {
  height:50px;
}
select {
  width:120px;
  height:50px;
}
#BLUE {
  color:#055bfa;
}
#RED {
  color:#fa0505;
}
#YELLO {
  color:#bab100;
}

.left {
   width: 150px;
}

.big {
   width: 500px;
   line-height: 50px;
   font-size: 20px;
}
input[type=submit]{
     background:#1AAB8A;
     color:#fff;
     border:none;
     position:relative;
     width:75px;
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
   <div id="baner">
      <%-- 배너칸 --%>
      <jsp:include page="top.jsp" flush="false" />
   </div>
   <table name="form">
      <tr>
         <td class="left">주문자 성함</td>
    </tr>
    <tr>
         <td><input type="text" name="UserName" placeholder="주문자분 성함을 적어주세요" class="big"></td>
      </tr>

      <tr>
         <td>주문자 아이디</td>
    </tr>
    <tr>
         <td><input type="text" name="UserID" placeholder="주문자분의 ID를 적어주세요" class="big"></td>
      </tr>
    <tr>
      <td>주문자 이메일</td>
    </tr>
    <tr>
      <td><input type="text" name="UserEmail" placeholder="주문자분의 Email을 적어주세요" class="big"></td>
    </tr>

    <tr>
      <td>주문자 성별</td>
    </tr>
    <tr>
      <td>
        <select name="Gender">
          <option SELECTED value="남자">남자 </option>
          <option value="여자">여자 </option>
          </select><p>
        </td>
     </tr>

      <tr>
         <td>주문자 신체사이즈</td>
    </tr>
    <tr>
         <td><input type="text" name="UserSize" placeholder="주문자분의 신체사이즈를 적어주세요" class="big"></td>
      </tr>


      <tr>
         <td>상품명</td>
    </tr>
    <tr>
         <td>
        <select name="Product">
          <option SELECTED value="Alpine Shells"> Alpine Shells </option>
          <option value="Snow Shells"> Snow Shells </option>
          <option value="Everyday Shells"> Alpine Shells </option>
        </select>
         </td>
      </tr>

      <tr>
         <td>색상</td>
    </tr>
    <tr>
         <td>
        <select name="Product">
          <option SELECTED value="BLACK" id = "BLACK"> BLACK </option>
          <option value="BLUE" id = "BLUE"> BLUE </option>
          <option value="RED" id = "RED"> RED </option>
          <option value="YELLO" id = "YELLO"> YELLO </option>
        </select>
         </td>
      </tr>

      <tr>
         <td>주문자 주소</td>
    </tr>
    <tr>
         <td><input type="text" name="UserAddress" placeholder="주문자분의 주소를 적어주세요" class="big"></td>
      </tr>

      <tr>
         <td>주문자 연락처</td>
    </tr>
    <tr>
         <td><input type="text" name="UserPhone" placeholder="주문자분의 연락처를 적어주세요" class="big"></td>
      </tr>

      <tr>
         <td>주문자 요청사항</td>
    </tr>
    <tr>
         <td><textarea name="Request" rows="10" cols="74"></textarea></td>
      </tr>


      <tr>
         <td>
        <input type="submit" value="주문하기">
        <input type="submit" value="취소">
     </td>
      </tr>
   </table>
	<div id="footer">
		<%-- 하단배너 --%>
		<jsp:include page="Bottom.jsp" flush="false" />
	</div>
	</div>
	<%
		request.setCharacterEncoding("utf-8");
		Connection conn = null;
		PreparedStatement pstmt = null;
		String UserName = request.getParameter("UserName");
		String UserID = request.getParameter("UserID");
		String Gender = request.getParameter("Gender");
		String UserSize = request.getParameter("UserSize");
		String Product = request.getParameter("Product");
		String Color = request.getParameter("Color");
		String UserAddress = request.getParameter("UserAddress");
		String UserPhone = request.getParameter("UserPhone");
		String Request = request.getParameter("Request");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String jdbcDriver = "jdbc:mysql://localhost:3306/jsppro?serverTimezone=UTC&useSSl=false&characterEncoding=utf-8";
			String dbUser = "root";
			String dbPass = "poly1234@";

			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			pstmt = conn.prepareStatement("Insert into members values(?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1, UserName); //이름
			pstmt.setString(2, UserID); //아이디
			pstmt.setString(3, Gender); //성별
			pstmt.setString(4, UserSize); //사이즈
			pstmt.setString(5, Product); //상품명
			pstmt.setString(6, Color); //색상
			pstmt.setString(7, UserAddress);//주소
			pstmt.setString(8, UserPhone);//폰번호
			pstmt.setString(9, Request);//요청사항
			pstmt.executeUpdate();

		} catch (SQLException ex) {
			System.out.println("SQLException" + ex);

		} catch (Exception ex) {
			System.out.println("Exception:" + ex);
		}
	%>
</body>
</html>