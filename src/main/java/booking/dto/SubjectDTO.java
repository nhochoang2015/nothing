package booking.dto;

import java.util.List;

public class SubjectDTO {
	private int subjectID;
	private String subjectName;
	private boolean active;
	private List<ChapterDTO> chapterList;

	public SubjectDTO(int subjectID, String subjectName,boolean active, List<ChapterDTO> chapterList) {
		super();
		this.subjectID = subjectID;
		this.subjectName = subjectName;
		this.active = active;
		this.chapterList = chapterList;
	}

	public int getSubjectID() {
		return subjectID;
	}

	public void setSubjectID(int subjectID) {
		this.subjectID = subjectID;
	}

	public String getSubjectName() {
		return subjectName;
	}
	
	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public List<ChapterDTO> getChapterList() {
		return chapterList;
	}

	public void setChapterList(List<ChapterDTO> chapterList) {
		this.chapterList = chapterList;
	}

}
