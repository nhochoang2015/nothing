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

import elementary_web.entity.compositeKey.TestContentKey;

@Entity
@Table(name = "NOI_DUNG_BAI_THI")
public class TestContent {

	@EmbeddedId
	private TestContentKey id;
	@ManyToOne
	@MapsId("testID")
	@JoinColumn(name = "MA_BAI_THI")
	private Test test;
	@ManyToOne
	@MapsId("questionID")
	@JoinColumn(name = "MA_CAU_HOI")
	private Question question;
}
