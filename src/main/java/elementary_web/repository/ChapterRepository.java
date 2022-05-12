package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import elementary_web.entity.Chapter;

public interface ChapterRepository extends JpaRepository<Chapter, Integer> {

}
