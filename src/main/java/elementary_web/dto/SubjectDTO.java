package elementary_web.dto;

import java.util.List;

public class SubjectDTO {
	private int subjectID;
	private String subjectName;
	private List<ChapterDTO> chapterList;

	public SubjectDTO(int subjectID, String subjectName, List<ChapterDTO> chapterList) {
		super();
		this.subjectID = subjectID;
		this.subjectName = subjectName;
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

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

}
