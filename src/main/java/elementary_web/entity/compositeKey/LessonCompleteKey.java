package elementary_web.entity.compositeKey;

import java.io.Serializable;

import javax.persistence.*;

@Embeddable
public class LessonCompleteKey implements Serializable {

	@Column(name = "MA_BAI_HOC")
	int lessonID;

	@Column(name = "MA_TAI_KHOAN")
	int accountID;

}
