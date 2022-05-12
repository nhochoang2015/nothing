package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import elementary_web.entity.Test;

public interface TestRepository extends JpaRepository<Test, Integer> {

}
