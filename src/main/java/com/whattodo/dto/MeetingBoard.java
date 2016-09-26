package com.whattodo.dto;

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
	private String id;
}
