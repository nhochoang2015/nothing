package elementary_web.entity;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "TAI_KHOAN")
public class Account {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MA_TAI_KHOAN")
	private int accountID;
	@Column(name = "TEN_TAI_KHOAN", unique = true)
	private String accountName;
	@Column(name = "NICK_NAME", unique = true)
	private String nickName;
	@Column(name = "MAT_KHAU")
	private String password;
	@Column(name = "EMAIL", unique = true)
	private String email;
	@Column(name = "SDT", unique = true)
	private String phoneNumber;
	@Column(name = "TIEN_XU")
	private int coin;
	@Column(name = "DIEM_TICH_LUY")
	private int totalPoint;
	@Column(name = "DIEM_TICH_LUY_TUAN")
	private int weeklyPoint;
	@Column(name = "DIEM_TICH_LUY_THANG")
	private int monthlyPoint;
	@Column(name = "HOAT_DONG")
	private boolean active;
	@ManyToOne
	@JoinColumn(name = "MA_VAI_TRO", nullable = false)
	private Role role;
    @OneToMany(mappedBy = "account")
	private List<Collection> collectionList;
    @OneToMany(mappedBy = "account")
	private List<AccountMisson> accountMissonList;
    @OneToMany(mappedBy = "account")
	private List<TestResult> testResultList;
    @OneToMany(mappedBy = "account")
	private List<LessonComplete> lessonCompleteList;
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
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	
	public List<Collection> getCollectionList() {
		return collectionList;
	}
	public void setCollectionList(List<Collection> collectionList) {
		this.collectionList = collectionList;
	}
	public List<AccountMisson> getAccountMissonList() {
		return accountMissonList;
	}
	public void setAccountMissonList(List<AccountMisson> accountMissonList) {
		this.accountMissonList = accountMissonList;
	}
	public List<TestResult> getTestResultList() {
		return testResultList;
	}
	public void setTestResultList(List<TestResult> testResultList) {
		this.testResultList = testResultList;
	}
	public List<LessonComplete> getLessonCompleteList() {
		return lessonCompleteList;
	}
	public void setLessonCompleteList(List<LessonComplete> lessonCompleteList) {
		this.lessonCompleteList = lessonCompleteList;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}

}
