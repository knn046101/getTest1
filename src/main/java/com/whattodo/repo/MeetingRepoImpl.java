package com.whattodo.repo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.whattodo.dto.Meeting;

public class MeetingRepoImpl implements MeetingRepo{

	final private String NAME_SPACE="whattodo.dao.MeetingMapper.";
	
	@Autowired
	SqlSessionTemplate template;
	
	public int insertMeeting(Meeting meeting) {
		String statement = NAME_SPACE+"insertMeeting";
		return template.insert(statement, meeting);
	}

	public int updateMeeting(Meeting meeting) {
		String statement = NAME_SPACE+"updateMeeting";
		return template.update(statement, meeting);
	}

	public int deleteMeeting(int meetingNo) {
		String statement = NAME_SPACE+"deleteMeeting";
		return template.delete(statement, meetingNo);
	}

	public List<Meeting> selectAllMeetings() {
		String statement = NAME_SPACE+"selectAllMeeting";
		return template.selectList(statement);
	}

	public List<Meeting> selectFollowMeetings(String id) {
		String statement = NAME_SPACE+"selectFollowMeetings";
		return template.selectList(statement, id);
	}

	public int updateFollowMeeting(int meetingNo) {
		String statement = NAME_SPACE+"updateFollowMeeting";
		return template.update(statement, meetingNo);
	}

	public int insertMeetingFollow(int meetingNo, String id) {
		String statement = NAME_SPACE+"insertMeetingFollow";
		Map<String, Object> map= new HashMap<String, Object>();
		map.put("meetingNo", meetingNo);
		map.put("id", id);
		return template.insert(statement, map);
	}

	public int deleteFollowMeetingByMeetingNo(int meetingNo) {
		String statement = NAME_SPACE+"deleteFollowMeetingByMeetingNo";
		return template.delete(statement, meetingNo);
	}

	public int deleteFollowMeetingById(String id) {
		String statement = NAME_SPACE+"deleteFollowMeetingById";
		return template.delete(statement, id);
	}

}
