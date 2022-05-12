package elementary_web.dto;



public class SubjectDTO {
	private int subjectID;
	private int subjectName;

	public SubjectDTO(int subjectID, int subjectName) {
		super();
		this.subjectID = subjectID;
		this.subjectName = subjectName;
	}

	public int getSubjectID() {
		return subjectID;
	}

	public void setSubjectID(int subjectID) {
		this.subjectID = subjectID;
	}

	public int getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(int subjectName) {
		this.subjectName = subjectName;
	}

}
