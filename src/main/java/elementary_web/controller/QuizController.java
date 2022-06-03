package elementary_web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import elementary_web.dto.AccountDTO;
import elementary_web.service.AccountService;

@Controller
public class QuizController {
	@Autowired
	AccountService accountService;

	@RequestMapping("/updateProgress")
	public @ResponseBody void updateProgress(HttpSession session, @RequestParam int reward,
			@RequestParam int lessonID) {
		AccountDTO account = (AccountDTO) session.getAttribute("account");
		account.setCoin(account.getCoin() + reward);
		accountService.updateAccount(account);
	}

}
