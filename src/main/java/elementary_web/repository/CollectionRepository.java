package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import elementary_web.entity.Collection;
import elementary_web.entity.compositeKey.CollectionKey;

@Repository
public interface CollectionRepository extends JpaRepository<Collection, CollectionKey> {

}
