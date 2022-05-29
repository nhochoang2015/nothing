package elementary_web.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import elementary_web.dto.AccountDTO;
import elementary_web.entity.Account;
import elementary_web.entity.Role;
import elementary_web.service.RoleService;

@Component
public class AccountConverter {
	@Autowired
	private RoleService roleService;

	public AccountDTO toDTO(Account entity) {
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
		String roleName = entity.getRole().getRoleName();
		boolean active = entity.isActive();
		AccountDTO dto = new AccountDTO(accountID, accountName, nickName, password, email, phoneNumber, coin,
				totalPoint, weeklyPoint, monthlyPoint, roleName, active);
		return dto;
	}

	public Account toEntity(AccountDTO dto) {
		int accountID = dto.getAccountID();
		String accountName = dto.getAccountName();
		String nickName = dto.getNickName();
		String password = dto.getPassword();
		String email = dto.getEmail();
		String phoneNumber = dto.getPhoneNumber();
		int coin = dto.getCoin();
		int totalPoint = dto.getTotalPoint();
		int weeklyPoint = dto.getWeeklyPoint();
		int monthlyPoint = dto.getMonthlyPoint();
		String roleName = dto.getRoleName();
		Role role = roleService.findByRoleName(roleName);
		boolean active = dto.isActive();
		return new Account(accountID, accountName, nickName, password, email, phoneNumber, coin, totalPoint, weeklyPoint, monthlyPoint, active, role);
	}

}
