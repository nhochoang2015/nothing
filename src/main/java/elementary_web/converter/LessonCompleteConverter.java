package elementary_web.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import elementary_web.dto.LessonCompleteDTO;
import elementary_web.entity.Account;
import elementary_web.entity.Lesson;
import elementary_web.entity.LessonComplete;
import elementary_web.entity.compositeKey.LessonCompleteKey;
import elementary_web.service.AccountService;
import elementary_web.service.LessonService;

@Component
public class LessonCompleteConverter {
	@Autowired
	AccountService accountService;
	@Autowired
	LessonService lessonService;

	public LessonCompleteDTO toDTO(LessonComplete entity) {
		int lessonID = entity.getLesson().getLessonID();
		int accountID = entity.getAccount().getAccountID();
		return new LessonCompleteDTO(lessonID, accountID);
	}

	public LessonComplete toEntity(LessonCompleteDTO dto) {
		int lessonID = dto.getLessonID();
		int accountID = dto.getAccountID();
		LessonCompleteKey id = new LessonCompleteKey(accountID, lessonID);
		Account account = accountService.findByAccountID(accountID);
		Lesson lesson = lessonService.findEntityByLessonID(lessonID);
		return new LessonComplete(id, account, lesson);
	}
}
