package elementary_web.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import elementary_web.converter.AccountConverter;
import elementary_web.dto.AccountDTO;
import elementary_web.entity.Account;
import elementary_web.repository.AccountRepository;

@Service
public class AccountService {

	@Autowired
	private AccountRepository accountRepository;
	@Autowired
	private AccountConverter accountConverter;

	// Dùng để thêm hoặc sửa thông tin tài khoản. Dùng cho quản lý tài khoản
	public void updateAccount(Account account) {
		accountRepository.save(account);
	}

	// Dùng cho quản lý thông tin cá nhân
	public void updateAccount(AccountDTO accountDTO) {
		accountRepository.save(accountConverter.toEntity(accountDTO));
	}

	public void addNewAccount(Account account) {
		accountRepository.save(account);
	}

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

	public AccountDTO findAccountByEmailOrUserOrPhoneNumberOrNickname(String emailOrUserOrPhoneNumberOrNickname) {
		Account account = accountRepository.findByEmailOrUsernameOrPhoneNumber(emailOrUserOrPhoneNumberOrNickname);
		// Tim thay hay khong
		if (account == null) {
			return null;
		} else {
			AccountDTO accountDTO = accountConverter.toDTO(account);
			return accountDTO;
		}
	}

	public AccountDTO findDTOByAccountID(int accountID) {
		Account account = accountRepository.findByAccountID(accountID);
		return accountConverter.toDTO(account);
	}

	public List<AccountDTO> findAllAccount() {

		List<Account> listAccount = accountRepository.findAll();
		List<AccountDTO> listAccountDTO = new ArrayList<AccountDTO>();
		for (Account a : listAccount) {
			AccountDTO accountDTO = accountConverter.toDTO(a);
			listAccountDTO.add(accountDTO);
		}
		return listAccountDTO;
	}

	public AccountDTO findDTOByAccountName(int accountID, String accountName) {
		Account account = accountRepository.findByAccountName(accountID, accountName);
		if (account == null) {
			return null;
		}
		return accountConverter.toDTO(account);
	}

	public AccountDTO findDTOByEmail(int accountID, String email) {
		Account account = accountRepository.findByEmail(accountID, email);
		if (account == null) {
			return null;
		}
		return accountConverter.toDTO(account);
	}

	public AccountDTO findDTOByPhoneNumber(int accountID, String phoneNumber) {
		Account account = accountRepository.findByPhoneNumber(accountID, phoneNumber);
		if (account == null) {
			return null;
		}
		return accountConverter.toDTO(account);
	}

	public AccountDTO findDTOByNickName(int accountID, String nickName) {

		Account account = accountRepository.findByNickName(accountID, nickName);
		if (account == null) {
			return null;
		}
		return accountConverter.toDTO(account);
	}

	public Account findByAccountID(int accountID) {
		Account account = accountRepository.findByAccountID(accountID);
		return account;
	}

}
