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
}
