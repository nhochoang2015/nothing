package booking.converter;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import booking.dto.ChapterDTO;
import booking.dto.SubjectDTO;
import booking.entity.Chapter;
import booking.entity.Subject;

@Component
public class SubjectConverter {
	@Autowired
	ChapterConverter chapterConverter;

	public SubjectDTO toDTO(Subject entity) {
		int subjectID = entity.getSubjectID();
		String subjectName = entity.getSubjectName();
		boolean active = entity.isActive();
		List<Chapter> chapterList = entity.getChapterList();
		List<ChapterDTO> chapterDTOList = new ArrayList<ChapterDTO>();
		for (Chapter chapter : chapterList) {
			chapterDTOList.add(chapterConverter.toDTO(chapter));

		}
		return new SubjectDTO(subjectID, subjectName, active,chapterDTOList);

	}

}
