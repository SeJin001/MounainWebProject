package UserDataBase;

public class UserBean {
	private String UserPassword;
	private String UserName;
	private String UserSize;
	private String UserPhone;
	private String UserEmail;
	
	public String getUserPassword() {
		return UserPassword;
	}
	public void setUserPassword(String userPassword) {
		this.UserPassword = userPassword;
	}
	
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		this.UserName = userName;
	}
	public String getUserSize() {
		return UserSize;
	}
	public void setUserSize(String userSize) {
		this.UserSize = userSize;
	}
	
	public String getUserPhone() {
		return UserPhone;
	}
	public void setUserPhone(String userPhone) {
		this.UserPhone = userPhone;
	}
	
	public String getUserEmail() {
		return UserEmail;
	}
	public void setUserEmail(String userEmail) {
		this.UserEmail = userEmail;
	}
}
