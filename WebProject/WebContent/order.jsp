<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ȸ������</title>
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
      <%-- ���ĭ --%>
      <jsp:include page="top.jsp" flush="false" />
   </div>
   <table name="form">
      <tr>
         <td class="left">�ֹ��� ����</td>
    </tr>
    <tr>
         <td><input type="text" name="UserName" placeholder="�ֹ��ں� ������ �����ּ���" class="big"></td>
      </tr>

      <tr>
         <td>�ֹ��� ���̵�</td>
    </tr>
    <tr>
         <td><input type="text" name="UserID" placeholder="�ֹ��ں��� ID�� �����ּ���" class="big"></td>
      </tr>
    <tr>
      <td>�ֹ��� �̸���</td>
    </tr>
    <tr>
      <td><input type="text" name="UserEmail" placeholder="�ֹ��ں��� Email�� �����ּ���" class="big"></td>
    </tr>

    <tr>
      <td>�ֹ��� ����</td>
    </tr>
    <tr>
      <td>
        <select name="Gender">
          <option SELECTED value="����">���� </option>
          <option value="����">���� </option>
          </select><p>
        </td>
     </tr>

      <tr>
         <td>�ֹ��� ��ü������</td>
    </tr>
    <tr>
         <td><input type="text" name="UserSize" placeholder="�ֹ��ں��� ��ü����� �����ּ���" class="big"></td>
      </tr>


      <tr>
         <td>��ǰ��</td>
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
         <td>����</td>
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
         <td>�ֹ��� �ּ�</td>
    </tr>
    <tr>
         <td><input type="text" name="UserAddress" placeholder="�ֹ��ں��� �ּҸ� �����ּ���" class="big"></td>
      </tr>

      <tr>
         <td>�ֹ��� ����ó</td>
    </tr>
    <tr>
         <td><input type="text" name="UserPhone" placeholder="�ֹ��ں��� ����ó�� �����ּ���" class="big"></td>
      </tr>

      <tr>
         <td>�ֹ��� ��û����</td>
    </tr>
    <tr>
         <td><textarea name="Request" rows="10" cols="74"></textarea></td>
      </tr>


      <tr>
         <td>
        <input type="submit" value="�ֹ��ϱ�">
        <input type="submit" value="���">
     </td>
      </tr>
   </table>
	<div id="footer">
		<%-- �ϴܹ�� --%>
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
			pstmt.setString(1, UserName); //�̸�
			pstmt.setString(2, UserID); //���̵�
			pstmt.setString(3, Gender); //����
			pstmt.setString(4, UserSize); //������
			pstmt.setString(5, Product); //��ǰ��
			pstmt.setString(6, Color); //����
			pstmt.setString(7, UserAddress);//�ּ�
			pstmt.setString(8, UserPhone);//����ȣ
			pstmt.setString(9, Request);//��û����
			pstmt.executeUpdate();

		} catch (SQLException ex) {
			System.out.println("SQLException" + ex);

		} catch (Exception ex) {
			System.out.println("Exception:" + ex);
		}
	%>
</body>
</html>