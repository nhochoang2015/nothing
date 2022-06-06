package elementary_web.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import elementary_web.converter.QuestionConverter;
import elementary_web.dto.QuestionDTO;
import elementary_web.entity.Question;
import elementary_web.repository.QuestionRepository;

@Service
public class TestService {
	@Autowired
	QuestionRepository questionRepository;
	@Autowired
	QuestionConverter questionConverter;

	public List<QuestionDTO> getRandomQuestion(int chapterID) {
		List<QuestionDTO> questionDTOList = new ArrayList<QuestionDTO>();
		List<Question> questionList = questionRepository.findRandomQuestionByChapterID(chapterID);
		for (Question question : questionList) {
			questionDTOList.add(questionConverter.toDTO(question));
		}
		return questionDTOList;
	}

}
