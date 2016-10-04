package com.whattodo.repo;

import java.util.List;

import com.whattodo.dto.MeetingBoard;

public interface MeetingBoardRepo {
	public int insertMeetingBoard(MeetingBoard meetingBoard);
	public int updateMeetingBoard(MeetingBoard meetingBoard);
	public int deleteMeetingBoard(int meetingBoardNo);
	public List<MeetingBoard> selecctAllMeetingBoard(); 
}
