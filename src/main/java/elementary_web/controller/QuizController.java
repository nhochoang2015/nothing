package elementary_web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import elementary_web.dto.AccountDTO;
import elementary_web.entity.LessonComplete;
import elementary_web.service.AccountService;
import elementary_web.service.LessonCompleteService;

@Controller
public class QuizController {
	@Autowired
	AccountService accountService;
	@Autowired
	LessonCompleteService lessonCompleteService;

	@PostMapping("/updateLessonProcress")
	public @ResponseBody void updateProgress(HttpSession session, @RequestParam int reward,
			@RequestParam int lessonID) {
		AccountDTO account = (AccountDTO) session.getAttribute("account");
		lessonCompleteService.updateProcess(account.getAccountID(), lessonID);
		account.setCoin(account.getCoin() + reward);
		accountService.updateAccount(account);
	}

}
