package elementary_web.service;

import org.springframework.beans.factory.annotation.Autowired;

import elementary_web.converter.LessonConverter;
import elementary_web.dto.LessonDTO;
import elementary_web.entity.Lesson;
import elementary_web.repository.LessonRepository;

public class LessonService {

	@Autowired
	LessonRepository lessonRepository;
	@Autowired
	LessonConverter lessonConverter;

	public LessonDTO findByLessonID(int lessonID) {
		Lesson lesson = lessonRepository.findByLessonID(lessonID);
		return lessonConverter.toDTO(lesson);

	}
}
