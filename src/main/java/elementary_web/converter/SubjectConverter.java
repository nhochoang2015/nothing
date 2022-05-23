package elementary_web.converter;

import org.springframework.stereotype.Component;

import elementary_web.dto.SubjectDTO;
import elementary_web.entity.Subject;

@Component
public class SubjectConverter {
	
	public SubjectDTO toDTO(Subject entity) {
	int subjectID = entity.getSubjectID();
	String subjectName = entity.getSubjectName();
	SubjectDTO dto = new SubjectDTO(subjectID, subjectName);
	return dto;
	
	}

}
