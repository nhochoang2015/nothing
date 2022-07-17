package booking.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import booking.converter.QuestionConverter;
import booking.dto.QuestionDTO;
import booking.entity.Question;
import booking.repository.QuestionRepository;

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
