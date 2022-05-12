package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import elementary_web.entity.Question;

public interface QuestionRepository extends JpaRepository<Question, Integer> {

}
