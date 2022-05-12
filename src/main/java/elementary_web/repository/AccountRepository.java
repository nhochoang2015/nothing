package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import elementary_web.entity.Account;
@Repository
public interface AccountRepository extends JpaRepository<Account, Integer> {

}
