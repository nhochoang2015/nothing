package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import elementary_web.entity.Subject;

@Repository
public interface SubjectRepository extends JpaRepository<Subject, Integer> {

}
