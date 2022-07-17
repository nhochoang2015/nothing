package booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import booking.entity.Collection;
import booking.entity.compositeKey.CollectionKey;

@Repository
public interface CollectionRepository extends JpaRepository<Collection, CollectionKey> {

}
