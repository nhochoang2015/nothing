package elementary_web.controller;

import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import elementary_web.Utility;
import elementary_web.dto.AccountDTO;
import elementary_web.service.AccountService;

@Controller
public class AccountController {
	@Autowired
	private AccountService accountService ;

//	@PostMapping("/handleLogin")
//	public String handleLogin(@RequestParam("username") String username, @RequestParam("password") String password,
//			HttpSession session) throws NoSuchAlgorithmException {
//		AccountDTO accountDTO = accountService.findAccountByEmailOrUserOrPhoneNumber(username);
//		if (accountDTO == null) {
//			return "redirect:./login?loginStatus=fail";
//		} else {
//			if (!accountDTO.getPassword().equals(Utility.convertToMD5(password))) {
//				return "redirect:./login?loginStatus=fail";
//			} else {
//				session.setAttribute("account", accountDTO);
//				return "redirect:./";
//			}
//		}
//
//	}

//	@RequestMapping("/logout")
//	public String logout(HttpSession session) {
//		session.invalidate();
//		return "redirect: ./";
//
//	}
	@RequestMapping("/signUp")
	public String signUp(HttpServletRequest request) {
		return "";

	}

}
