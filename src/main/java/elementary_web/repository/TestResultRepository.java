package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import elementary_web.entity.TestResult;
import elementary_web.entity.compositeKey.TestResultKey;

@Repository
public interface TestResultRepository extends JpaRepository<TestResult, TestResultKey> {

}
