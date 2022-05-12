package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import elementary_web.entity.TestContent;
import elementary_web.entity.compositeKey.TestContentKey;

public interface TestContentRepository extends JpaRepository<TestContent, TestContentKey> {

}
