package booking.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import booking.dto.LessonCompleteDTO;
import booking.entity.Account;
import booking.entity.Lesson;
import booking.entity.LessonComplete;
import booking.entity.compositeKey.LessonCompleteKey;
import booking.service.AccountService;
import booking.service.LessonService;

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
