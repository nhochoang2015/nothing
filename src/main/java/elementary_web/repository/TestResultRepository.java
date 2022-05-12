package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import elementary_web.entity.TestResult;
import elementary_web.entity.compositeKey.TestResultKey;

public interface TestResultRepository extends JpaRepository<TestResult, TestResultKey> {

}
