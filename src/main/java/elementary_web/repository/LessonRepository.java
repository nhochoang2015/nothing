package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import elementary_web.entity.Lesson;

public interface LessonRepository extends JpaRepository<Lesson, Integer> {

}
