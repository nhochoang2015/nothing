package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import elementary_web.entity.LessonComplete;
import elementary_web.entity.compositeKey.LessonCompleteKey;

public interface LessonCompleteRepository extends JpaRepository<LessonComplete, LessonCompleteKey> {

}
