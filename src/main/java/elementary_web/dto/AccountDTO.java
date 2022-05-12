package elementary_web.dto;

public class AccountDTO {

	private int accountID;
	private String accountName;
	private String nickName;
	private String password;
	private String email;
	private String phoneNumber;
	private int coin;
	private int totalPoint;
	private int weeklyPoint;
	private int monthlyPoint;
	private int roleID;

	public AccountDTO(int accountID, String accountName, String nickName, String password, String email,
			String phoneNumber, int coin, int totalPoint, int weeklyPoint, int monthlyPoint, int roleID) {
		super();
		this.accountID = accountID;
		this.accountName = accountName;
		this.nickName = nickName;
		this.password = password;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.coin = coin;
		this.totalPoint = totalPoint;
		this.weeklyPoint = weeklyPoint;
		this.monthlyPoint = monthlyPoint;
		this.roleID = roleID;
	}

	public int getAccountID() {
		return accountID;
	}

	public void setAccountID(int accountID) {
		this.accountID = accountID;
	}

	public String getAccountName() {
		return accountName;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public int getCoin() {
		return coin;
	}

	public void setCoin(int coin) {
		this.coin = coin;
	}

	public int getTotalPoint() {
		return totalPoint;
	}

	public void setTotalPoint(int totalPoint) {
		this.totalPoint = totalPoint;
	}

	public int getWeeklyPoint() {
		return weeklyPoint;
	}

	public void setWeeklyPoint(int weeklyPoint) {
		this.weeklyPoint = weeklyPoint;
	}

	public int getMonthlyPoint() {
		return monthlyPoint;
	}

	public void setMonthlyPoint(int monthlyPoint) {
		this.monthlyPoint = monthlyPoint;
	}

	public int getRoleID() {
		return roleID;
	}

	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}

}
