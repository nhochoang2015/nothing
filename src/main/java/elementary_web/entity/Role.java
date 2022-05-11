package elementary_web.entity;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "VAI_TRO")
public class Role {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MA_VAI_TRO")
	private int roleID;
	@Column(name = "TEN_VAI_TRO")
	private int roleName;
	@OneToMany(mappedBy = "role")
	private List<Account> accountList;
}
