package elementary_web.dto;

import java.util.List;

public class LessonDTO {

	private int lessonID;

	private String lessonName;

	private int chapterID;
	private int lessonBeforeID; // Sếp trực tiếp
	private List<LessonDTO> lessonAfterList;
	public LessonDTO(int lessonID, String lessonName, int chapterID, int lessonBeforeID,
			List<LessonDTO> lessonAfterList) {
		super();
		this.lessonID = lessonID;
		this.lessonName = lessonName;
		this.chapterID = chapterID;
		this.lessonBeforeID = lessonBeforeID;
		this.lessonAfterList = lessonAfterList;
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
	public List<LessonDTO> getLessonAfterList() {
		return lessonAfterList;
	}
	public void setLessonAfterList(List<LessonDTO> lessonAfterList) {
		this.lessonAfterList = lessonAfterList;
	}

}
