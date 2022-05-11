package elementary_web.entity;

import java.util.List;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import elementary_web.entity.compositeKey.AccountMissonKey;

@Entity
@Table(name = "NHIEM_VU")
public class Misson {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MA_NHIEM_VU")
	private int missonID;
	@Column(name = "TEN_NHIEM_VU")
	private String missonName;
	@Column(name = "SO_LAN_PHAI_LAM")
	private int timeNeedToComplete;
	@Column(name = "DIEM_THUONG")
	private int reward;
    @OneToMany(mappedBy = "misson")
	private List<AccountMisson> accountMissonList;

}
