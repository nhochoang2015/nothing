package elementary_web.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import elementary_web.converter.NotificationConverter;
import elementary_web.dto.NotificationDTO;
import elementary_web.entity.Notification;
import elementary_web.repository.NotificationRepository;

@Service
public class NotificationService {
	@Autowired
	private NotificationConverter notificationConverter;
	@Autowired
	private NotificationRepository notificationRepository;
	List<NotificationDTO> notes = new ArrayList<NotificationDTO>();
	// list thông báo
	public List<NotificationDTO> findAllNotification(){
		List<Notification> notesList = notificationRepository.findAll();
		List<NotificationDTO> notesDTOList = new ArrayList<NotificationDTO>();
		for(Notification note : notesList) {
			notesDTOList.add(notificationConverter.toDTO(note));
		}
		return notesDTOList;
	}
	
}
