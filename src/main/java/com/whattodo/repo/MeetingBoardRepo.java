package com.whattodo.repo;

import java.util.List;

import com.whattodo.dto.Meeting;
import com.whattodo.dto.MeetingBoard;

public interface MeetingBoardRepo {
	public int insertMeetingBoard(MeetingBoard meetingBoard);
	public int updateMeetingBoard(MeetingBoard meetingBoard);
	public int deleteMeetingBoard(int meetingBoardNo);
	public int deleteMeetingBoardByMeetingNo(int meetingNo);
	public MeetingBoard selectMeetingBoardByBoardNo(int meetingBoardNo);
	public List<MeetingBoard> selecctAllMeetingBoard(int meetingNo); 
	
}
