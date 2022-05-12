package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import elementary_web.entity.AccountMisson;
import elementary_web.entity.compositeKey.AccountMissonKey;

@Repository
public interface AccountMissonRepository extends JpaRepository<AccountMisson, AccountMissonKey> {

}
