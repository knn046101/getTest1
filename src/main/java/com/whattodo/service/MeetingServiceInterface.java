package com.whattodo.service;

import java.util.List;

import com.whattodo.dto.Meeting;
import com.whattodo.dto.MeetingBoard;
import com.whattodo.dto.MeetingBoardReply;

public interface MeetingServiceInterface {
	public void insertMeeting(Meeting meeting);
	public void updateMeeting(Meeting meeting);
	public void deleteMeeting(int meetingNo);
	public List<Meeting> selectAllMeetings();
	public List<Meeting> selectFollowMeetings(String id); 
	/*public List<Meeting> selectKeywordMeetings(String keyword);*/
	public void updateFollowMeeting(int meetingNo);
	// 팔로우 추가시 팔로잉 수 +1
	public void insertMeetingFollow(int meetingNo, String id);
	public void deleteFollowMeetingByMeetingNo(int meetingNo);
	public void deleteFollowMeetingById(String id);
	
	public void insertMeetingBoard(MeetingBoard meetingBoard);
	public void updateMeetingBoard(MeetingBoard meetingBoard);
	public void deleteMeetingBoard(int meetingBoardNo);
	public List<MeetingBoard> selecctAllMeetingBoard(int meetingNo); 
	
	public void insertMeetingBoardReply(MeetingBoardReply meetingBoardReply);
	public void updateMeetingBoardReply(MeetingBoardReply meetingBoardReply);
	public void deleteMeetingBoardReply(int meetingBoardReplyNo);
	public List <MeetingBoardReply> selectAllMeetingBoardReply(int meetingBoardNo);
}
