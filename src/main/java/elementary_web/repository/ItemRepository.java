package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import elementary_web.entity.Item;

public interface ItemRepository extends JpaRepository<Item, Integer> {

}
