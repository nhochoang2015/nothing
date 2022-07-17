package booking.entity;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "MON_HOC")
public class Subject {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MA_MON_HOC")
	private int subjectID;
	@Column(name = "TEN_MON_HOC", columnDefinition = "nvarchar(max)")
	private String subjectName;
	@Column(name = "HOAT_DONG")
	private boolean active;
	@OneToMany(mappedBy = "subject", fetch = FetchType.EAGER)
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
	
	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public List<Chapter> getChapterList() {
		return chapterList;
	}

	public void setChapterList(List<Chapter> chapterList) {
		this.chapterList = chapterList;
	}

}
