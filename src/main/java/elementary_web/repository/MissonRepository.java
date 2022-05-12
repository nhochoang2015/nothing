package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import elementary_web.entity.Misson;

@Repository
public interface MissonRepository extends JpaRepository<Misson, Integer> {

}
