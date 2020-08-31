package UserDataBase;

import java.sql.*;

public class AdminMgr {
	private DBConnectionMgr dbConnection = null;
	
	private Connection con = null;
	private PreparedStatement pstmt = null;
	
	//드라이버 로딩
	public AdminMgr() {
		try {
			dbConnection = DBConnectionMgr.getInstance();
		}
		catch(Exception e) {
			System.out.println("Exception"+e);
		}
	}
	
	//어드민, 회원 정보 수정(회원이 비밀번호를 분실했을 경우, 등급 수정)
	public boolean userUpdate(SignUpBean adminInsertBean) {
		boolean flag = false;
		try {
			con = dbConnection.getConnection();
			
			pstmt = con.prepareStatement("update into usermember values(?,?,?,?,?,?,?,?)");
			
			pstmt.setString(1, adminInsertBean.getUserId()); //아이디
			pstmt.setString(2, adminInsertBean.getUserPassword()); //비밀번호
			pstmt.setString(3, adminInsertBean.getUserName()); //이름
			pstmt.setString(4, adminInsertBean.getGender()); //성별
			pstmt.setString(5, adminInsertBean.getUserSize()); //신체사이즈
			pstmt.setString(6, adminInsertBean.getUserPhone()); //핸드폰 번호
			pstmt.setString(7, adminInsertBean.getUserEmail()); //이메일
			pstmt.setString(8, adminInsertBean.getUserRank()); //등급, if로 특정치 가격이 넘으면 자동으로 등급 상승
			int count = pstmt.executeUpdate();
			
			if (count == 1) {
                flag = true;
            }
		}
		catch (SQLException ex) {
			System.out.println("SQLException" + ex);
			
		}
		catch (Exception ex) {
			System.out.println("Exception:"+ ex);
		}
		finally{
			if(pstmt!=null){
				dbConnection.freeConnection(con, pstmt);
			}
		}
		return flag;
	}
	
	//어드민, 상품 추가
	public boolean productInsert(ProductBean adminInsertBean) {
		boolean flag = false;
		try {
			con = dbConnection.getConnection();
			
			pstmt = con.prepareStatement("insert into adminproduct values(?,?,?,?)");
			
			pstmt.setString(1, adminInsertBean.getProductName()); //상품 이름
			pstmt.setInt(2, adminInsertBean.getProductPrice()); //상품 가격
			pstmt.setString(3, adminInsertBean.getProductExp()); //상품 설명
			pstmt.setString(4, adminInsertBean.getProductImage()); //상품 이미지
			int count = pstmt.executeUpdate();
			
			if (count == 1) {
                flag = true;
            }
		}
		catch (SQLException ex) {
			System.out.println("SQLException" + ex);
			
		}
		catch (Exception ex) {
			System.out.println("Exception:"+ ex);
		}
		finally{
			if(pstmt!=null){
				dbConnection.freeConnection(con, pstmt);
			}
		}
		return flag;
	}
	
	//어드민, 상품 관리
	public boolean productUpdate(ProductBean adminUpdateBean) {
		boolean flag = false;
		try {
			con = dbConnection.getConnection();
			
			pstmt = con.prepareStatement("update into adminproduct values(?,?,?,?)");
			
			pstmt.setString(1, adminUpdateBean.getProductName()); //상품 이름
			pstmt.setInt(2, adminUpdateBean.getProductPrice()); //상품 가격
			pstmt.setString(3, adminUpdateBean.getProductExp()); //상품 설명
			pstmt.setString(4, adminUpdateBean.getProductImage()); //상품 이미지
			int count = pstmt.executeUpdate();
			
			if (count == 1) {
                flag = true;
            }
		}
		catch (SQLException ex) {
			System.out.println("SQLException" + ex);
			
		}
		catch (Exception ex) {
			System.out.println("Exception:"+ ex);
		}
		finally{
			if(pstmt!=null){
				dbConnection.freeConnection(con, pstmt);
			}
		}
		return flag;
	}
	
	//어드민, QnA 관리
	public boolean QnAInsert(QnABean QnAInsertBean) {
		boolean flag = false;
		try {
			con = dbConnection.getConnection();
			
			pstmt = con.prepareStatement("update into adminproduct values(?,?,?,?)");
			
			pstmt.setString(1, QnAInsertBean.getTitle()); //QnA 제목
			pstmt.setString(2, QnAInsertBean.getQuestion()); //QnA 내용
			int count = pstmt.executeUpdate();
			
			if (count == 1) {
                flag = true;
            }
		}
		catch (SQLException ex) {
			System.out.println("SQLException" + ex);
			
		}
		catch (Exception ex) {
			System.out.println("Exception:"+ ex);
		}
		finally{
			if(pstmt!=null){
				dbConnection.freeConnection(con, pstmt);
			}
		}
		return flag;
	}
	
}
