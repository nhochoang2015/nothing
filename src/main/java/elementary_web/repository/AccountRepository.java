package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import elementary_web.entity.Account;

public interface AccountRepository extends JpaRepository<Account, Integer> {

}
