package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import elementary_web.entity.Chapter;

@Repository
public interface ChapterRepository extends JpaRepository<Chapter, Integer> {

}
