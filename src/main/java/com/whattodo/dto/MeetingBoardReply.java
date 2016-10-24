package com.whattodo.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MeetingBoardReply {
	private Integer meetingBoardReplyNo;
	private String meetingBoardReplyContent;
	private Date meetingBoardReplyDate;
	
	private Integer meetingBoardNo;
	private String id;
	
	private int recordNum;
	private int page;
	
	
	
	public MeetingBoardReply(Integer meetingBoardReplyNo, String meetingBoardReplyContent, Date meetingBoardReplyDate,
			Integer meetingBoardNo, String id) {
		super();
		this.meetingBoardReplyNo = meetingBoardReplyNo;
		this.meetingBoardReplyContent = meetingBoardReplyContent;
		this.meetingBoardReplyDate = meetingBoardReplyDate;
		this.meetingBoardNo = meetingBoardNo;
		this.id = id;
	}



	public MeetingBoardReply(String meetingBoardReplyContent, Integer meetingBoardNo, String id) {
		super();
		this.meetingBoardReplyContent = meetingBoardReplyContent;
		this.meetingBoardNo = meetingBoardNo;
		this.id = id;
	}
	
	
}
