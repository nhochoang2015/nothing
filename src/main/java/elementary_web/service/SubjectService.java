package elementary_web.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import elementary_web.converter.SubjectConverter;
import elementary_web.dto.AccountDTO;
import elementary_web.dto.ChapterDTO;
import elementary_web.dto.SubjectDTO;
import elementary_web.entity.Account;
import elementary_web.entity.Chapter;
import elementary_web.entity.Subject;
import elementary_web.repository.SubjectRepository;

@Service
public class SubjectService {
	@Autowired
	private SubjectRepository subjectRepository;
	@Autowired
	private SubjectConverter subjectConverter;

	List<SubjectDTO> subjects = new ArrayList<SubjectDTO>();

	// Xóa môn học
//	public void deleteSubjectBySubjectID(int subjectID) {
//		for (SubjectDTO s : subjects) {
//			if (s.getSubjectID() == subjectID) {
//				subjects.remove(subjectID);
//			}
//		}
//	}

	// Tim mon hoc
//	public SubjectDTO findSubjectBySubjectNameOrSubjectID(int SubjectNameOrSubjectID) {
//		Subject subject = subjectRepository.findSubjectBySubjectNameOrSubjectID(SubjectNameOrSubjectID);
//		// Tim thay hay khong
//		if (subject == null) {
//			return null;
//		} else {
//			SubjectDTO SubjectDTO = subjectConverter.toDTO(subject);
//			return SubjectDTO;
//		}
//	}

	
	// Tao mon hoc
//	public void createSubject(int SubjectID,String SubjectName) {
//		for (SubjectDTO s : subjects) {
//			if (s.getSubjectID() == SubjectID) {
//				return;
//			}else {
//				subjects.add(s);
//			}
//		}
//	}
	// xóa môn
	public SubjectDTO deleteSubjectByID(int subjectID) {
		Subject subject = subjectRepository.deleteSubjectByID(subjectID);
		return subjectConverter.toDTO(subject);
	}
	// phục hồi môn
	public SubjectDTO restoreSubjectByID(int subjectID) {
		Subject subject = subjectRepository.restoreSubjectByID(subjectID);
		return subjectConverter.toDTO(subject);
	}
	// Tim mon hoc theo ID
	public SubjectDTO findBySubjectID(int subjectID) {
		Subject subject = subjectRepository.findBySubjectID(subjectID);
		return subjectConverter.toDTO(subject);
	}

	public List<SubjectDTO> findAllSubject() {
		List<Subject> subjectList = subjectRepository.findAll();
		List<SubjectDTO> subjecDTOtList = new ArrayList<SubjectDTO>();
		for (Subject subject : subjectList) {
			subjecDTOtList.add(subjectConverter.toDTO(subject));
		}
		return subjecDTOtList;
	}
}
