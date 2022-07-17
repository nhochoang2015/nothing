package booking.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import booking.entity.TestContent;
import booking.entity.compositeKey.TestContentKey;

@Repository
public interface TestContentRepository extends JpaRepository<TestContent, TestContentKey> {

}
