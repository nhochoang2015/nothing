package elementary_web.entity;

import javax.persistence.*;

import elementary_web.entity.compositeKey.CollectionKey;

@Entity
@Table(name = "BO_SUU_TAP")
public class Collection {    
	@EmbeddedId
	private CollectionKey id;
	@ManyToOne
	@MapsId("accountID")
	@JoinColumn(name = "MA_TAI_KHOAN")
	private Account account;
	@ManyToOne
	@MapsId("itemID")
	@JoinColumn(name = "MA_VAT_PHAM")
	private Item item;

}
