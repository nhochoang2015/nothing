package elementary_web.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "LOAI_VAT_PHAM")
public class ItemCategory {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MA_LOAI_VAT_PHAM")
	private int categoryID;
	@Column(name = "TEN_LOAI_VAT_PHAM")
	private String categoryName;
	@OneToMany(mappedBy = "itemCategory")
	private List<Item> itemList;
}
