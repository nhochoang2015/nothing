package elementary_web.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import elementary_web.entity.LessonComplete;
import elementary_web.entity.compositeKey.LessonCompleteKey;

@Repository
public interface LessonCompleteRepository extends JpaRepository<LessonComplete, LessonCompleteKey> {
	List<LessonComplete> findByAccount_AccountID(int accountID);
}
