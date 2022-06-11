package elementary_web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import elementary_web.dto.AccountDTO;
import elementary_web.dto.RoleDTO;
import elementary_web.entity.Account;
import elementary_web.entity.Role;
import elementary_web.service.AccountService;
import elementary_web.service.RoleService;

@Controller
@RequestMapping("/admin")
public class AccountManagementController {
	@Autowired
	private AccountService accountService;
	@Autowired
	private RoleService roleService;

	// show account
	@RequestMapping("/accountManagement")
	public ModelAndView accountManagePage() {
		List<AccountDTO> accountlistdto = accountService.findAllAccount();
		List<RoleDTO> listRoledto = roleService.findAllRole();
		ModelAndView mav = new ModelAndView("../admin_page/account-management");
		mav.addObject("accountlistdto", accountlistdto);
		mav.addObject("listRoledto", listRoledto);
		return mav;
	}

	// Thêm tài khoản
	@PostMapping("/addAccount")
	public String addNewAccount(@RequestParam String accountName, @RequestParam String nickName,
			@RequestParam String password, @RequestParam String email, @RequestParam String phoneNumber,
			@RequestParam String roleName, @RequestParam int coin, @RequestParam int totalPoint,
			@RequestParam int weeklyPoint, @RequestParam int monthlyPoint,
			@RequestParam(required = false) boolean active) {
		AccountDTO accountDTO = new AccountDTO(accountName, nickName, password, email, phoneNumber, monthlyPoint, coin,
				totalPoint, weeklyPoint, roleName, active);

		accountService.updateAccount(accountDTO);
		System.out.println(roleName);
		return "redirect: ../admin/accountManagement";
	}

	// sua tài khoản

	@RequestMapping("/editAccount")
	public ModelAndView editAccountPage(@RequestParam int accountID) {
		AccountDTO accountDTO = accountService.findDTOByAccountID(accountID);
		List<RoleDTO> listRoledto = roleService.findAllRole();
		ModelAndView mav = new ModelAndView("../admin_page/editAccount");
		mav.addObject("listRoledto", listRoledto);
		mav.addObject("accountDTO", accountDTO);
		return mav;
	}

	@PostMapping("/edit")
	public String editAccount(@RequestParam int accountID, @RequestParam String accountName,
			@RequestParam String nickName, @RequestParam String password, @RequestParam String email,
			@RequestParam String phoneNumber, @RequestParam String roleName, @RequestParam int coin,
			@RequestParam int totalPoint, @RequestParam int weeklyPoint, @RequestParam int monthlyPoint,
			@RequestParam(required = false) boolean active) {
		System.out.println(roleName);
		AccountDTO accountDTO = new AccountDTO(accountID, accountName, nickName, password, email, phoneNumber,
				monthlyPoint, coin, totalPoint, weeklyPoint, roleName, active);
		accountService.updateAccount(accountDTO);
		return "redirect: ../admin/accountManagement";
	}

}
