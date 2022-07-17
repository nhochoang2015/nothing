package booking.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import booking.dto.QuestionDTO;
import booking.entity.Lesson;
import booking.entity.Question;
import booking.service.LessonService;

@Component
public class QuestionConverter {

	@Autowired
	LessonService lessonService;

	public QuestionDTO toDTO(Question entity) {
		int questionID = entity.getQuestionID();
		String content = entity.getContent();
		int lessonID = entity.getLesson().getLessonID();
		String answers = entity.getAnswers();
		String explain = entity.getExplain();
		return new QuestionDTO(questionID, content, lessonID, answers, explain);
	}

	public Question toEntity(QuestionDTO dto) {
		int questionID = dto.getQuestionID();
		String content = dto.getContent();
		int lessonID = dto.getLessonID();
		Lesson lesson = lessonService.findEntityByLessonID(lessonID);
		String answers = dto.getAnswers();
		String explain = dto.getExplain();
		Question question = new Question();
		question.setAnswers(answers);
		question.setQuestionID(questionID);
		question.setExplain(explain);
		question.setContent(content);
		question.setLesson(lesson);
		return question;
	}

}
