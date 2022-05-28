package elementary_web.converter;

import java.util.List;

import org.springframework.stereotype.Component;

import elementary_web.dto.LessonDTO;
import elementary_web.entity.Lesson;

@Component
public class LessonConverter {
	public LessonDTO toDTO(Lesson entity) {
		int lessonID = entity.getLessonID();
		String lessonName = entity.getLessonName();
		int chapterID = entity.getChapter().getChapterID();
		int lessonBeforeID = entity.getLessonBefore().getLessonID();
		return new LessonDTO(lessonID, lessonName, chapterID, lessonBeforeID);
	}
}
