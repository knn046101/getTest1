package com.whattodo.repo;

import java.util.List;

import com.whattodo.dto.Meeting;
import com.whattodo.dto.MeetingFollow;

public interface MeetingRepo {
	public int insertMeeting(Meeting meeting);
	public int updateMeeting(Meeting meeting);
	public int deleteMeeting(int meetingNo);
	public List<Meeting> selectAllMeetings();
	public Meeting selectMeetingByMeetingNo(int meetingNo);
	public List<Meeting> selectSearchMeetingByPlace(String place);
	public List<Meeting> selectSearchMeetingByMeetingKeyword(String meetingKeyword);
	public List<Meeting> selectSearchMeetingByplaceAndmeetingKeyword(String place, String meetingKeyword);
	public List<Meeting> selectFollowMeetings(String id); 
	/*public List<Meeting> selectKeywordMeetings(String keyword);*/
	public int updateFollowMeeting(int meetingNo);
	public int insertMeetingFollow(int meetingNo, String id);
	public int deleteFollowMeetingByMeetingNo(int meetingNo);
	public int deleteFollowMeetingById(String id);
	public MeetingFollow selectFollowMeeting(int meetingNo, String id);
	public int deleteFollowMeeting(int meetingNo, String id);
}
