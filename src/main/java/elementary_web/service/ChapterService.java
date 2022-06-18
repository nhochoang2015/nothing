package elementary_web.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import elementary_web.converter.ChapterConverter;
import elementary_web.dto.ChapterDTO;
import elementary_web.dto.SubjectDTO;
import elementary_web.entity.Chapter;
import elementary_web.entity.Subject;
import elementary_web.entity.Chapter;
import elementary_web.repository.ChapterRepository;
import elementary_web.repository.SubjectRepository;

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
	public void createChapter(String chapterName) {
		Chapter chapter = new Chapter();
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
//
//	public List<ChapterDTO> findAllChapter(int SubjectID) {
//		SubjectDTO subject = subjectService.findBySubjectID(SubjectID);
//		List<ChapterDTO> chapterDTOList = new ArrayList<Chapter>();
//		List<ChapterDTO> chapte = subject.getChapterList();
//		for (Chapter chapter : chapterList) {
//			chapterDTOtList.add(chapterConverter.toDTO(chapter));
//		}
//		return chapterDTOtList;
//	}
	
	public ChapterDTO findByChapterID(int chapterID) {
		Chapter chapter = chapterRepository.findByChapterID(chapterID);
		ChapterDTO chapterDTO = chapterConverter.toDTO(chapter);
		return chapterDTO;
	}
}
