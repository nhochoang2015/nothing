package booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import booking.entity.AccountMisson;
import booking.entity.compositeKey.AccountMissonKey;

@Repository
public interface AccountMissonRepository extends JpaRepository<AccountMisson, AccountMissonKey> {

}
