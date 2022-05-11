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
	private int subjectName;
    @OneToMany(mappedBy = "subject")
	private List<Chapter> chapterList;

}
