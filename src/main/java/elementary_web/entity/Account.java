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
	@Column(name = "TEN_TAI_KHOAN")
	private String accountName;
	@Column(name = "NICK_NAME")
	private String nickName;
	@Column(name = "MAT_KHAU")
	private String password;
	@Column(name = "EMAIL")
	private String email;
	@Column(name = "SDT")
	private String phoneNumber;
	@Column(name = "TIEN_XU")
	private int coin;
	@Column(name = "DIEM_TICH_LUY")
	private int totalPoint;
	@Column(name = "DIEM_TICH_LUY_TUAN")
	private int weeklyPoint;
	@Column(name = "DIEM_TICH_LUY_THANG")
	private int monthlyPoint;
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

}
