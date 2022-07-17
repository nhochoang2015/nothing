package booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import booking.entity.TestResult;
import booking.entity.compositeKey.TestResultKey;

@Repository
public interface TestResultRepository extends JpaRepository<TestResult, TestResultKey> {

}
