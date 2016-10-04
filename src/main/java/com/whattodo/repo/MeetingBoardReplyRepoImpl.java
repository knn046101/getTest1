package com.whattodo.repo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.whattodo.dto.MeetingBoardReply;

@Repository
public class MeetingBoardReplyRepoImpl implements MeetingBoardReplyRepo{

	@Autowired
	SqlSessionTemplate template;
	
	final private String NAME_SPACE="whattodo.dao.MeetingBoardReplyMapper.";
	public int insertMeetingBoardReply(MeetingBoardReply meetingBoardReply) {
		String statement = NAME_SPACE+"insertMeetingBoardReply";
		return template.insert(statement, meetingBoardReply);
	}

	public int updateMeetingBoardReply(MeetingBoardReply meetingBoardReply) {
		String statement = NAME_SPACE+"updateMeetingBoardReply";
		return template.update(statement, meetingBoardReply);
	}

	public int deleteMeetingBoardReply(int meetingBoardReplyNo) {
		String statement = NAME_SPACE+"deleteMeetingBoardReply";
		return template.delete(statement, meetingBoardReplyNo);
	}

	public List <MeetingBoardReply> selectAllMeetingBoardReply(int meetingBoardNo) {
		String statement = NAME_SPACE+"selectAllMeetingBoardReply";
		return template.selectList(statement, meetingBoardNo);
	}

}
