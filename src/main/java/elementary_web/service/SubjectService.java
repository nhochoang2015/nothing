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

	// Xóa môn học
	public void deleteSubjectBySubjectID(int subjectID) {
		subjectRepository.deleteById(subjectID);
		;
	}

	// Tim mon hoc
	public SubjectDTO findSubjectBySubjectNameOrSubjectID(int SubjectNameOrSubjectID) {
		Subject subject = subjectRepository.findSubjectBySubjectNameOrSubjectID(SubjectNameOrSubjectID);
		// Tim thay hay khong
		if (subject == null) {
			return null;
		} else {
			SubjectDTO SubjectDTO = subjectConverter.toDTO(subject);
			return SubjectDTO;
		}
	}

	// Tao mon hoc
	public void createSubjectBySubjectIDAndSubjectName(Subject subject) {
		subjectRepository.save(subject);
	}

	// Tim mon hoc theo ID
	public SubjectDTO findBySubjectID(int subjectID) {
		Subject subject = subjectRepository.findBySubjectID(subjectID);
		return subjectConverter.toDTO(subject);
	}

}
