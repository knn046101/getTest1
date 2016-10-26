package com.whattodo.repo;

import java.util.List;

import com.whattodo.dto.MeetingBoardReply;

public interface MeetingBoardReplyRepo {
	public int insertMeetingBoardReply(MeetingBoardReply meetingBoardReply);
	public int updateMeetingBoardReply(MeetingBoardReply meetingBoardReply);
	public int deleteMeetingBoardReply(int meetingBoardReplyNo);
	public int deleteMeetingBoardReplyByMeetingBoardNo(int meetingBoardNo);
	public List <MeetingBoardReply> selectAllMeetingBoardReply(int meetingBoardNo);
}
