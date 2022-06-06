package elementary_web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import elementary_web.dto.SubjectDTO;
import elementary_web.service.SubjectService;
@Controller
public class SubjectController {
@Autowired
private SubjectService subjectService;

	
@RequestMapping("/index-2")
public ModelAndView subjectPage() {
	List<SubjectDTO> subjectList = subjectService.findAllSubject();
	ModelAndView mav = new ModelAndView("admin_page/index-2");
	mav.addObject("subjectList", subjectList);
	return mav;
}
	
}
