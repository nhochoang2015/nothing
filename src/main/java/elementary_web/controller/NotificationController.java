package elementary_web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import elementary_web.dto.NotificationDTO;
import elementary_web.service.NotificationService;
@RequestMapping("/admin")
@Controller
public class NotificationController {
	@Autowired
	private NotificationService notificationService;
	
	@RequestMapping("/notification")
	public ModelAndView subjectPage() {
		List<NotificationDTO> notesDTOList = notificationService.findAllNotification();
		ModelAndView mav = new ModelAndView("../admin_page/Notification-list");
		mav.addObject("notesDTOList", notesDTOList);
		return mav;
	}
}
