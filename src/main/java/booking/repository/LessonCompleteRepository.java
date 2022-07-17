package booking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import booking.entity.LessonComplete;
import booking.entity.compositeKey.LessonCompleteKey;

@Repository
public interface LessonCompleteRepository extends JpaRepository<LessonComplete, LessonCompleteKey> {
	List<LessonComplete> findByAccount_AccountID(int accountID);
	Boolean existsByAccount_AccountIDAndLesson_LessonID(int accountID, int lessonID);

}
