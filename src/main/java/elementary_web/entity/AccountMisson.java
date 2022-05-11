package elementary_web.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;

import elementary_web.entity.compositeKey.AccountMissonKey;

@Entity
@Table(name = "NHIEM_VU_TAI_KHOAN")
public class AccountMisson {

	@EmbeddedId
	private AccountMissonKey id;
	@Column(name = "SO_LAN_DA_LAM")
	private int timesDone;
	@Column(name = "NGAY_KET_THUC")
	private Date endDate;
	@Column(name = "HOAN_THANH")
	private boolean isComplete;
	@ManyToOne
	@MapsId("accountID")
	@JoinColumn(name = "MA_TAI_KHOAN")
	private Account account;
	@ManyToOne
	@MapsId("missonID")
	@JoinColumn(name = "MA_NHIEM_VU")	
	private Misson misson;

}
