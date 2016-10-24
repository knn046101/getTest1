package com.whattodo.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MeetingBoard {
	private Integer meetingBoardNo;
	private String meetingBoardTitle;
	private String meetingBoardContent;
	private String place;
	private Integer meetingNo;
	private Date meetingBoardDate;
	private String id;
	private int recordNum;
	private int page;
	
	public MeetingBoard(String meetingBoardTitle, String meetingBoardContent, String place, Integer meetingNo,
			String id) {
		super();
		this.meetingBoardTitle = meetingBoardTitle;
		this.meetingBoardContent = meetingBoardContent;
		this.place = place;
		this.meetingNo = meetingNo;
		this.id = id;
	}

	public MeetingBoard(Integer meetingBoardNo, String meetingBoardTitle, String meetingBoardContent, String place,
			Integer meetingNo, String id) {
		super();
		this.meetingBoardNo = meetingBoardNo;
		this.meetingBoardTitle = meetingBoardTitle;
		this.meetingBoardContent = meetingBoardContent;
		this.place = place;
		this.meetingNo = meetingNo;
		this.id = id;
	}

	public MeetingBoard(Integer meetingBoardNo,String meetingBoardTitle, String meetingBoardContent, String place) {
		super();
		this.meetingBoardNo=meetingBoardNo;
		this.meetingBoardTitle = meetingBoardTitle;
		this.meetingBoardContent = meetingBoardContent;
		this.place=place;
	}
	
	
}
