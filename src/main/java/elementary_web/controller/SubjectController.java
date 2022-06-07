package elementary_web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import elementary_web.dto.SubjectDTO;
import elementary_web.service.SubjectService;
@Controller
public class SubjectController {
@Autowired
private SubjectService subjectService;

	
@RequestMapping("/subjectmanagement")
public ModelAndView subjectPage() {
	List<SubjectDTO> subjectList = subjectService.findAllSubject();
	ModelAndView mav = new ModelAndView("admin_page/SubjectManagement");
	mav.addObject("subjectList", subjectList);
	return mav;
}
@RequestMapping("/unactiveSubject")
public ModelAndView unactiveSubject(@RequestParam int SubjectID) {
	SubjectDTO subjectdto = subjectService.deleteSubjectByID(SubjectID);
	ModelAndView mav = new ModelAndView("admin_page/SubjectManagement");
	mav.addObject("subjectdto", subjectdto);
	return mav;
}
@RequestMapping("/activeSubject")
public ModelAndView activeSubject(@RequestParam int SubjectID) {
	SubjectDTO subjectdto = subjectService.restoreSubjectByID(SubjectID);
	ModelAndView mav = new ModelAndView("admin_page/SubjectManagement");
	mav.addObject("subjectdto", subjectdto);
	return mav;
}
}
