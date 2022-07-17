package booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import booking.entity.ItemCategory;

@Repository
public interface ItemCategoryRepository extends JpaRepository<ItemCategory, Integer> {

}
