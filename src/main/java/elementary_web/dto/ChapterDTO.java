package elementary_web.dto;

import java.util.List;

public class ChapterDTO {

	private int chapterID;
	private String chapterName;

	private int subjectID;
	private List<LessonDTO> lessonList;

	public ChapterDTO(int chapterID, String chapterName, int subjectID, List<LessonDTO> lessonList) {
		super();
		this.chapterID = chapterID;
		this.chapterName = chapterName;
		this.subjectID = subjectID;
		this.lessonList = lessonList;
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

	public List<LessonDTO> getLessonList() {
		return lessonList;
	}

	public void setLessonList(List<LessonDTO> lessonList) {
		this.lessonList = lessonList;
	}

}
