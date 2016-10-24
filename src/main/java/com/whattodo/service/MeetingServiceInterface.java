package com.whattodo.service;

import java.util.List;

import com.whattodo.dto.Meeting;
import com.whattodo.dto.MeetingBoard;
import com.whattodo.dto.MeetingBoardReply;
import com.whattodo.dto.MeetingFollow;

public interface MeetingServiceInterface {
	public int insertMeeting(Meeting meeting);
	public int updateMeeting(Meeting meeting);
	public void deleteMeeting(int meetingNo);
	public Meeting selectMeetingByMeetingNo(int meetingNo);
	public List<Meeting> selectAllMeetings();
	public List<Meeting> selectFollowMeetings(String id); 
	public List<Meeting> selectSearchMeetingByPlace(String place);
	public List<Meeting> selectSearchMeetingByMeetingKeyword(String meetingKeyword);
	public List<Meeting> selectSearchMeetingByplaceAndmeetingKeyword(String place, String meetingKeyword);
	public void updateFollowMeeting(int meetingNo);
	// 팔로우 추가시 팔로잉 수 +1
	public int insertMeetingFollow(int meetingNo, String id);
	public void deleteFollowMeetingByMeetingNo(int meetingNo);
	public void deleteFollowMeetingById(String id);
	public MeetingFollow selectFollowMeeting(int meetingNo,String id);
	
	public int insertMeetingBoard(MeetingBoard meetingBoard);
	public int updateMeetingBoard(MeetingBoard meetingBoard);
	public void deleteMeetingBoard(int meetingBoardNo);
	public MeetingBoard selectMeetingBoardByBoardNo(int meetingBoardNo);
	public List<MeetingBoard> selecctAllMeetingBoard(int meetingNo); 
	
	public void insertMeetingBoardReply(MeetingBoardReply meetingBoardReply);
	public void updateMeetingBoardReply(MeetingBoardReply meetingBoardReply);
	public void deleteMeetingBoardReply(int meetingBoardReplyNo);
	public List <MeetingBoardReply> selectAllMeetingBoardReply(int meetingBoardNo);
}
