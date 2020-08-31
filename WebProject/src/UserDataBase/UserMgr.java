package UserDataBase;

import java.sql.*;

public class UserMgr {
	private DBConnectionMgr dbConnection = null;
	
	//드라이버 로딩
	public UserMgr() {
		try {
			dbConnection = DBConnectionMgr.getInstance();
		}
		catch(Exception e) {
			System.out.println("Exception"+e);
		}
	}
	
	//로그인 했을 시 setAttribute해서 회원 정보 저장, 만약 아이디와 비밀번호에 admin이 입력되었을 시 자동으로 관리자 페이지로 넘어가고,
	//어드민 페이지에서 홈페이지로 돌아오는 버튼 붙이기. session.setAttribute해서 admin이 로그인이 안되어있으면 로그인 페이지로
	
	//회원, 세션에 저장
	public boolean memberIdCheck(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
        boolean check = false;
        try {
        	con = dbConnection.getConnection();
        	pstmt = con.prepareStatement("select id from usermember where id = ?");
        	pstmt.setString(1, id);
        	check = rs.next();
        }
        catch (SQLException ex) {
			System.out.println("SQLException" + ex);
		}
		catch (Exception ex) {
			System.out.println("Exception:"+ ex);
		}
		finally{
			if(pstmt!=null){
				dbConnection.freeConnection(con, pstmt, rs);
			}
		}
        
        return check;
	}
	
	//회원, 가입(레코드 추가)
	public boolean memberSignUp(SignUpBean signBean) {
		boolean flag = false;
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = dbConnection.getConnection();
			
			pstmt = con.prepareStatement("insert into usermember values(?, ?, ?, ?, ?, ?, ?, ?)");
			
			pstmt.setString(1, signBean.getUserId()); //아이디
			pstmt.setString(2, signBean.getUserPassword()); //비밀번호
			pstmt.setString(3, signBean.getUserName()); //이름
			pstmt.setString(4, signBean.getGender()); //성별
			pstmt.setString(5, signBean.getUserSize()); //신체사이즈
			pstmt.setString(6, signBean.getUserPhone()); //핸드폰 번호
			pstmt.setString(7, signBean.getUserEmail()); //이메일
			pstmt.setString(8, signBean.getUserRank()); //랭크
			
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
	
	//회원, 정보 수정
	public boolean memberUpdate(UserBean updateBean) {
		boolean flag = false;
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = dbConnection.getConnection();
			
			pstmt = con.prepareStatement("update usermember set UserPassword = ?, UserName = ?, UserSize = ?, UserPhone = ?, UserEmail = ?");
			
			pstmt.setString(1, updateBean.getUserPassword()); //비밀번호
			pstmt.setString(2, updateBean.getUserName()); //이름
			pstmt.setString(3, updateBean.getUserSize()); //신체사이즈
			pstmt.setString(4, updateBean.getUserPhone()); //핸드폰 번호
			pstmt.setString(5, updateBean.getUserEmail()); //이메일
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
	
	//회원, 주문
	public boolean memberOrder(OrderBean orderBean) {
		boolean flag = false;
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = dbConnection.getConnection();
			
			pstmt = con.prepareStatement("Insert into userorder values(?, ?, ?, ?, ?, ?, ?, ?, ?)");
			
			pstmt.setString(1, orderBean.getUserName());
			pstmt.setString(2, orderBean.getUserID());
			pstmt.setString(3, orderBean.getGender());
			pstmt.setString(4, orderBean.getUserSize());
			pstmt.setString(5, orderBean.getProduct());
			pstmt.setString(6, orderBean.getColor());
			pstmt.setString(7, orderBean.getUserAddress());
			pstmt.setString(8, orderBean.getUserPhone());
			pstmt.setString(9, orderBean.getRequest());
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
