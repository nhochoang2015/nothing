package elementary_web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import elementary_web.dto.AccountDTO;
import elementary_web.dto.LessonCompleteDTO;
import elementary_web.dto.LessonDTO;
import elementary_web.dto.SubjectDTO;
import elementary_web.service.LessonCompleteService;
import elementary_web.service.LessonService;
import elementary_web.service.LessonService;
import elementary_web.service.RankingService;
import elementary_web.service.SubjectService;

@Controller
public class UserController {
	@Autowired
	private SubjectService subjectService;
	@Autowired
	private LessonCompleteService lessonCompleteService;
	@Autowired
	private RankingService rankingService;
	@Autowired
	private LessonService lessonService;
	@RequestMapping("/")
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("user_page/index");
		List<SubjectDTO> subjectList = subjectService.findAllSubject();
		mav.addObject("subjectList", subjectList);
		return mav;
	}

	@GetMapping("/about")
	public String aboutPage(Model model) {
		return "./user_page/about";
	}

	@GetMapping("/blog")
	public String blogPage(Model model) {
		return "./user_page/blog";
	}

	@GetMapping("/class")
	public String classPage(Model model) {
		return "./user_page/class";
	}

	@GetMapping("/contact")
	public String contactPage(Model model) {
		return "./user_page/contact";
	}

	@GetMapping("/gallery")
	public String galleryPage(Model model) {
		return "./user_page/gallery";
	}

	@GetMapping("/single")
	public String singlePage(Model model) {
		return "./user_page/single";
	}

	@GetMapping("/team")
	public String homepage(Model model) {
		return "./user_page/team";
	}

	@RequestMapping("/quiz")
	public ModelAndView quizPage(@RequestParam int lessonID) {
		ModelAndView mav = new ModelAndView( "user_page/quiz");
		LessonDTO lesson = lessonService.findByLessonID(lessonID);
		mav.addObject("lesson", lesson);
		return mav;
	}

	@GetMapping("/test")
	public String testPage(Model model) {
		return "./user_page/test";
	}

	@GetMapping("/monthly-ranking")
	public ModelAndView monthlyRankingPage() {
		List<AccountDTO> rankingList = rankingService.getMonthlyRankingList();
		ModelAndView mav = new ModelAndView("user_page/monthly-ranking");
		mav.addObject("rankingList", rankingList);
		return mav;
	}

	@GetMapping("/weekly-ranking")
	public String weeklyRankingPage(Model model) {
		return "./user_page/weekly-ranking";
	}

	@GetMapping("/subject-details")
	public ModelAndView subjectDetailsPage(@RequestParam int subjectID, HttpSession session) {
		SubjectDTO subjectDTO = subjectService.findBySubjectID(subjectID);
		AccountDTO account = (AccountDTO) session.getAttribute("account");
		ModelAndView mav = new ModelAndView("user_page/subject-details");
		mav.addObject("subject", subjectDTO);
		if (account != null) {
			int accountID = account.getAccountID();
			List<LessonCompleteDTO> lessonCompleteDTOList = lessonCompleteService.findByAccountID(accountID);
			mav.addObject("lessonCompleteList", lessonCompleteDTOList);
		}
		return mav;
	}

	@GetMapping("/mission")
	public String mission(Model model) {
		return "./user_page/mission";
	}

	@GetMapping("/personal")
	public String personalInformationManagement(Model model) {
		return "./user_page/personal-information-management";
	}

	@GetMapping("/change-pass")
	public String changePass(Model model) {
		return "./user_page/change-password";
	}

	@RequestMapping("/login")
	public ModelAndView loginPage(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("user_page/login");
		String status = request.getParameter("loginStatus");
		if (status != null && status.equals("fail")) {
			mav.addObject("loginStatus", "fail");
			return mav;
		}
		return mav;
	}

	@RequestMapping("/signup")
	public String signupPage(Model model) {
		return "./user_page/signup";
	}

}
