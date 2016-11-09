package com.whattodo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.whattodo.dto.Meeting;
import com.whattodo.dto.MeetingBoard;
import com.whattodo.dto.MeetingBoardReply;
import com.whattodo.dto.MeetingFollow;
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

	public int updateMeeting(Meeting meeting) {
		return mrepo.updateMeeting(meeting);
	}

	public void deleteMeeting(int meetingNo) {
		List<MeetingBoard> meetingBoards=mbrepo.selecctAllMeetingBoard(meetingNo);
		for(int i=0; i<meetingBoards.size(); i++){
			mbrrepo.deleteMeetingBoardReplyByMeetingBoardNo(meetingBoards.get(i).getMeetingBoardNo());
		}
		if(meetingBoards!=null){
			mbrepo.deleteMeetingBoardByMeetingNo(meetingNo);
		}
		mrepo.deleteMeeting(meetingNo);
	}
	
	public Meeting selectMeetingByMeetingNo(int meetingNo){
		return mrepo.selectMeetingByMeetingNo(meetingNo);
	}

	public List<Meeting> selectAllMeetings() {
		return mrepo.selectAllMeetings();
	}

	public List<Meeting> selectMyMeeting(String id){
		return mrepo.selectMyMeeting(id);
	}
	
	public List<Meeting> selectFollowMeetings(String id) {
		return mrepo.selectFollowMeetings(id);
	}

	public List<Meeting> selectSearchMeetingByPlace(String place){
		return mrepo.selectSearchMeetingByPlace(place);
	}
	
	public List<Meeting> selectSearchMeetingByMeetingKeyword(String meetingKeyword){
		return mrepo.selectSearchMeetingByMeetingKeyword(meetingKeyword);
	}
	
	public List<Meeting> selectSearchMeetingByplaceAndmeetingKeyword(String place, String meetingKeyword){
		return mrepo.selectSearchMeetingByplaceAndmeetingKeyword(place, meetingKeyword);
	}
	
	public void updateFollowMeeting(int meetingNo) {
		mrepo.updateFollowMeeting(meetingNo);
	}

	public void updateFollowMeetingMinus(int meetingNo){
		mrepo.updateFollowMeetingMinus(meetingNo);
	}
	
	public int insertMeetingFollow(int meetingNo, String id) {
		return mrepo.insertMeetingFollow(meetingNo, id);
	}

	public void deleteFollowMeetingByMeetingNo(int meetingNo) {
		mrepo.deleteFollowMeetingByMeetingNo(meetingNo);
	}

	public void deleteFollowMeetingById(String id) {
		mrepo.deleteFollowMeetingById(id);
	}
	
	public MeetingFollow selectFollowMeeting(int meetingNo,String id){
		return mrepo.selectFollowMeeting(meetingNo, id);
	}

	public int deleteFollowMeeting(int meetingNo, String id){
		return mrepo.deleteFollowMeeting(meetingNo, id);
	}
	
	public int insertMeetingBoard(MeetingBoard meetingBoard) {
		return mbrepo.insertMeetingBoard(meetingBoard);
	}

	public int updateMeetingBoard(MeetingBoard meetingBoard) {
		return mbrepo.updateMeetingBoard(meetingBoard);
	}

	public void deleteMeetingBoard(int meetingBoardNo) {
		List<MeetingBoardReply> meetingBoardReplys=mbrrepo.selectAllMeetingBoardReply(meetingBoardNo);
		for(int i=0; i<meetingBoardReplys.size(); i++){
			mbrrepo.deleteMeetingBoardReply(meetingBoardReplys.get(i).getMeetingBoardReplyNo());
		}
		mbrepo.deleteMeetingBoard(meetingBoardNo);
	}

	public MeetingBoard selectMeetingBoardByBoardNo(int meetingBoardNo){
		return mbrepo.selectMeetingBoardByBoardNo(meetingBoardNo);
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

	public int deleteMeetingBoardReply(int meetingBoardReplyNo) {
		return mbrrepo.deleteMeetingBoardReply(meetingBoardReplyNo);
	}

	public List<MeetingBoardReply> selectAllMeetingBoardReply(int meetingBoardNo) {
		return mbrrepo.selectAllMeetingBoardReply(meetingBoardNo);
	}

}
