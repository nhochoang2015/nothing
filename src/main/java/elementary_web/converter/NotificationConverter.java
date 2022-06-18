package elementary_web.converter;

import org.springframework.stereotype.Component;

import elementary_web.dto.NotificationDTO;
import elementary_web.entity.Notification;

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
