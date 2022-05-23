package elementary_web.dto;



public class SubjectDTO {
	private int subjectID;
	private String subjectName;

	public SubjectDTO(int subjectID, String subjectName) {
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

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

}
