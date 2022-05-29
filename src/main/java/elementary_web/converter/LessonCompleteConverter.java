package elementary_web.converter;

import org.springframework.stereotype.Component;

import elementary_web.dto.LessonCompleteDTO;
import elementary_web.entity.LessonComplete;

@Component
public class LessonCompleteConverter {

	public LessonCompleteDTO toDTO(LessonComplete entity) {
		int lessonID = entity.getLesson().getLessonID();
		int accountID = entity.getAccount().getAccountID();
		return new LessonCompleteDTO(lessonID, accountID);
	}

}
