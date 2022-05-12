package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import elementary_web.entity.TestContent;
import elementary_web.entity.compositeKey.TestContentKey;

@Repository
public interface TestContentRepository extends JpaRepository<TestContent, TestContentKey> {

}
