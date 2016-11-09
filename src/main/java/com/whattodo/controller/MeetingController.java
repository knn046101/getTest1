package com.whattodo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.whattodo.dto.Meeting;
import com.whattodo.dto.MeetingBoard;
import com.whattodo.dto.MeetingBoardReply;
import com.whattodo.dto.MeetingFollow;
import com.whattodo.service.MeetingService;

@Controller
public class MeetingController {
	private static Logger logger = LoggerFactory.getLogger(MeetingController.class);
	
	@Autowired
	MeetingService ms;
	
	@RequestMapping(value="/addMeeting", method=RequestMethod.POST,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String MeetingMake(Model model, HttpServletRequest request){
		String meetingTitle=request.getParameter("meetingTitle");
		String meetingContent=request.getParameter("meetingContent");
		String place=request.getParameter("place");
		String id=request.getParameter("id");
		String keyword=request.getParameter("meetingKeyword");
		String meetingImg=request.getParameter("meetingImg");
		if(meetingImg==null){
			meetingImg="";
		}
		Meeting meeting  = new Meeting(meetingTitle,meetingContent,keyword,meetingImg,place,id);
		int result = ms.insertMeeting(meeting);
		if(result==1){
			return "저장";
		}else{
			return "실패";
		}
	}
	
	@RequestMapping(value="/addMeetingBoard", method=RequestMethod.POST,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String addMeetingBoard(Model model, HttpServletRequest request){
		String meetingBoardTitle=request.getParameter("meetingBoardTitle");
		String meetingBoardCotent=request.getParameter("meetingBoardCotent");
		String location=request.getParameter("location");
		int meetingNo=Integer.parseInt(request.getParameter("meetingNo"));
		String id=request.getParameter("id");
		MeetingBoard meetingBoard  = new MeetingBoard(meetingBoardTitle,meetingBoardCotent,location,meetingNo,id);
		int result = ms.insertMeetingBoard(meetingBoard);
		if(result==1){
			return "저장";
		}else{
			return "실패";
		}
	}
	
	@RequestMapping(value="/updateMeeting", method=RequestMethod.POST,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String updateMeeting(Model model, HttpServletRequest request){
		logger.trace("진입");
		int meetingNo=Integer.parseInt(request.getParameter("meetingNo"));
		String meetingTitle=request.getParameter("meetingTitle");
		String meetingContent=request.getParameter("meetingContent");
		String place=request.getParameter("place");
		String id=request.getParameter("id");
		String keyword=request.getParameter("meetingKeyword");
		String meetingImg=request.getParameter("meetingImg");
		logger.trace("받기");
		Meeting meeting  = new Meeting(meetingNo, meetingTitle,meetingContent,keyword,meetingImg,place,id);
		logger.trace("미팅 만들기");
		int result = ms.updateMeeting(meeting);
		logger.trace("업데이트");
		if(result==1){
			return "저장";
		}else{
			return "실패";
		}
	}
	
	@RequestMapping(value="/meetingUpdate", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public String meetingUpdate(Model model, HttpServletRequest request){
		int meetingNo=Integer.parseInt(request.getParameter("meetingNo"));
		Meeting meeting = ms.selectMeetingByMeetingNo(meetingNo);
		model.addAttribute("meeting", meeting);
		return "meeting/meeting_update";
	}
	
	@RequestMapping(value="/meetingDelete", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String meetingDelete(Model model, HttpServletRequest request){
		int meetingNo=Integer.parseInt(request.getParameter("meetingNo"));
		ms.deleteMeeting(meetingNo);
		return "성공";
	}
	
	@RequestMapping(value="/getMeetings", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String getMeetings(Model model, HttpServletRequest request){
		List<Meeting> meetings=ms.selectAllMeetings();
		List<Meeting> afterMeetings=new ArrayList<Meeting>();
		int page = Integer.parseInt(request.getParameter("pageno"));
		
	    int end=(page*9<meetings.size())? page*9 : meetings.size();
        for(int i=9*(page-1); i<end; i++){
        	meetings.get((page-1)*9).setPage(page);
        	String place=meetings.get(i).getPlace();
        	String[] tmpPlace=place.split(",");
        	if(!tmpPlace[1].equals("null")){
        		place=tmpPlace[0]+" "+tmpPlace[1];
        		meetings.get(i).setPlace(place);
        	}else{
        		place=tmpPlace[0];
        		meetings.get(i).setPlace(place);
        	}
        	afterMeetings.add(meetings.get(i));
        }
        afterMeetings.get(0).setRecordNum(meetings.size());
	        
		Gson gson = new Gson();
		String boardGoodBestStr = gson.toJson(afterMeetings);
		return boardGoodBestStr; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/getMeetingsFollow", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String getMeetingsFollow(Model model, HttpServletRequest request){
		String id = request.getParameter("id");
		List<Meeting> meetings=ms.selectFollowMeetings(id);
		List<Meeting> afterMeetings=new ArrayList<Meeting>();
		int page = Integer.parseInt(request.getParameter("pageno"));
		
	    int end=(page*9<meetings.size())? page*9 : meetings.size();

        for(int i=9*(page-1); i<end; i++){
        	meetings.get((page-1)*9).setPage(page);
        	String place=meetings.get(i).getPlace();
        	String[] tmpPlace=place.split(",");
        	if(!tmpPlace[1].equals("null")){
        		place=tmpPlace[0]+" "+tmpPlace[1];
        		meetings.get(i).setPlace(place);
        	} 	else{
        		place=tmpPlace[0];
        		meetings.get(i).setPlace(place);
        	}
        	afterMeetings.add(meetings.get(i));
        }
        afterMeetings.get(0).setRecordNum(meetings.size());
	        
		Gson gson = new Gson();
		String boardGoodBestStr = gson.toJson(afterMeetings);
		return boardGoodBestStr; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/getMyMeetings", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String getMyMeetings(Model model, HttpServletRequest request){
		String id = request.getParameter("id");
		List<Meeting> meetings=ms.selectMyMeeting(id);
		List<Meeting> afterMeetings=new ArrayList<Meeting>();
		int page = Integer.parseInt(request.getParameter("pageno"));
		
	    int end=(page*9<meetings.size())? page*9 : meetings.size();

        for(int i=9*(page-1); i<end; i++){
        	meetings.get((page-1)*9).setPage(page);
        	String place=meetings.get(i).getPlace();
        	String[] tmpPlace=place.split(",");
        	if(!tmpPlace[1].equals("null")){
        		place=tmpPlace[0]+" "+tmpPlace[1];
        		meetings.get(i).setPlace(place);
        	}
        	else{
        		place=tmpPlace[0];
        		meetings.get(i).setPlace(place);
        	}
        	afterMeetings.add(meetings.get(i));
        }
        afterMeetings.get(0).setRecordNum(meetings.size());
	        
		Gson gson = new Gson();
		String boardGoodBestStr = gson.toJson(afterMeetings);
		return boardGoodBestStr; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/getMeetingBoards", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String getMeetingBoards(Model model, HttpServletRequest request){
		int meetingNo=Integer.parseInt(request.getParameter("meetingNo"));
		int page=Integer.parseInt(request.getParameter("pageno"));
		
		List<MeetingBoard> meetingBoards=ms.selecctAllMeetingBoard(meetingNo);
		List<MeetingBoard> afterMeetingBoards=new ArrayList<MeetingBoard>();
		
		int end=(page*10<meetingBoards.size())? page*10 : meetingBoards.size();
		
		for(int i=10*(page-1); i<end; i++){
			meetingBoards.get((page-1)*10).setPage(page);
        	String place=meetingBoards.get(i).getPlace();
        	String[] tmpPlace=place.split(",");
        	if(!tmpPlace[1].equals("null")){
        		place=tmpPlace[0]+" "+tmpPlace[1];
        		meetingBoards.get(i).setPlace(place);
        	}else{
        		place=tmpPlace[0];
        		meetingBoards.get(i).setPlace(place);
        	}
        	afterMeetingBoards.add(meetingBoards.get(i));
        }
		afterMeetingBoards.get(0).setRecordNum(meetingBoards.size());
        
		Gson gson = new Gson();
		String meetingBoardsStr = gson.toJson(meetingBoards);
		return meetingBoardsStr; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/retrieveMeeting", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public String retrieveMeeting(Model model, HttpServletRequest request){
		int meetingNo = Integer.parseInt(request.getParameter("meetingNo"));
		Meeting meeting  = ms.selectMeetingByMeetingNo(meetingNo);
		String place=meeting.getPlace();
    	String[] tmpPlace=place.split(",");
    	if(!tmpPlace[1].equals("null")){
    		place=tmpPlace[0]+" "+tmpPlace[1];
    		meeting.setPlace(place);
    	}else{
    		place=tmpPlace[0];
    		meeting.setPlace(place);
    	}
		model.addAttribute("meeting", meeting);
		return "meeting/meeting_info";
	}
	
	@RequestMapping(value="/retrieveMeetingBoard", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public String retrieveMeetingBoard(Model model, HttpServletRequest request){
		int meetingBoardNo = Integer.parseInt(request.getParameter("meetingBoardNo"));
		MeetingBoard meetingBoard  = ms.selectMeetingBoardByBoardNo(meetingBoardNo);
		String place=meetingBoard.getPlace();
    	String[] tmpPlace=place.split(",");
    	
    	if(!tmpPlace[1].equals("null")){
    		place=tmpPlace[0]+" "+tmpPlace[1];
    		meetingBoard.setPlace(place);
    	}else{
    		place=tmpPlace[0];
    		meetingBoard.setPlace(place);
    	}
		model.addAttribute("meetingBoard", meetingBoard);
		return "meeting/meeting_board_info";
	}
	
	@RequestMapping(value="/meetingBoardReply", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String meetingBoardReply(Model model, HttpServletRequest request){
		int page = Integer.parseInt(request.getParameter("pageno"));
		int meetingBoardNo = Integer.parseInt(request.getParameter("meetingBoardNo"));
		List<MeetingBoardReply> meetingBoardReply=ms.selectAllMeetingBoardReply(meetingBoardNo);
		List<MeetingBoardReply> afterMeetingBoardReply=new ArrayList<MeetingBoardReply>();
		
		int end=(page*10<meetingBoardReply.size())? page*10 : meetingBoardReply.size();

		for(int i=(page-1)*10; i<end; i++){
			meetingBoardReply.get((page-1)*10).setPage(page);
			afterMeetingBoardReply.add(meetingBoardReply.get(i));
		}
		afterMeetingBoardReply.get(0).setRecordNum(meetingBoardReply.size());
		Gson gson = new Gson();
		String boardReplyStr = gson.toJson(afterMeetingBoardReply);
		return boardReplyStr; // 사용할 뷰의 이름 리턴 
	}
	
	@RequestMapping(value="/addMeetingBoardReply", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String addMeetingBoardReply(Model model, HttpServletRequest request){
		int page = Integer.parseInt(request.getParameter("pageno"));
		String id = request.getParameter("id");
		int meetingBoardNo=Integer.parseInt(request.getParameter("meetingBoardNo"));
		
		String comments=request.getParameter("comments");
		
		MeetingBoardReply meetingBoardReply = new MeetingBoardReply(comments, meetingBoardNo, id);
		ms.insertMeetingBoardReply(meetingBoardReply);
		MeetingBoard meetingBoard = ms.selectMeetingBoardByBoardNo(meetingBoardNo);
		List <MeetingBoardReply> meetingBoardReply2 = ms.selectAllMeetingBoardReply(meetingBoardNo);
		List <MeetingBoardReply> afterMeetingBoardReply=new ArrayList<MeetingBoardReply>();
		
		model.addAttribute("meetingBoard", meetingBoard);
		
		int end=(page*10<meetingBoardReply2.size())? page*10 : meetingBoardReply2.size();

		for(int i=(page-1)*10; i<end; i++){
			meetingBoardReply2.get((page-1)*10).setPage(page);
			afterMeetingBoardReply.add(meetingBoardReply2.get(i));
		}
		afterMeetingBoardReply.get(0).setRecordNum(meetingBoardReply2.size());
		
		Gson gson = new Gson();
		String boardReplyStr = gson.toJson(afterMeetingBoardReply);
		return boardReplyStr;
	}
	
	@RequestMapping(value="/getUpdateMeetingBoard", method=RequestMethod.GET)
	public String getUpdateMeetingBoard(Model model, HttpServletRequest request){
		int meetingBoardNo = Integer.parseInt(request.getParameter("meetingBoardNo"));
		MeetingBoard meetingBoard=ms.selectMeetingBoardByBoardNo(meetingBoardNo);
		model.addAttribute("meetingBoard",meetingBoard);
		return "meeting/meeting_board_update";
	}
	
	@RequestMapping(value="/updateMeetingBoard", method=RequestMethod.POST,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String updateMeetingBoard(Model model, HttpServletRequest request){
		int meetingBoardNo=Integer.parseInt(request.getParameter("meetingBoardNo"));
		String meetingBoardTitle=request.getParameter("meetingBoardTitle");
		String meetingBoardContent=request.getParameter("meetingBoardContent");
		String place=request.getParameter("location");

		MeetingBoard meetingBoard = new MeetingBoard(meetingBoardNo, meetingBoardTitle, meetingBoardContent, place);
		int result=ms.updateMeetingBoard(meetingBoard);
		if(result==1){
			return "저장";
		}else{
			return "실패";
		}
	}
	
	@RequestMapping(value="/meetingBoardDelete", method=RequestMethod.GET)
	public String meetingBoardDelete(Model model, HttpServletRequest request){
		int meetingBoardNo=Integer.parseInt(request.getParameter("meetingBoardNo"));
		int meetingNo=Integer.parseInt(request.getParameter("meetingNo"));
		ms.deleteMeetingBoard(meetingBoardNo);
		Meeting meeting = ms.selectMeetingByMeetingNo(meetingNo);
		model.addAttribute("meeting", meeting);
		return "meeting/meeting_info";
	}
	
	@RequestMapping(value="/addFollow", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String addFollow(Model model, HttpServletRequest request){
		String id = request.getParameter("id");
		int meetingNo=Integer.parseInt(request.getParameter("meetingNo"));
		int result=0;
		MeetingFollow mf=ms.selectFollowMeeting(meetingNo, id);
		if(mf==null){
			result=ms.insertMeetingFollow(meetingNo, id);
			ms.updateFollowMeeting(meetingNo);
		}
		if(result==1){
			return "성공";
		}else{
			return "실패";
		}
	}
	
	@RequestMapping(value="/getMeetingsBySearch", method=RequestMethod.GET,
	         produces="application/text;charset=UTF-8")
	   public @ResponseBody String getMeetingsBySearch(Model model, HttpServletRequest request){
	      int page = Integer.parseInt(request.getParameter("pageno"));
	      String place =request.getParameter("location");
	      String meetingKeyword = request.getParameter("keyword");
	      List<Meeting> meetings = null;
	      List<Meeting> aftermeetings=new ArrayList<Meeting>();
	      place=place.replace(",null", "");
	      if(!place.equals("지역") && meetingKeyword.equals("")){
	    	  meetings=ms.selectSearchMeetingByPlace(place);
	      }else if(place.equals("지역") && !meetingKeyword.equals("")){
	    	  meetings=ms.selectSearchMeetingByMeetingKeyword(meetingKeyword);
	      }else if(!place.equals("지역") && !meetingKeyword.equals("")){
	    	  meetings=ms.selectSearchMeetingByplaceAndmeetingKeyword(place, meetingKeyword);
	      }else{
	    	  meetings=ms.selectAllMeetings();
	      }
	      
	      int end=(page*9<meetings.size())? page*9 : meetings.size();
	      for(int i=9*(page-1); i<end; i++){
	        	meetings.get((page-1)*9).setPage(page);
	        	place=meetings.get(i).getPlace();
	        	String[] tmpPlace=place.split(",");
	        	if(!tmpPlace[1].equals("null")){
	        		place=tmpPlace[0]+" "+tmpPlace[1];
	        		meetings.get(i).setPlace(place);
	        	}else{
	        		place=tmpPlace[0];
	        		meetings.get(i).setPlace(place);
	        	}
	        	aftermeetings.add(meetings.get(i));
	        }
	      aftermeetings.get(0).setRecordNum(meetings.size());
	      
	      Gson gson = new Gson();
	      String boardStr = gson.toJson(aftermeetings);
	      return boardStr; // 사용할 뷰의 이름 리턴 
	   }
	
	@RequestMapping(value="/followCheck", method=RequestMethod.GET,
	         produces="application/text;charset=UTF-8")
	public @ResponseBody String followCheck(Model model, HttpServletRequest request){
		String id=request.getParameter("id");
		int meetingNo= Integer.parseInt(request.getParameter("meetingNo"));
		String message="";
		MeetingFollow mf=ms.selectFollowMeeting(meetingNo, id);
		if(mf!=null){
			message="팔로우";
		}else{
			message="언팔로우";
		}
		return message;
	}
	
	@RequestMapping(value="/deleteFollow", method=RequestMethod.GET,
	         produces="application/text;charset=UTF-8")
	public @ResponseBody String deleteFollow(Model model, HttpServletRequest request){
		String id=request.getParameter("id");
		int meetingNo= Integer.parseInt(request.getParameter("meetingNo"));
		String message="";
		int result=ms.deleteFollowMeeting(meetingNo, id);
		message=result+"";
		return message;
	}
}
