package elementary_web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import elementary_web.dto.AccountDTO;
import elementary_web.dto.SubjectDTO;
import elementary_web.service.SubjectService;

@Controller
@RequestMapping("/admin")
public class SubjectController {
	@Autowired
	private SubjectService subjectService;

	@RequestMapping("/subjectmanagement")
	public ModelAndView subjectPage() {
		List<SubjectDTO> subjectList = subjectService.findAllSubject();
		ModelAndView mav = new ModelAndView("../admin_page/SubjectManagement");
		mav.addObject("subjectList", subjectList);
		return mav;
	}

	@RequestMapping("/unactiveSubject")
	public String unactiveSubject(@RequestParam int subjectID) {
		subjectService.deleteSubjectByID(subjectID);
		return "redirect:../admin/subjectmanagement";
	}
	@RequestMapping("/createSubject")
	public String createSubject(@RequestParam String subjectName) {
		subjectService.createSubject(subjectName);
		return "redirect:../admin/subjectmanagement";
	}
	@RequestMapping("/renameSubject")
	public String renameSubject(@RequestParam int subjectID,@RequestParam String newSubjectName) {
		subjectService.renameSubject(subjectID, newSubjectName);
		return "redirect:../admin/subjectmanagement";
	}
	
	@RequestMapping("/activeSubject")
	public String activeSubject(@RequestParam int subjectID) {
		subjectService.restoreSubjectByID(subjectID);
		return "redirect:../admin/subjectmanagement";
	}
//@PostMapping("/addSubject")
//public String addNewSubject(@RequestParam int SubjectID, @RequestParam String SubjectName,
//		 @RequestParam boolean active) {
//	SubjectDTO subjectDTO = new SubjectDTO(SubjectID, SubjectName, true, null);
//	subjectService.addNewSubject(subjectDTO);
//	
//	return "redirect: ./accountManagement";
//}

}
