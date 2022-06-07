package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import elementary_web.entity.Subject;

@Repository
public interface SubjectRepository extends JpaRepository<Subject, Integer> {
	@Query(value = "SELECT * FROM MON_HOC WHERE (MA_MON_HOC = ?1) OR (TEN_MON_HOC = ?1)", nativeQuery = true)
	Subject findSubjectBySubjectNameOrSubjectID(int SubjectNameOrSubjectID);

	@Query(value = "INSERT MON_HOC(MA_MON_HOC,TEN_MON_HOC) INTO (?1,?2)", nativeQuery = true)
	Subject createSubjectBySubjectIDAndSubjectName(int subjectID, String subjectName);

	Subject findBySubjectID(int subjectID);
	
	@Query(value = "UPDATE MON_HOC SET HOAT_DONG = 0 WHERE (MA_MON_HOC = ?1)",nativeQuery = true)
	void deleteSubjectByID(int SubjectID);
	// Dùng save đi dừng dùng câu lệnh update kiểu này
	@Query(value = "UPDATE MON_HOC SET HOAT_DONG = 1 WHERE (MA_MON_HOC = ?1)",nativeQuery = true)
	Subject restoreSubjectByID(int SubjectID);
}
