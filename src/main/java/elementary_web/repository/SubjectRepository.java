package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import elementary_web.entity.Subject;

public interface SubjectRepository extends JpaRepository<Subject, Integer> {

}
