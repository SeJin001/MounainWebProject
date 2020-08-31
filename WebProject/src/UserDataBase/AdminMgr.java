package UserDataBase;

import java.sql.*;

public class AdminMgr {
	private DBConnectionMgr dbConnection = null;
	
	private Connection con = null;
	private PreparedStatement pstmt = null;
	
	//����̹� �ε�
	public AdminMgr() {
		try {
			dbConnection = DBConnectionMgr.getInstance();
		}
		catch(Exception e) {
			System.out.println("Exception"+e);
		}
	}
	
	//����, ȸ�� ���� ����(ȸ���� ��й�ȣ�� �н����� ���, ��� ����)
	public boolean userUpdate(SignUpBean adminInsertBean) {
		boolean flag = false;
		try {
			con = dbConnection.getConnection();
			
			pstmt = con.prepareStatement("update into usermember values(?,?,?,?,?,?,?,?)");
			
			pstmt.setString(1, adminInsertBean.getUserId()); //���̵�
			pstmt.setString(2, adminInsertBean.getUserPassword()); //��й�ȣ
			pstmt.setString(3, adminInsertBean.getUserName()); //�̸�
			pstmt.setString(4, adminInsertBean.getGender()); //����
			pstmt.setString(5, adminInsertBean.getUserSize()); //��ü������
			pstmt.setString(6, adminInsertBean.getUserPhone()); //�ڵ��� ��ȣ
			pstmt.setString(7, adminInsertBean.getUserEmail()); //�̸���
			pstmt.setString(8, adminInsertBean.getUserRank()); //���, if�� Ư��ġ ������ ������ �ڵ����� ��� ���
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
	
	//����, ��ǰ �߰�
	public boolean productInsert(ProductBean adminInsertBean) {
		boolean flag = false;
		try {
			con = dbConnection.getConnection();
			
			pstmt = con.prepareStatement("insert into adminproduct values(?,?,?,?)");
			
			pstmt.setString(1, adminInsertBean.getProductName()); //��ǰ �̸�
			pstmt.setInt(2, adminInsertBean.getProductPrice()); //��ǰ ����
			pstmt.setString(3, adminInsertBean.getProductExp()); //��ǰ ����
			pstmt.setString(4, adminInsertBean.getProductImage()); //��ǰ �̹���
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
	
	//����, ��ǰ ����
	public boolean productUpdate(ProductBean adminUpdateBean) {
		boolean flag = false;
		try {
			con = dbConnection.getConnection();
			
			pstmt = con.prepareStatement("update into adminproduct values(?,?,?,?)");
			
			pstmt.setString(1, adminUpdateBean.getProductName()); //��ǰ �̸�
			pstmt.setInt(2, adminUpdateBean.getProductPrice()); //��ǰ ����
			pstmt.setString(3, adminUpdateBean.getProductExp()); //��ǰ ����
			pstmt.setString(4, adminUpdateBean.getProductImage()); //��ǰ �̹���
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
	
	//����, QnA ����
	public boolean QnAInsert(QnABean QnAInsertBean) {
		boolean flag = false;
		try {
			con = dbConnection.getConnection();
			
			pstmt = con.prepareStatement("update into adminproduct values(?,?,?,?)");
			
			pstmt.setString(1, QnAInsertBean.getTitle()); //QnA ����
			pstmt.setString(2, QnAInsertBean.getQuestion()); //QnA ����
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
