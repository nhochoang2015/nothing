package elementary_web.entity;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "BAI_HOC")
public class Lesson {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MA_BAI_HOC")
	private int lessonID;
	@Column(name = "TEN_BAI_HOC")
	private String lessonName;
	@ManyToOne
	@JoinColumn(name = "MA_CHUONG", nullable = false)
	private Chapter chapter;

	@ManyToOne(fetch = FetchType.LAZY)

	private Lesson lessonBefore; // Sếp trực tiếp
	@ManyToMany(mappedBy = "lessonBefore")

	private List<Lesson> lessonAfter;
	@OneToMany(mappedBy = "lesson")
	private List<Question> questionList;
	@OneToMany(mappedBy = "lesson")
	private List<LessonComplete> lessonCompleteList;
}
