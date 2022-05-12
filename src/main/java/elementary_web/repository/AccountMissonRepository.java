package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import elementary_web.entity.AccountMisson;
import elementary_web.entity.compositeKey.AccountMissonKey;

public interface AccountMissonRepository extends JpaRepository<AccountMisson, AccountMissonKey> {

}
