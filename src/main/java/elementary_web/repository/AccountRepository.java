package elementary_web.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import elementary_web.entity.Account;

@Repository
public interface AccountRepository extends JpaRepository<Account, Integer> {
	@Query(value = "SELECT * FROM TAI_KHOAN WHERE (EMAIL = ?1) OR (TEN_TAI_KHOAN = ?1) OR (SDT = ?1)", nativeQuery = true)
	Account findByEmailOrUsernameOrPhoneNumber(String emailOrUserOrPhoneNumber);
	
	List<Account> findByOrderByMonthlyPointDesc();

}
