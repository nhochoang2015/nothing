package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import elementary_web.entity.Notification;
import elementary_web.entity.Subject;

@Repository
public interface NotificationRepository extends JpaRepository<Notification, Integer> {
	Subject findByNotificationID(int notificationID);
}
