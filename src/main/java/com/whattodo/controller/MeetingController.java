package com.whattodo.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whattodo.dto.Board;
import com.whattodo.dto.Meeting;
import com.whattodo.service.MeetingService;

@Controller
public class MeetingController {
	private static Logger logger = LoggerFactory.getLogger(MeetingController.class);
	
	@Autowired
	MeetingService ms;
	
	@RequestMapping(value="/addMeeting", method=RequestMethod.GET,
			produces="application/text;charset=UTF-8")
	public @ResponseBody String MeetingMake(Model model, HttpServletRequest request){
		String meetingTitle=request.getParameter("meetingTitle");
		String meetingContent=request.getParameter("meetingContent");
		String place=request.getParameter("place");
		String id=request.getParameter("id");
		String keyword=request.getParameter("meetingKeyword");
		String meetingImg=request.getParameter("meetingImg");
		
		Meeting meeting  = new Meeting(meetingTitle,meetingContent,keyword,meetingImg,place,id);
		int result = ms.insertMeeting(meeting);
		if(result==1){
			return "저장";
		}else{
			return "실패";
		}
	}
}
