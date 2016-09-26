package com.whattodo.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Meeting {
	private Integer meetingNo;
	private String meetingTitle;
	private String meetingContent;
	private String meetingKeyword;
	private String meetingImg;
	private Integer meetingFollow;
	private String id;
}
