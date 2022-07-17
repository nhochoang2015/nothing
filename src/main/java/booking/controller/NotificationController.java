package booking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import booking.dto.NotificationDTO;
import booking.service.NotificationService;
@RequestMapping("/admin")
@Controller
public class NotificationController {
	@Autowired
	private NotificationService notificationService;
	
	@RequestMapping("/notification")
	public ModelAndView subjectPage() {
		List<NotificationDTO> notesDTOList = notificationService.findAllNotification();
		ModelAndView mav = new ModelAndView("../admin_page/Notification-list");
		System.out.println(notesDTOList.size());
		mav.addObject("notesDTOList", notesDTOList);
		return mav;
	}
	@RequestMapping("/createNotification")
	public String createNotification(@RequestParam String title,@RequestParam String content) {
		notificationService.createNotification(title, content);
		return "redirect:../admin/notification";
	}
	@RequestMapping("/updateNotification")
	public String updateNotification(@RequestParam int notificationID,@RequestParam String title,@RequestParam String content) {
		notificationService.updateNotification(notificationID, title, content);
		return "redirect:../admin/notification";
	}
	@RequestMapping("/deleteNotification")
	public String deleteNotification(@RequestParam int notificationID) {
		notificationService.deleteNotification(notificationID);
		return "redirect:../admin/notification";
	}
}
