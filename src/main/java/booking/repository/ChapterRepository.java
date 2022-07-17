package booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import booking.entity.Chapter;
import booking.entity.Subject;

@Repository
public interface ChapterRepository extends JpaRepository<Chapter, Integer> {
	Chapter findByChapterID(int chapterID);
}
