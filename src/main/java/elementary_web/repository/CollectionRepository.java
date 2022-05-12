package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import elementary_web.entity.Collection;
import elementary_web.entity.compositeKey.CollectionKey;

public interface CollectionRepository extends JpaRepository<Collection, CollectionKey> {

}
