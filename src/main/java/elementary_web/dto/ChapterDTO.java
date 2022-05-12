package elementary_web.dto;

public class ChapterDTO {

	private int chapterID;
	private String chapterName;

	private int subjectID;

	public ChapterDTO(int chapterID, String chapterName, int subjectID) {
		super();
		this.chapterID = chapterID;
		this.chapterName = chapterName;
		this.subjectID = subjectID;
	}

	public int getChapterID() {
		return chapterID;
	}

	public void setChapterID(int chapterID) {
		this.chapterID = chapterID;
	}

	public String getChapterName() {
		return chapterName;
	}

	public void setChapterName(String chapterName) {
		this.chapterName = chapterName;
	}

	public int getSubjectID() {
		return subjectID;
	}

	public void setSubjectID(int subjectID) {
		this.subjectID = subjectID;
	}

}
