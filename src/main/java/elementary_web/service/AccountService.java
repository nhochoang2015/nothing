package elementary_web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import elementary_web.converter.AccountConverter;
import elementary_web.dto.AccountDTO;
import elementary_web.entity.Account;
import elementary_web.repository.AccountRepository;
import elementary_web.service.serviceInterface.AccountServiceInterface;

@Service
public class AccountService implements AccountServiceInterface {

	@Autowired
	private AccountRepository accountRepository;
	@Autowired
	private AccountConverter accountConverter;

	// Thêm tài khoản
	@Override
	public void addAccount(AccountDTO accountDTO) {
		// TODO Auto-generated method stub

	}

	// Sửa tài khoản
	@Override
	public void fixAccount(AccountDTO accountDTO) {
		// TODO Auto-generated method stub

	}

	// Xóa tài khoản
	@Override
	public void banAccount(AccountDTO accountDTO) {
		// TODO Auto-generated method stub

	}

	@Override
	public AccountDTO findAccountByEmail(String email) {
		return null;
	}

	@Override
	public AccountDTO findAccountByUserName(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AccountDTO findAccountByPhoneNumber(String phoneNumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AccountDTO findAccountByEmailOrUserOrPhoneNumber(String emailOrUserOrPhoneNumber) {
		Account account = accountRepository.findByEmailOrUsernameOrPhoneNumber(emailOrUserOrPhoneNumber);
		// Tim thay hay khong
		if (account == null) {
			return null;
		} else {
			AccountDTO accountDTO = accountConverter.toDTO(account);
			return accountDTO;
		}
	}

}
