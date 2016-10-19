package com.whattodo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whattodo.dto.Meeting;
import com.whattodo.dto.MeetingBoard;
import com.whattodo.dto.MeetingBoardReply;
import com.whattodo.repo.MeetingBoardReplyRepo;
import com.whattodo.repo.MeetingBoardRepo;
import com.whattodo.repo.MeetingRepo;

@Service
public class MeetingService implements MeetingServiceInterface{

	@Autowired
	MeetingRepo mrepo;
	@Autowired
	MeetingBoardRepo mbrepo;
	@Autowired
	MeetingBoardReplyRepo mbrrepo;
	
	public int insertMeeting(Meeting meeting) {
		return mrepo.insertMeeting(meeting);
	}

	public void updateMeeting(Meeting meeting) {
		mrepo.updateMeeting(meeting);
	}

	public void deleteMeeting(int meetingNo) {
		List<MeetingBoard> meetingBoards=mbrepo.selecctAllMeetingBoard(meetingNo);
		for(int i=0; i<meetingBoards.size(); i++){
			mbrrepo.deleteMeetingBoardReply(meetingBoards.get(i).getMeetingBoardNo());
		}
		mbrepo.deleteMeetingBoardByMeetingNo(meetingNo);
		mrepo.deleteMeeting(meetingNo);
	}

	public List<Meeting> selectAllMeetings() {
		return mrepo.selectAllMeetings();
	}

	public List<Meeting> selectFollowMeetings(String id) {
		return mrepo.selectFollowMeetings(id);
	}

	public void updateFollowMeeting(int meetingNo) {
		mrepo.updateFollowMeeting(meetingNo);
	}

	public void insertMeetingFollow(int meetingNo, String id) {
		mrepo.insertMeetingFollow(meetingNo, id);
	}

	public void deleteFollowMeetingByMeetingNo(int meetingNo) {
		mrepo.deleteFollowMeetingByMeetingNo(meetingNo);
	}

	public void deleteFollowMeetingById(String id) {
		mrepo.deleteFollowMeetingById(id);
	}

	public void insertMeetingBoard(MeetingBoard meetingBoard) {
		mbrepo.insertMeetingBoard(meetingBoard);
	}

	public void updateMeetingBoard(MeetingBoard meetingBoard) {
		mbrepo.updateMeetingBoard(meetingBoard);
	}

	public void deleteMeetingBoard(int meetingBoardNo) {
		mbrepo.deleteMeetingBoard(meetingBoardNo);
	}

	public List<MeetingBoard> selecctAllMeetingBoard(int meetingNo) {
		return mbrepo.selecctAllMeetingBoard(meetingNo);
	}
////////////////////////////// meeting_boards_replys /////////////////////////////////////
	public void insertMeetingBoardReply(MeetingBoardReply meetingBoardReply) {
		mbrrepo.insertMeetingBoardReply(meetingBoardReply);
	}

	public void updateMeetingBoardReply(MeetingBoardReply meetingBoardReply) {
		mbrrepo.insertMeetingBoardReply(meetingBoardReply);
	}

	public void deleteMeetingBoardReply(int meetingBoardReplyNo) {
		mbrrepo.deleteMeetingBoardReply(meetingBoardReplyNo);
	}

	public List<MeetingBoardReply> selectAllMeetingBoardReply(int meetingBoardNo) {
		return mbrrepo.selectAllMeetingBoardReply(meetingBoardNo);
	}

}
