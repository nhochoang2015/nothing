package elementary_web.entity;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

import elementary_web.entity.compositeKey.TestResultKey;

@Entity
@Table(name = "KET_QUA_BAI_THI")
public class TestResult {

	@EmbeddedId
	private TestResultKey id;
	@ManyToOne
	@MapsId("accountID")
	@JoinColumn(name = "MA_TAI_KHOAN")
	private Account account;
	@ManyToOne
	@MapsId("testID")
	@JoinColumn(name = "MA_BAI_THI")
	private Test test;
	@Column(name = "DIEM")
	private int result;
}
