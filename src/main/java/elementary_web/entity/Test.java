package elementary_web.entity;

import java.util.List;
import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "BAI_THI")
public class Test {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MA_BAI_THI")
	private int testID;
	@Column(name = "TEN_BAI_THI")
	private String testName;
	@Column(name = "NGAY_BAT_DAU")
	private Date dateStart;
	@Column(name = "NGAY_KET_THUC")
	private Date dateEnd;
	@Column(name = "DIEM_THUONG")
	private int reward;
    @OneToMany(mappedBy = "test")
	private List<TestContent> testContentList;
    @OneToMany(mappedBy = "test")
	private List<TestResult> testResultList;

}
