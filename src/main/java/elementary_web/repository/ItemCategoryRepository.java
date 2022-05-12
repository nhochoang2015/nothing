package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import elementary_web.entity.ItemCategory;

public interface ItemCategoryRepository extends JpaRepository<ItemCategory, Integer> {

}
