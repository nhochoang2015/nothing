package booking.controller;

import java.io.UnsupportedEncodingException;
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

import booking.dto.AccountDTO;
import booking.dto.ChapterDTO;
import booking.dto.LessonCompleteDTO;
import booking.dto.LessonDTO;
import booking.dto.NotificationDTO;
import booking.dto.QuestionDTO;
import booking.dto.SubjectDTO;
import booking.service.ChapterService;
import booking.service.LessonCompleteService;
import booking.service.LessonService;
import booking.service.NotificationService;
import booking.service.RankingService;
import booking.service.SubjectService;
import booking.service.TestService;

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
	@Autowired
	private TestService testService;
	@Autowired
	private ChapterService chapterService;
	@Autowired
	private NotificationService notificationService;

	@RequestMapping("/")
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("user_page/home");
		List<SubjectDTO> subjectList = subjectService.findAllSubject();
		List<NotificationDTO> notesDTOList = notificationService.findAllNotification();
		mav.addObject("subjectList", subjectList);
		mav.addObject("notesDTOList", notesDTOList);
		return mav;
	}
	@GetMapping("/search")
	public String searchPage(Model model) {
		return "./user_page/index";
	}
	@RequestMapping("/notificationPage")
	public ModelAndView notifiactionPage(@RequestParam int notificationID) {
		ModelAndView mav = new ModelAndView("./user_page/NotificationPage");
		NotificationDTO note = notificationService.findNotificationByID(notificationID);
		mav.addObject("note", note);
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
	public ModelAndView quizPage(@RequestParam int lessonID, @RequestParam int subjectID, HttpSession session) {
		ModelAndView mav = new ModelAndView("user_page/quiz");
		AccountDTO account = (AccountDTO) session.getAttribute("account");
		int accountID = account.getAccountID();
		LessonDTO lesson = lessonService.findByLessonID(lessonID);
		if (lessonCompleteService.checkIfLessonBeforeComplete(accountID, lessonID)) {
			session.setAttribute("lesson" + lesson.getLessonID(), lesson);
			mav.addObject("lessonID", lesson.getLessonID());
			mav.addObject("subjectID", subjectID);
		} else {
			mav = new ModelAndView("redirect:./subject-details?subjectID=" + subjectID);
			mav.addObject("lessonID", lesson.getLessonBeforeID());
		}

		return mav;
	}

	@RequestMapping("/test")
	public ModelAndView testPage(@RequestParam int chapterID, HttpSession session) {
		ModelAndView mav = new ModelAndView("user_page/test");
		AccountDTO account = (AccountDTO) session.getAttribute("account");
		ChapterDTO chapter = chapterService.findByChapterID(chapterID);
		boolean isChapterComplete = chapter
				.isChapterComplete(lessonCompleteService.findByAccountID(account.getAccountID()));
		// Kiểm tra xem tất cả bài học trong chương hoàn thành chưa
		int subjectID = chapter.getSubjectID();
		if (isChapterComplete) {
			List<QuestionDTO> questionList = testService.getRandomQuestion(chapterID);
			mav.addObject("questionList", questionList);
			mav.addObject("chapterID", chapter.getChapterID());
			mav.addObject("subjectID", subjectID);
		} else {
			// Nếu chưa hoàn thành thì chuyển về trang chi tiết môn học
			mav = new ModelAndView("redirect:./subject-details?subjectID=" + subjectID);
		}
		return mav;
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
	public ModelAndView subjectDetailsPage(@RequestParam int subjectID, HttpSession session, HttpServletRequest request)
			throws UnsupportedEncodingException {
		String lessonIDString = (String) request.getParameter("lessonID");
		System.out.println("LessonString: " + lessonIDString);
		SubjectDTO subjectDTO = subjectService.findBySubjectID(subjectID);
		AccountDTO account = (AccountDTO) session.getAttribute("account");
		ModelAndView mav = new ModelAndView("user_page/subject-details");
		mav.addObject("subject", subjectDTO);
		if (account != null) {
			int accountID = account.getAccountID();
			List<LessonCompleteDTO> lessonCompleteDTOList = lessonCompleteService.findByAccountID(accountID);
			mav.addObject("lessonCompleteList", lessonCompleteDTOList);
			if (lessonIDString != null) {
				System.out.println("CODE IS HERE");
				int lessonID = Integer.parseInt(lessonIDString);
				LessonDTO lessonBefore = lessonService.findByLessonID(lessonID);
				mav.addObject("notify",
						"Bạn chưa thể tham gia bài học này vì " + lessonBefore.getLessonName() + " chưa hoàn thành.");
			}
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

	@RequestMapping("/accessDenied")
	public String accessDeniedPage(Model model) {
		return "./user_page/accessDenied";
	}
}
