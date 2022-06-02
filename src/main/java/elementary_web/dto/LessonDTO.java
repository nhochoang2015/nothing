package elementary_web.dto;

import java.util.ArrayList;
import java.util.List;

public class LessonDTO {

	private int lessonID;
	private String lessonName;
	private int chapterID;
	private Integer lessonBeforeID;
	private List<QuestionDTO> questionList;
	private int score;

	public LessonDTO(int lessonID, String lessonName, int chapterID, Integer lessonBeforeID,
			List<QuestionDTO> questionList, int score) {
		super();
		this.lessonID = lessonID;
		this.lessonName = lessonName;
		this.chapterID = chapterID;
		this.lessonBeforeID = lessonBeforeID;
		this.questionList = questionList;
		this.score = score;
	}

	public int getLessonID() {
		return lessonID;
	}

	public void setLessonID(int lessonID) {
		this.lessonID = lessonID;
	}

	public String getLessonName() {
		return lessonName;
	}

	public void setLessonName(String lessonName) {
		this.lessonName = lessonName;
	}

	public int getChapterID() {
		return chapterID;
	}

	public void setChapterID(int chapterID) {
		this.chapterID = chapterID;
	}

	public int getLessonBeforeID() {
		return lessonBeforeID;
	}

	public void setLessonBeforeID(int lessonBeforeID) {
		this.lessonBeforeID = lessonBeforeID;
	}

	public boolean isComplete(List<LessonCompleteDTO> lessonCompleteList) {
		for (LessonCompleteDTO lessonCompleteDTO : lessonCompleteList) {
			if (lessonCompleteDTO.getLessonID() == this.lessonID)
				return true;
		}

		return false;
	}

	public List<QuestionDTO> getQuestionList() {
		return questionList;
	}

	public void setQuestionList(List<QuestionDTO> questionList) {
		this.questionList = questionList;
	}

	public ArrayList<String> getCorrectAnswerArray() {
		ArrayList<String> result = new ArrayList<String>();
		for (QuestionDTO questionDTO : questionList) {
			result.add(questionDTO.getAnswers().split(";")[0]);
		}
		return result;

	}

}
