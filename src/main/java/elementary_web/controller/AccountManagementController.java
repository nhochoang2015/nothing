package elementary_web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import elementary_web.service.AccountService;

@Controller
public class AccountManagementController {
	@Autowired
	private AccountService AccountService;

	// Thêm tài khoản
	@RequestMapping("/addAccount")
	public ModelAndView addNewAccount(HttpServletRequest request) {
		return null;
	}

	// Sửa thông tin tài khoản
	@RequestMapping("/updateAccount")
	public ModelAndView updateAccount(HttpServletRequest request) {
		return null;
	}
}
