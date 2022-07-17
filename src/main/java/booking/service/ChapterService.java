package booking.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import booking.converter.ChapterConverter;
import booking.dto.ChapterDTO;
import booking.dto.LessonDTO;
import booking.dto.SubjectDTO;
import booking.entity.Chapter;
import booking.entity.Subject;
import booking.repository.ChapterRepository;
import booking.repository.SubjectRepository;

@Service
public class ChapterService {

	@Autowired
	private ChapterRepository chapterRepository;
	@Autowired
	private SubjectService subjectService;
	@Autowired
	private ChapterConverter chapterConverter;
	@Autowired
	private SubjectRepository subjectRepository;
	List<ChapterDTO> chapters = new ArrayList<ChapterDTO>();

//xóa chương
	public void deleteChapterbyID(int chapterID) {
		Chapter chapter = chapterRepository.findByChapterID(chapterID);
		chapter.setActive(false);
		chapterRepository.save(chapter);
	}

// phục hồi chương
	public void restoreChapterbyID(int chapterID) {
		Chapter chapter = chapterRepository.findByChapterID(chapterID);
		chapter.setActive(true);
		chapterRepository.save(chapter);
	}

// tạo chương
	public void createChapter(String chapterName,int subjectID) {
		Chapter chapter = new Chapter();
		Subject subject = subjectRepository.findBySubjectID(subjectID);
		chapter.setSubject(subject);
		chapter.setChapterName(chapterName);
		chapter.setActive(true);
		chapterRepository.save(chapter);
	}

// Sửa tên chương
	public void renameChapter(int chapterID, String chapterName) {
		Chapter chapter = chapterRepository.findByChapterID(chapterID);
		chapter.setChapterName(chapterName);
		chapterRepository.save(chapter);
	}

	public List<ChapterDTO> findAllChapter(int SubjectID) {
		SubjectDTO subject = subjectService.findBySubjectID(SubjectID);
		List<Chapter> chapterList = chapterRepository.findAll();
		List<ChapterDTO> chapterDTOtList = subject.getChapterList();
		for (Chapter chapter : chapterList) {
			chapterDTOtList.add(chapterConverter.toDTO(chapter));
		}
		return chapterDTOtList;
	}

	public ChapterDTO findByChapterID(int chapterID) {
		Chapter chapter = chapterRepository.findByChapterID(chapterID);
		ChapterDTO chapterDTO = chapterConverter.toDTO(chapter);
		return chapterDTO;
	}

	public Chapter findEntityByChapterID(int chapterID) {
		Chapter chapter = chapterRepository.findByChapterID(chapterID);
		return chapter;
	}
}
