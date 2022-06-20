package elementary_web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import elementary_web.dto.LessonDTO;
import elementary_web.service.LessonService;

@Controller
@RequestMapping("/admin")
public class QuestionManagementController {

	@Autowired
	LessonService lessonService;

	// Trang quản lý câu hỏi
	@RequestMapping("/questionManagement")
	public ModelAndView questionManagementPage(@RequestParam int lessonID) {
		ModelAndView mav = new ModelAndView("../admin_page/question-management");
		LessonDTO lesson = lessonService.findByLessonID(lessonID);
		mav.addObject("lesson", lesson);
		return mav;

	}

}
