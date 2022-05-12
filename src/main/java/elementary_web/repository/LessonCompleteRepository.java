package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import elementary_web.entity.LessonComplete;
import elementary_web.entity.compositeKey.LessonCompleteKey;

@Repository
public interface LessonCompleteRepository extends JpaRepository<LessonComplete, LessonCompleteKey> {

}
