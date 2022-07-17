package booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import booking.entity.Misson;

@Repository
public interface MissonRepository extends JpaRepository<Misson, Integer> {

}
