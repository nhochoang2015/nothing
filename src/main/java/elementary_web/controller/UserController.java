package elementary_web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import elementary_web.service.SubjectService;

@Controller
public class UserController {
	@Autowired
	private SubjectService subjectService;
	@GetMapping("/")
	public String homePage(Model model) {
		return "./user_page/index";
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

	@GetMapping("/quiz")
	public String quizPage(Model model) {
		return "./user_page/quiz";
	}

	@GetMapping("/test")
	public String testPage(Model model) {
		return "./user_page/test";
	}

	@GetMapping("/monthly-ranking")
	public String monthlyRankingPage(Model model) {
		return "./user_page/monthly-ranking";
	}

	@GetMapping("/weekly-ranking")
	public String weeklyRankingPage(Model model) {
		return "./user_page/weekly-ranking";
	}

	@GetMapping("/subject-details")
	public String subjectDetailsPage(@RequestParam int subjectID) {
		
		return "./user_page/subject-details";
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
