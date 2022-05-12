package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import elementary_web.entity.Question;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Integer> {

}
