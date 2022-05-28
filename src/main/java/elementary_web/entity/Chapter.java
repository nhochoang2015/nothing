package elementary_web.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "CHUONG")
public class Chapter {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MA_CHUONG")
	private int chapterID;
	@Column(name = "TEN_CHUONG")
	private String chapterName;
	@ManyToOne
	@JoinColumn(name = "MA_BAI_HOC", nullable = false)
	private Subject subject;
	@OneToMany(mappedBy = "chapter", fetch = FetchType.EAGER)
	private List<Lesson> lessonList;
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
	public Subject getSubject() {
		return subject;
	}
	public void setSubject(Subject subject) {
		this.subject = subject;
	}
	public List<Lesson> getLessonList() {
		return lessonList;
	}
	public void setLessonList(List<Lesson> lessonList) {
		this.lessonList = lessonList;
	}

}
