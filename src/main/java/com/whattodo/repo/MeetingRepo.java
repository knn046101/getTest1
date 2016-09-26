package com.whattodo.repo;

import java.util.List;

import com.whattodo.dto.Meeting;

public interface MeetingRepo {
	public int insertMeeting(Meeting meeting);
	public int updateMeeting(Meeting meeting);
	public int deleteMeeting(int meetingNo);
	public List<Meeting> selectAllMeetings();
	public List<Meeting> selectFollowMeetings(String id); 
	/*public List<Meeting> selectKeywordMeetings(String keyword);*/
	public int updateFollowMeeting(int meetingNo);
	public int insertMeetingFollow(int meetingNo, String id);
	public int deleteFollowMeetingByMeetingNo(int meetingNo);
	public int deleteFollowMeetingById(String id);
}
