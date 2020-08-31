package UserDataBase;

public class SignUpBean {
	private String UserId;
	private String UserPassword;
	private String UserName;
	private String Gender;
	private String UserSize;
	private String UserPhone;
	private String UserEmail;
	private String UserRank = "Bronze";
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		this.UserId = userId;
	}
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
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		this.Gender = gender;
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
	public String getUserRank() {
		return UserRank;
	}
	public void setUserRank(String userRank) {
		this.UserRank = userRank;
	}
	
	
}
