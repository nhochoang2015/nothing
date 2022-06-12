package elementary_web.controller;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import elementary_web.Utility;
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
			@RequestParam(required = false) boolean active) throws NoSuchAlgorithmException {
		AccountDTO accountDTO = new AccountDTO(accountName, nickName, password, email, phoneNumber, monthlyPoint, coin,
				totalPoint, weeklyPoint, roleName, active);
		accountDTO.setPassword(Utility.convertToMD5(password));;
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
			@RequestParam(required = false) boolean active) throws NoSuchAlgorithmException {
		System.out.println(roleName);
		AccountDTO accountDTO = accountService.findDTOByAccountID(accountID);
		accountDTO.setAccountName(accountName);
		accountDTO.setEmail(email);
		accountDTO.setNickName(nickName);
		accountDTO.setPhoneNumber(phoneNumber);
		accountDTO.setRoleName(roleName);
		accountDTO.setCoin(coin);
		accountDTO.setActive(active);		
		//kiem tra mk rong
		if(!password.isEmpty()) {
			accountDTO.setPassword(Utility.convertToMD5(password));
		}		
		accountService.updateAccount(accountDTO);
		return "redirect: ../admin/accountManagement";
	}
	
	@RequestMapping("/accountNameCheck")
	public @ResponseBody String checkAccountNameExit(@RequestParam String accountName) {
		AccountDTO accountDTO = accountService.findAccountByEmailOrUserOrPhoneNumberOrNickname(accountName);
		if (accountDTO != null) {
			return "true";
		}
		return "false";
	}
	
	@RequestMapping("/emailCheck")
	public @ResponseBody String checkEmailExit(@RequestParam String email) {
		AccountDTO accountDTO = accountService.findAccountByEmailOrUserOrPhoneNumberOrNickname(email);
		if (accountDTO != null) {
			return "true";
		}
		return "false";
	}
	@RequestMapping("/phoneNumberCheck")
	public @ResponseBody String checkPhoneNumberExit(@RequestParam String phoneNumber) {
		AccountDTO accountDTO = accountService.findAccountByEmailOrUserOrPhoneNumberOrNickname(phoneNumber);
		if (accountDTO != null) {
			return "true";
		}
		return "false";
	}
	@RequestMapping("/nickNameCheck")
	public @ResponseBody String checkNickNameExit(@RequestParam String nickName) {
		AccountDTO accountDTO = accountService.findAccountByEmailOrUserOrPhoneNumberOrNickname(nickName);
		if (accountDTO != null) {
			return "true";
		}
		return "false";
	}

}
