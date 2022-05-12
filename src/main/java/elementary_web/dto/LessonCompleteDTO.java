package elementary_web.dto;

public class LessonCompleteDTO {

	private int LessonID;
	private int accountID;

	public LessonCompleteDTO(int lessonID, int accountID) {
		super();
		LessonID = lessonID;
		this.accountID = accountID;
	}

	public int getLessonID() {
		return LessonID;
	}

	public void setLessonID(int lessonID) {
		LessonID = lessonID;
	}

	public int getAccountID() {
		return accountID;
	}

	public void setAccountID(int accountID) {
		this.accountID = accountID;
	}

}
