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
	private String place;
	private Integer meetingFollow;
	private String id;
	
	public Meeting(String meetingTitle,String meetingContent,String meetingKeyword,String meetingImg,String place,String id){
		super();
		this.meetingTitle=meetingTitle;
		this.meetingContent=meetingContent;
		this.meetingKeyword=meetingKeyword;
		this.meetingImg=meetingImg;
		this.place=place;
		this.id=id;
	}
}


