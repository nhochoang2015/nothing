package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import elementary_web.entity.Lesson;

@Repository
public interface LessonRepository extends JpaRepository<Lesson, Integer> {

}
