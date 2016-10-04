package com.whattodo.repo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.whattodo.dto.MeetingBoard;

@Repository
public class MeetingBoardRepoImpl implements MeetingBoardRepo {

	@Autowired
	SqlSessionTemplate template;
	
	final private String NAME_SPACE="whattodo.dao.MeetingBoardMapper.";
	public int insertMeetingBoard(MeetingBoard meetingBoard) {
		String statement = NAME_SPACE+"insertMeetingBoard";
		return template.insert(statement, meetingBoard);
	}

	public int updateMeetingBoard(MeetingBoard meetingBoard) {
		String statement = NAME_SPACE+"updateMeetingBoard";
		return template.update(statement, meetingBoard);
	}

	public int deleteMeetingBoard(int meetingBoardNo) {
		String statement = NAME_SPACE+"deleteMeetingBoard";
		return template.delete(statement, meetingBoardNo);
	}
	
	public int deleteMeetingBoardByMeetingNo(int meetingNo){
		String statement = NAME_SPACE+"deleteMeetingBoardByMeetingNo";
		return template.delete(statement, meetingNo);
	}
	
	public List<MeetingBoard> selecctAllMeetingBoard(int meetingNo) {
		String statement = NAME_SPACE+"selecctAllMeetingBoard";
		return template.selectList(statement, meetingNo);
	}

}
