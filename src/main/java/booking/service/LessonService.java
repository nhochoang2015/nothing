package booking.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import booking.converter.LessonConverter;
import booking.dto.LessonDTO;
import booking.entity.Lesson;
import booking.repository.LessonRepository;

@Service
public class LessonService {

	@Autowired
	LessonRepository lessonRepository;
	@Autowired
	LessonConverter lessonConverter;

	public LessonDTO findByLessonID(int lessonID) {
		Lesson lesson = lessonRepository.findByLessonID(lessonID);
		return lessonConverter.toDTO(lesson);

	}

	public Lesson findEntityByLessonID(int lessonID) {
		Lesson lesson = lessonRepository.findByLessonID(lessonID);
		return lesson;

	}

	public List<LessonDTO> findLessonsByChapterID(int chapterID) {
		List<Lesson> lessonList = lessonRepository.findByChapter_ChapterID(chapterID);
		List<LessonDTO> lessonDTOList = new ArrayList<LessonDTO>();
		for (Lesson lesson : lessonList) {
			lessonDTOList.add(lessonConverter.toDTO(lesson));
		}
		return lessonDTOList;
	}

	public int save(LessonDTO lessonDTO) {
		return lessonRepository.save(lessonConverter.toEntity(lessonDTO)).getLessonID();

	}

	
}
