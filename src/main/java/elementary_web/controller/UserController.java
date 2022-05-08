package elementary_web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
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
	public String subjectDetailsPage(Model model) {
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
	
}
