package elementary_web.entity;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "CAU_HOI")
public class Question {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MA_CAU_HOI")
	private int questionID;
	@Column(name = "NOI_DUNG")
	private String content;
	@ManyToOne
	@JoinColumn(name = "MA_BAI_HOC", nullable = false)
	private Lesson lesson;
	@Column(name = "DAP_AN")
	private String answers;
    @OneToMany(mappedBy = "question")
	private List<TestContent> testContent;

}
