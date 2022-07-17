package booking.converter;

import org.springframework.stereotype.Component;

import booking.dto.NotificationDTO;
import booking.entity.Notification;

@Component
public class NotificationConverter {

	public NotificationDTO toDTO(Notification entity) {
		int notificationID = entity.getNotificationID();
		String title = entity.getTitle();
		String content = entity.getContent();
		boolean isShow = entity.isShow();
		NotificationDTO dto = new NotificationDTO(notificationID,title, content, isShow);
		return dto;

	}

}
