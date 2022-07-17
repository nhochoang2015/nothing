package booking.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import booking.converter.QuestionConverter;
import booking.dto.QuestionDTO;
import booking.repository.QuestionRepository;

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
