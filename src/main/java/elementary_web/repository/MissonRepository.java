package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import elementary_web.entity.Misson;

public interface MissonRepository extends JpaRepository<Misson, Integer> {

}
