package elementary_web.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import elementary_web.dto.LessonDTO;
import elementary_web.dto.QuestionDTO;
import elementary_web.service.QuestionService;

@Controller
public class TestController {
	@Autowired
	QuestionService questionService;

	@PostMapping("/checkTestAnswer")
	public @ResponseBody String checkAnswer(HttpSession session, @RequestParam int questionID,
			@RequestParam int userAnswer) {
		QuestionDTO question = questionService.findByQuestionID(questionID);
		String answer = question.getAnswers();
		String[] answersArray = answer.split(";");
		int correctAnswer = Integer.parseInt(answersArray[0]);
		if (correctAnswer == userAnswer)
			return "true";
		return "false";

	}

}
