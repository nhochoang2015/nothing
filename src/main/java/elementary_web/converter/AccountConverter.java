package elementary_web.converter;

import elementary_web.dto.AccountDTO;
import elementary_web.entity.Account;

public class AccountConverter {
	public static AccountDTO toDTO(Account entity) {
		int accountID = entity.getAccountID();
		String accountName = entity.getAccountName();
		String nickName = entity.getNickName();
		String password = entity.getPassword();
		String email = entity.getEmail();
		String phoneNumber = entity.getPhoneNumber();
		int coin = entity.getCoin();
		int totalPoint = entity.getTotalPoint();
		int weeklyPoint = entity.getWeeklyPoint();
		int monthlyPoint = entity.getMonthlyPoint();
		int roleID = entity.getRole().getRoleID();
		AccountDTO dto = new AccountDTO(accountID, accountName, nickName, password, email, phoneNumber, coin,
				totalPoint, weeklyPoint, monthlyPoint, roleID);
		return dto;
	}

}
