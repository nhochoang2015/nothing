package elementary_web.service.serviceInterface;

import java.security.NoSuchAlgorithmException;

import elementary_web.dto.AccountDTO;
import elementary_web.entity.Account;

public interface AccountServiceInterface {
	public abstract void addAccount(AccountDTO accountDTO);

	public abstract void updateAccount(Account account);

	public abstract void banAccount(AccountDTO accountDTO);

	public abstract AccountDTO findAccountByEmail(String email);

	public abstract AccountDTO findAccountByUserName(String username);

	public abstract AccountDTO findAccountByPhoneNumber(String phoneNumber);

	public abstract AccountDTO findAccountByEmailOrUserOrPhoneNumber(String emailOrUserOrPhoneNumber) throws NoSuchAlgorithmException;

}
