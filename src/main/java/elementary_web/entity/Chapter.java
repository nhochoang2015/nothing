package elementary_web.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
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
	@OneToMany(mappedBy = "chapter")
	private List<Lesson> lessonList;

}
