package elementary_web.converter;

import org.springframework.stereotype.Component;

import elementary_web.dto.QuestionDTO;
import elementary_web.entity.Question;

@Component
public class QuestionConverter {
	public QuestionDTO toDTO(Question entity) {
		int questionID = entity.getQuestionID();

		String content = entity.getContent();

		int lessonID = entity.getLesson().getLessonID();

		String answers = entity.getAnswers();
		String explain = entity.getExplain();
		return new QuestionDTO(questionID, content, lessonID, answers, explain);
	}

}
