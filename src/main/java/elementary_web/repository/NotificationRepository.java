package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import elementary_web.entity.Notification;

@Repository
public interface NotificationRepository extends JpaRepository<Notification, Integer> {
	Notification findByNotificationID(int notificationID);
	
	Notification deleteByNotificationID(int notificationID);
}
