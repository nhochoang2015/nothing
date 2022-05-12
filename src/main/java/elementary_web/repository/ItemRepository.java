package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import elementary_web.entity.Item;

@Repository
public interface ItemRepository extends JpaRepository<Item, Integer> {

}
