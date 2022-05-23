package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import elementary_web.entity.Subject;

@Repository
public interface SubjectRepository extends JpaRepository<Subject, Integer> {
	@Query(value = "SELECT * FROM MON_HOC WHERE (EMAIL = ?1) OR (MA_MON_HOC = ?1) OR (TEN_MON_HOC = ?1)", nativeQuery = true)
	Subject findSubjectBySubjectNameOrSubjectCode(String SubjectNameOrSubjectCode);
	
}
