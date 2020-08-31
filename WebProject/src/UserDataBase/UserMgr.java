package UserDataBase;

import java.sql.*;

public class UserMgr {
	private DBConnectionMgr dbConnection = null;
	
	//����̹� �ε�
	public UserMgr() {
		try {
			dbConnection = DBConnectionMgr.getInstance();
		}
		catch(Exception e) {
			System.out.println("Exception"+e);
		}
	}
	
	//�α��� ���� �� setAttribute�ؼ� ȸ�� ���� ����, ���� ���̵�� ��й�ȣ�� admin�� �ԷµǾ��� �� �ڵ����� ������ �������� �Ѿ��,
	//���� ���������� Ȩ�������� ���ƿ��� ��ư ���̱�. session.setAttribute�ؼ� admin�� �α����� �ȵǾ������� �α��� ��������
	
	//ȸ��, ���ǿ� ����
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
	
	//ȸ��, ����(���ڵ� �߰�)
	public boolean memberSignUp(SignUpBean signBean) {
		boolean flag = false;
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = dbConnection.getConnection();
			
			pstmt = con.prepareStatement("insert into usermember values(?, ?, ?, ?, ?, ?, ?, ?)");
			
			pstmt.setString(1, signBean.getUserId()); //���̵�
			pstmt.setString(2, signBean.getUserPassword()); //��й�ȣ
			pstmt.setString(3, signBean.getUserName()); //�̸�
			pstmt.setString(4, signBean.getGender()); //����
			pstmt.setString(5, signBean.getUserSize()); //��ü������
			pstmt.setString(6, signBean.getUserPhone()); //�ڵ��� ��ȣ
			pstmt.setString(7, signBean.getUserEmail()); //�̸���
			pstmt.setString(8, signBean.getUserRank()); //��ũ
			
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
	
	//ȸ��, ���� ����
	public boolean memberUpdate(UserBean updateBean) {
		boolean flag = false;
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = dbConnection.getConnection();
			
			pstmt = con.prepareStatement("update usermember set UserPassword = ?, UserName = ?, UserSize = ?, UserPhone = ?, UserEmail = ?");
			
			pstmt.setString(1, updateBean.getUserPassword()); //��й�ȣ
			pstmt.setString(2, updateBean.getUserName()); //�̸�
			pstmt.setString(3, updateBean.getUserSize()); //��ü������
			pstmt.setString(4, updateBean.getUserPhone()); //�ڵ��� ��ȣ
			pstmt.setString(5, updateBean.getUserEmail()); //�̸���
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
	
	//ȸ��, �ֹ�
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
