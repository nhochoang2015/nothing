package elementary_web.dto;

public class QuestionDTO {

	private int questionID;

	private String content;

	private int lessonID;

	private String answers;

	public QuestionDTO(int questionID, String content, int lessonID, String answers) {
		super();
		this.questionID = questionID;
		this.content = content;
		this.lessonID = lessonID;
		this.answers = answers;
	}

	public int getQuestionID() {
		return questionID;
	}

	public void setQuestionID(int questionID) {
		this.questionID = questionID;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getLessonID() {
		return lessonID;
	}

	public void setLessonID(int lessonID) {
		this.lessonID = lessonID;
	}

	public String getAnswers() {
		return answers;
	}

	public void setAnswers(String answers) {
		this.answers = answers;
	}

}
