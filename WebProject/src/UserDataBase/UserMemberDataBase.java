package UserDataBase;

import java.sql.*;
import java.util.*;

public class UserMemberDataBase {
	private static final String jdbcDriver = "com.mysql.jdbc.Driver";
	private static final String jdbcUrl  = "jdbc:mysql://localhost:3306/jsppro?serverTimezone=UTC&useSSl=false&characterEncoding=utf-8";
	private static final String dbUser = "root";
	private static final String dbPass = "poly1234@";
	
	private Connection con = null;
	private Statement stmt = null;
	
	//드라이버 로딩
	public UserMemberDataBase() {
		try {
			Class.forName(jdbcDriver);
		}
		catch(Exception e) {
			System.out.println("Exception"+e);
		}
	}
	
	//데이터 베이스 연결
	public void connect() {
		try {
			con = DriverManager.getConnection(jdbcUrl,dbUser,dbPass);
		}
		catch(Exception e) {
			System.out.println("Exception"+e);
		}
	}
	//데이터 베이스 연결 해제
	public void disconnect() {
		if(stmt != null) {
			try{
				stmt.close();
			}
			catch(SQLException ex){
				System.out.println("SQLException"+ex);
			}
		}
		if(con != null) {
			try{
				con.close();
			}
			catch(SQLException ex){
				System.out.println("SQLException"+ex);
			}
		}
	}
	
	public ArrayList<UserMember> getUserMemberList(){
		connect();
		ArrayList<UserMember> list = new ArrayList<UserMember>();
		
		String query = "select * from usermember";
		
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				UserMember um = new UserMember();

				um.setUserID(rs.getString("UserId"));
				um.setUserPassword (rs.getString("UserPassword"));
				um.setUserName(rs.getString("UserName"));
				um.setGender(rs.getString("Gender"));
				um.setUserSize(rs.getString("UserSize"));
				um.setUserPhone(rs.getString("UserPhone"));
				um.setUserEmail(rs.getString("UserEmail"));
				um.setUserRank(rs.getString("UserRank"));
				//리스트에 정보 객체 추가
				list.add(um);
			}
			 rs.close();
		}
		catch(SQLException ex){
			System.out.println("SQLException"+ex);
		}
		finally {
			disconnect();
		}
		return list;
	}
}
