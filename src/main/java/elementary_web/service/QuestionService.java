package elementary_web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import elementary_web.converter.QuestionConverter;
import elementary_web.dto.QuestionDTO;
import elementary_web.repository.QuestionRepository;

@Service
public class QuestionService {
	@Autowired
	QuestionConverter questionConverter;
	@Autowired
	QuestionRepository questionRepository;

	public QuestionDTO findByQuestionID(int questionID) {
		return questionConverter.toDTO(questionRepository.findByQuestionID(questionID));
	}
	public void save (QuestionDTO questionDTO) {
		questionRepository.save(questionConverter.toEntity(questionDTO));
		
	}
}
