package elementary_web.entity;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "MON_HOC")
public class Subject {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MA_MON_HOC")
	private int subjectID;
	@Column(name = "TEN_MON_HOC")
	private String subjectName;
    @OneToMany(mappedBy = "subject")
	private List<Chapter> chapterList;
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
	public List<Chapter> getChapterList() {
		return chapterList;
	}
	public void setChapterList(List<Chapter> chapterList) {
		this.chapterList = chapterList;
	}

}
